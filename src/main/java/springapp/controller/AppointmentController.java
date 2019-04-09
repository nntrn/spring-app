package springapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import springapp.command.AppointmentCommand;
import springapp.domain.Appointment;
import springapp.domain.Client;
import springapp.domain.Pet;
import springapp.service.AppointmentService;
import springapp.service.ClientService;
import springapp.service.PetService;

/**
 * This controller handles all client related pages
 *
 * Notice the @PreAuthorize annotations on the methods
 */
@Controller
@RequestMapping("/appointments") // notice that this path is set at the class level.
public class AppointmentController {

	@Autowired
	AppointmentService appointmentService;

	// injecting in a PetService instance
	@Autowired
	PetService petService;

	@Autowired
	ClientService clientService;

	@PreAuthorize("hasAuthority('LIST_APPOINTMENTS')")
	@GetMapping
	public String listAppointments(Model model) {
		List<Appointment> appointments = appointmentService.getAppointments();
		model.addAttribute("appointments", appointments);
		return "appointments/listAppointments";
	}

	@PreAuthorize("hasAuthority('GET_APPOINTMENT')")
	@GetMapping("/{id}")
	public String getAppointment(@PathVariable("id") String id, Model model,
			@RequestParam(name = "petId", required = false) Integer petId,
			@RequestParam(name = "clientId", required = false) Integer clientId,
			@RequestParam(name = "saved", required = false) boolean saved) {

		model.addAttribute("fromClientPage", clientId != null);
		model.addAttribute("saved", saved);

		AppointmentCommand appointmentCommand;

		if (id.equals("new")) {
			appointmentCommand = new AppointmentCommand();
		} 
		else {
			Appointment appointment = appointmentService.getAppointment(id);

			appointmentCommand = new AppointmentCommand(appointment);
			appointmentCommand.setPetId(appointmentCommand.getPetId());
			appointmentCommand.setApptTime(appointmentCommand.getApptTime());
			appointmentCommand.setApptDate(appointmentCommand.getApptDate());
			appointmentCommand.setApptReason(appointmentCommand.getApptReason());
			appointmentCommand.setVisitType(appointmentCommand.getVisitType());
			appointmentCommand.setCloseType(appointmentCommand.getCloseType());

			model.addAttribute("saved2", saved);
		}

		Pet pet = petService.getPet(appointmentCommand.getPetId().toString());
		// Client client = pet.getClient();
		appointmentCommand.setPet(pet);
		appointmentCommand.setClient(pet.getClient());

		model.addAttribute("command", appointmentCommand);
		// model.addAttribute("pets", appointmentService.getAppointments("pets",
		// pet_id));

		return "appointments/editAppointment";
	}

	@PreAuthorize("hasAuthority('SAVE_APPOINTMENT')")
	@PostMapping
	public String saveAppointment(
		AppointmentCommand command, 
		RedirectAttributes redirectAttributes,
		boolean fromClientPage) {
			
		Appointment appointment = appointmentService.saveAppointment(command);

		redirectAttributes.addAttribute("saved", true);
		if (fromClientPage) {
			redirectAttributes.addAttribute("clientId", appointment.getClient().getId());
		}
		return "redirect:/appointments/" + appointment.getId();

	}

	@PreAuthorize("hasAuthority('DELETE_APPOINTMENT')")
	@GetMapping("/{id}/delete")
	public String deleteAppointment(@PathVariable("id") String id,
			@RequestParam(name = "clientId", required = false) Integer clientId, RedirectAttributes redirectAttributes) {

		int cid = appointmentService.getAppointment(id).getClient().getId();

		appointmentService.deleteAppointment(Integer.parseInt(id));
		redirectAttributes.addFlashAttribute("deleted", true);

		if (clientId != null) {
			return "redirect:/clients/" + cid;
		}

		return "redirect:/appointments/";

	}

}
