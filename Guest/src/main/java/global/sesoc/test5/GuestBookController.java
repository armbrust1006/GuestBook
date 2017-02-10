package global.sesoc.test5;

import java.util.ArrayList;

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
	GuestBookRepository guest;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		ArrayList<GuestBook> guestbook = (ArrayList<GuestBook>) guest.findList();
		model.addAttribute("guestbook", guestbook);
		return "list";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String list() {
		return "bookWrite";
	}
	
}
