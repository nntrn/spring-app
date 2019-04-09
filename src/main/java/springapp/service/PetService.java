package springapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springapp.command.PetCommand;
import springapp.dao.PetDao;
import springapp.domain.Appointment;
import springapp.dao.AppointmentDao;
import springapp.domain.Pet;

@Service
public class PetService {

	@Autowired 
	PetDao petDao;

	@Autowired 
	AppointmentDao appointmentDao;
	
	public List<Pet> getPets(){
		return petDao.list();
	}

	public void deletePet(String id) {
		petDao.delete(Integer.parseInt(id));
	}

	public Pet getPet(String id) {
		return petDao.get(Integer.parseInt(id));
	}
	
	public List<Pet> listForClientPets(String id) {
		return petDao.listForClient(Integer.parseInt(id));
	}
	
	public List<Appointment> getAppointments(int clientId) {
		return appointmentDao.listForClient(clientId);
	}
	
	public Pet savePet(PetCommand command) {
		Pet newPet = new Pet(command.getId(), command.getName(), command.getGender(), command.isAltered(), command.getClientId());
		return petDao.save(newPet);
	}
}
