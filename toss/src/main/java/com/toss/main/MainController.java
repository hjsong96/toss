package com.toss.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	
	@PostMapping("/main")
	public String main(HttpServletRequest request, Model model) {
		
		String aaccount = request.getParameter("aaccount");
		
		Map<String, Object> accountInfo = mainService.accountInfo(aaccount);
		System.out.println(accountInfo);
		
		model.addAttribute("accountInfo", accountInfo);
		
		// public List<Map<String, Object>> transactionList(int ttoggle, String aaccount)
		List<Map<String, Object>> transactionList = mainService.transactionList(1, aaccount);
		
		for(int i=0 ; i < transactionList.size(); i++) {
			String[] date = transactionList.get(i).get("tdate").toString().split(" ")[0].toString().split("-");
			String[] time = transactionList.get(i).get("tdate").toString().split(" ")[1].toString().split(":");
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("year", date[0]);
			map.put("month", date[1]);
			map.put("date", date[2]);
			map.put("hour", time[0]);
			map.put("minute", date[1]);
			map.put("second", time[2]);
			System.out.println(map);
			
			model.addAttribute("transactiondate"+i, map);
		}
		System.out.println(transactionList);
		
		model.addAttribute("transactionList", transactionList);
		
		
		return "main";
	}
}
