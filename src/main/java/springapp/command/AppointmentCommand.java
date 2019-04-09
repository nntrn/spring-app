package springapp.command;

import java.sql.Date;
import java.time.LocalDate;
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
	private Integer pet_id;
	private Integer time;
	private String date;
	private String reason;
	private String visit_type;
	private String close_type;
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
			this.pet_id = appointment.getPetId();
			this.date = appointment.getApptDate();
			this.time = appointment.getApptTime();
			this.reason = appointment.getApptReason();
		}
	}
	
	public AppointmentCommand() {}

	public Integer getId() {
		return id;
	}

	public Integer getPetId() {
		return pet_id;
	}

	public Integer getApptTime() {
		return time;
	}

	public String getApptDate() {
		return date;
	}

	public String getApptReason() {
		return reason;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setPetId(Integer pet_id) {
		this.pet_id = pet_id;
	}

	public void setApptTime(Integer time) {
		this.time = time;
	}

	public void setApptDate(String date) {
		this.date = date;
	}

	public void setApptReason(String reason) {
		this.reason = reason;
	}

	public String getVisitType() {
		return visit_type;
	}
	public void setVisitType(String visit_type) {
		this.visit_type = visit_type;
	}

	public String getCloseType() {
		return close_type;
	}
	public void setCloseType(String close_type){
		this.close_type = close_type;
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
