package springapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springapp.domain.Appointment;

/**
 * This is the client dao that is responsible for managing the clients info in the databsae.
 * The dao acts as the 'gatekeeper' between the rest of the code and the database
 */
@Repository
@Scope("singleton")
public class AppointmentDao {
	private Logger logger = LoggerFactory.getLogger(AppointmentDao.class);

	RowMapper<Appointment> simpleMapper = new RowMapper<Appointment>() {

		@Override
		public Appointment mapRow(ResultSet rs, int rowNum) throws SQLException {
			return new Appointment(rs.getInt("id"), rs.getInt("client_id"), rs.getInt("pet_id"), rs.getString("appt_time"), rs.getString("appt_date"), rs.getString("appt_type"));
		}
	};
	
    @Autowired
    JdbcTemplate jdbcTemplate;
    	
	public List<Appointment> list(){
		List<Appointment> queryResult = jdbcTemplate.query("SELECT id, client_id, pet_id, appt_time, appt_date, appt_type FROM appointments",
				simpleMapper);
		
		return queryResult;
	}
	
}
