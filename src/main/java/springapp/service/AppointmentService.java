package springapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springapp.command.AppointmentCommand;
import springapp.dao.AppointmentDao;
import springapp.dao.ClientDao;
import springapp.dao.PetDao;
import springapp.domain.Appointment;
import springapp.domain.Client;
import springapp.domain.Pet;


@Service
public class AppointmentService {

	@Autowired 
	AppointmentDao appointmentDao;

	@Autowired 
	PetDao petDao;
	
	public List<Appointment> getAppointments(){
		return appointmentDao.list();
	}
	
	public List<Appointment> getAppointments(String type, Integer id){
		return appointmentDao.list(type, id);
	}

	public void deleteAppointment(Integer id) {
		appointmentDao.delete(id);
	}

	public Appointment getAppointment(String id) {
		return appointmentDao.get(Integer.parseInt(id));
	}
	
	public Appointment getAppointment(Integer id) {
		return appointmentDao.get(id);
	}

	
	public Appointment saveAppointment(AppointmentCommand command) {
		Appointment newAppt = new Appointment(
				command.getId(), 
				command.getPetId(), 
				command.getApptTime(),
				command.getApptDate(),
				command.getApptReason()
				);
		newAppt.setVisitType(command.getVisitType());
		newAppt.setCloseType(command.getCloseType());
		return appointmentDao.save(newAppt);
	}

}
