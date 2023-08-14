package com.toss.send;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class SendController {
	
	@Autowired 
	private SendService sendService;

	@GetMapping(value = {"/", "/send"})
	public String send() {
		return "/send";
	}
	
	@PostMapping("/send")
	public String sendList(HttpServletRequest request, Model model) {
		AccountsDTO dto = new AccountsDTO();
		dto.setAaccount(request.getParameter("aaccount"));
		//System.out.println(request.getParameter("aaccount"));
		
		List<AccountsDTO> list = sendService.sendList(dto);
		model.addAttribute("list", list); 
		System.out.println(list);

		return "send";
	}
	
	//멤버에 맞는 계좌잔액 출력
	
	
	@GetMapping("/send2")
	public String send2() {
		return "send2";
	}
	
	@GetMapping("/send3")
	public String send3() {
		return "send3";
	}
	
	@ResponseBody
	@PostMapping("/send3")
	public String acCheck(@RequestParam Map<String, Object> map) {
		System.out.println(map);
		int result = sendService.acCheck(map);
		System.out.println(result);
		JSONObject json = new JSONObject();
		json.put("result", result);
		System.out.println(json.toString());

		return json.toString();
	}
	
	
	/*
	 * @PostMapping("/send3") public String acCheck(HttpServletRequest request,
	 * Model model) { AccountsDTO dto = new AccountsDTO();
	 * dto.setAaccount(request.getParameter("aaccount"));
	 * dto.setAbank(request.getParameter("abank"));
	 * 
	 * List<AccountsDTO> list = sendService.acCheck(dto); model.addAttribute("list",
	 * list); System.out.println(list);
	 * 
	 * return "send3"; }
	 */
	
	@GetMapping("/send4")
	public String send4() {
		return "send4";
	}
	
	@GetMapping("/send5")
	public String send5() {
		return "send5";
	}
	
	
}
