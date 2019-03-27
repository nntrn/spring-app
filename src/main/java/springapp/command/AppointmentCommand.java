package springapp.command;

import springapp.domain.Appointment;
import springapp.domain.Client;
import springapp.domain.Pet;

/**
 * This command class is used to pass information back and force between the
 * client and the server
 * 
 */
public class AppointmentCommand {

	private Integer id;
	private Integer client_id;
	private Integer pet_id;
	private String appt_time;
	private String appt_date;
	private String appt_type;
	private Pet pet;
	private Client client;

	/**
	 * Creates a command object that has the initial values the same as the client
	 * passed in
	 * 
	 * @param client the client to initialize the command object with
	 */
	public AppointmentCommand(Appointment appointment) {
		if (appointment != null) {
			id = appointment.getId();
			this.client_id = appointment.getClientId();
			this.pet_id = appointment.getPetId();
			this.appt_date = appointment.getApptDate();
			this.appt_time = appointment.getApptTime();
			this.appt_type = appointment.getApptType();
		}
	}
	
	public AppointmentCommand() {}

	
//	public AppointmentCommand(Integer pet_id) {
//		this.pet_id = pet_id;
//	}
//	
//	public AppointmentCommand(Pet pet) {
//		this.pet_id = pet.getId();
//		this.client_id = pet.getClientId();
//	}

	public Integer getId() {
		return id;
	}

	public Integer getClientId() {
		return client_id;
	}

	public Integer getPetId() {
		return pet_id;
	}

	public String getApptTime() {
		return appt_time;
	}

	public String getApptDate() {
		return appt_date;
	}

	public String getApptType() {
		return appt_type;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setClientId(Integer client_id) {
		this.client_id = client_id;
	}

	public void setPetId(Integer pet_id) {
		this.pet_id = pet_id;
	}

	public void setApptTime(String appt_time) {
		this.appt_time = appt_time;
	}

	public void setApptDate(String appt_date) {
		this.appt_date = appt_date;
	}

	public void setApptType(String appt_type) {
		this.appt_type = appt_type;
	}
	
	public Pet getPet() {
		return pet;
	}

	public void setPet(Pet pet) {
		this.pet = pet;
	}
	
	public Client getClient() {
		return client;
	}
	
	public void setClient(Client client) {
		this.client = client;
	}
	

	
}
