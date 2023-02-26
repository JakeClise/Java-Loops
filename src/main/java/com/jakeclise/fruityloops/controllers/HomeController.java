package com.jakeclise.fruityloops.controllers;
import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.jakeclise.fruityloops.models.Item;

@Controller
public class HomeController {
	@GetMapping("/")
	public String index(Model model) {

		ArrayList<Item> fruits = new ArrayList<Item>();
	    fruits.add(new Item("Kiwi", 1.5));
	    fruits.add(new Item("Mango", 2.0));
	    fruits.add(new Item("Goji Berries", 4.0));
	    fruits.add(new Item("Guava", .75));
	     // Add your fruits view model here
	    model.addAttribute("fruits", fruits);

	    ArrayList<Item> veggies = new ArrayList<Item>();
	    veggies.add(new Item("Carrot", 2.4));
	    veggies.add(new Item("Brocolli", 3.42));
	    veggies.add(new Item("Asparagus", 2.5));

	    model.addAttribute("veggies", veggies);

		ArrayList<Item> meats = new ArrayList<Item>();
		meats.add(new Item("Beef", 12.0));
		meats.add(new Item("Chicken", 8.0));
		meats.add(new Item("Pork", 10.0));
		meats.add(new Item("Lamb", 15.0));

		model.addAttribute("meats", meats);

	    return "index.jsp";

	}

}




