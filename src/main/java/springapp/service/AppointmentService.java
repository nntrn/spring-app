package springapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springapp.command.PetCommand;
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
	ClientDao clientDao;

	@Autowired 
	PetDao petDao;
	
	public List<Appointment> getAppointments(){
		return appointmentDao.list();
	}
	
	public List<Client> getClients(int clientId) {
		
		return clientDao.list();
	}

}
