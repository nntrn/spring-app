package springapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import springapp.domain.Appointment;
import springapp.domain.Client;
import springapp.domain.Pet;

/**
 * This is the client dao that is responsible for managing the clients info in the databsae.
 * The dao acts as the 'gatekeeper' between the rest of the code and the database
 */
@Repository
@Scope("singleton")
public class AppointmentDao {

	@Autowired 
	PetDao petDao;
	
	RowMapper<Appointment> simpleApptMapper = new RowMapper<Appointment>() {

		@Override
		public Appointment mapRow(ResultSet rs, int rowNum) throws SQLException {
		
			Appointment appointment = new Appointment(rs.getInt("id"), rs.getInt("pet_id"), rs.getInt("time"), rs.getString("date"), rs.getString("reason"));
			Pet pet = petDao.get(rs.getInt("pet_id"));
			//Client client = pet.getClient();

			appointment.setVisitType(rs.getString("visit_type"));
			appointment.setCloseType(rs.getString("close_type"));

			appointment.setPet(pet);
			appointment.setClient(pet.getClient());
			
			return appointment;
		}
	};
	
    @Autowired
    JdbcTemplate jdbcTemplate;
    	
	public List<Appointment> list(){
		List<Appointment> queryResult = jdbcTemplate.query("SELECT * FROM appointments", simpleApptMapper);
		
		return queryResult;
	}

	public List<Appointment> listForClient(int clientId){
		List<Appointment> queryResult = jdbcTemplate.query(
				"SELECT * FROM appointments, pets where pets.id=appointments.pet_id and client_id = ? ORDER BY pet_id, date",
				new Object[] {clientId},
				simpleApptMapper);
		
		return queryResult;
	}
	
	public List<Appointment> list(String type, int id){
		List<Appointment> queryResult = jdbcTemplate.query("SELECT * FROM appointments where pet_id =" +id, simpleApptMapper);
		if(type=="client"){
			queryResult = jdbcTemplate.query("SELECT * FROM appointments, pets where pets.id=appointments.pet_id and client_id =" +id, simpleApptMapper);
		}
		
		return queryResult;

	}

	public Appointment get(int id) {

		List<Appointment> queryResult = jdbcTemplate.query(
				"SELECT * FROM appointments WHERE id = ? LIMIT 1", 
				new Object[] {id},
				simpleApptMapper);
		
		if(queryResult.isEmpty())
			return null;
		
		return queryResult.get(0);
	}
	
	public Appointment save(Appointment appointment) {
		Integer id = appointment.getId();
		
		if(id == null) {
			
			KeyHolder holder = new GeneratedKeyHolder();
			jdbcTemplate.update(new PreparedStatementCreator() {
			
				@Override
				public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
					PreparedStatement statement = con.prepareStatement("INSERT INTO appointments (pet_id, time, date, reason, visit_type, close_type) VALUES (?, ?, ?, ?,?,?)");

					statement.setInt(1, appointment.getPetId());
					statement.setInt(2, appointment.getApptTime());
					statement.setString(3, appointment.getApptDate());
					statement.setString(4, appointment.getApptReason());
					statement.setString(5, appointment.getVisitType());
					statement.setString(6, appointment.getCloseType());
					return statement;
				}
			}, holder);
			
			id = holder.getKey().intValue();
			
		} else {
			jdbcTemplate.update("UPDATE appointments SET pet_id = ? , time = ?, date = ?, reason = ?, visit_type = ?, close_type = ? WHERE id = ?",
					new Object[] {appointment.getPetId(), appointment.getApptTime(),  appointment.getApptDate(),  appointment.getApptReason(), appointment.getVisitType(), appointment.getCloseType(), id});
		}
		
		return get(id);
	}
	
	public void delete(int id) {

				jdbcTemplate.update("UPDATE appointments SET close_type = 'Deleted' WHERE id = ?",
				new Object[] {id});
		
		// jdbcTemplate.update("DELETE FROM appointments WHERE id = ?",
		// 		new Object[] {id});
		
	}
	
}
