package global.sesoc.test5;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.test5.repository.GuestBookRepository;
import global.sesoc.test5.vo.GuestBook;

@Controller
public class GuestBookController {
	@Autowired
	GuestBookRepository guestRe;

	private static final Logger LOGGER = LoggerFactory.getLogger(GuestBookController.class);

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		ArrayList<GuestBook> guestbook = (ArrayList<GuestBook>) guestRe.findList();
		model.addAttribute("guestbook", guestbook);
		return "list";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String list() {
		return "bookWrite";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String list(GuestBook guest) {

		if (guestRe.insert(guest) == 1) {
			return "redirect:list";
		} else {
			return "redirect:bookWrite";
		}
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(GuestBook guest) {
		if (guestRe.delete(guest) == 1) {

		}
		return "redirect:list";
	}

	@RequestMapping(value = "/updatePage", method = RequestMethod.POST)
	public String updatePage(GuestBook guest, Model model) {
		GuestBook guestUP = guestRe.findOne(guest.getNum(), guest.getPassword());
		model.addAttribute("guestUP", guestUP);
		return "bookUpdate";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(GuestBook guest) {
		guestRe.update(guest);
		return "redirect:list";
	}

}
