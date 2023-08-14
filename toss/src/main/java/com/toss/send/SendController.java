package com.toss.send;

import java.util.Arrays;
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

	@GetMapping("/send")
	public String send() {
		return "/send";
	}
	
	@PostMapping("/send")
	public String sendList(HttpServletRequest request, Model model) {
		AccountsDTO dto = new AccountsDTO();
		dto.setAaccount(request.getParameter("acCheck"));
		System.out.println(request.getParameter("acCheck"));
		
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
	
	@PostMapping("/send2")
	public String sendList2(@RequestParam ("acCheck") String acCheck, Model model) {
		List<AccountsDTO> list = sendService.sendList2(acCheck);
		System.out.println(list);
		model.addAttribute("list", list); 
		System.out.println(list);

		return "send2";
	}
	
	@GetMapping("/send3")
	public String send3() {
		return "send3";
	}
	
	@PostMapping("/send3")
	public String sendList3(@RequestParam ("acCheck") String acCheck, Model model) {
		System.out.println(acCheck);
		List<AccountsDTO> list = sendService.sendList2(acCheck);
		System.out.println(list);
		model.addAttribute("list", list); 
		System.out.println(list);

		return "send3";
	}
	
	@ResponseBody
	@PostMapping("/sendCheck")//비회원 보내기 보류
	public String acCheck(@RequestParam Map<String, Object> map) {
		System.out.println(map);
		JSONObject json = new JSONObject();
		System.out.println(json.toString());

		return json.toString();
	}
	
	@ResponseBody
	@PostMapping("/sendCheck2")//회원 보내기 ajax
	public String acCheck2(@RequestParam Map<String, Object> map) {
		System.out.println(map);
		int result = sendService.acCheck2(map);
		System.out.println(result);
		JSONObject json = new JSONObject();
		json.put("result", result);
		System.out.println(json.toString());

		return json.toString();
	}
	
	@GetMapping("/send4")
	public String send4() {
		return "send4";
	}
	
	@PostMapping("/send4")
	public String totalList(@RequestParam Map<String, Object> map, @RequestParam ("acCheck") String acCheck, @RequestParam ("trAccount") String trAccount, @RequestParam ("trAbank") String trAbank, Model model) {
		System.out.println(map);
		List<AccountsDTO> list = sendService.sendList2(acCheck);
		model.addAttribute("list", list); 
		System.out.println(list);

		List<AccountsDTO> list2 = sendService.abCheck(map);
		model.addAttribute("list2", list2); 
		System.out.println(list2);

		return "send4";
	}
	
	@GetMapping("/send5")
	public String send5() {
		return "send5";
	}
	
	@PostMapping("/send5")
	public String totalList2(@RequestParam Map<String, Object> map, @RequestParam ("acCheck") String acCheck, @RequestParam ("trAccount") String trAccount, @RequestParam ("trAbank") String trAbank, Model model) {
		System.out.println(map);
		List<AccountsDTO> list = sendService.sendList2(acCheck);
		model.addAttribute("list", list); 
		System.out.println(list);

		List<AccountsDTO> list2 = sendService.abCheck(map);
		model.addAttribute("list2", list2); 
		System.out.println(list2);
		
		int list3 = sendService.trSave(map);

		return "send5";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	 * TransactionsDTO dto = new TransactionsDTO(); dto.setAaccount(trAccount);
	 * dto.setTbank(trAbank);
	 * 
	 * System.out.println("trAccount: " + dto.getAaccount()); // 확인을 위해 출력
	 * System.out.println("trAbank: " + dto.getTbank()); // 확인을 위해 출력
	 */	
	
	
	/*
	 * @PostMapping("/send4") public String totalList(@RequestParam ("acCheck")
	 * String acCheck, @RequestParam ("trAccount") String trAccount, @RequestParam
	 * ("trAbank") String trAbank, Model model) { TransactionsDTO dto = new
	 * TransactionsDTO(); dto.setAaccount(trAccount); dto.setTbank(trAbank);
	 * 
	 * int result = sendService.transList(trAccount); System.out.println(result);
	 * 
	 * List<AccountsDTO> list = sendService.sendList2(acCheck);
	 * //System.out.println(list); model.addAttribute("list", list);
	 * System.out.println(list);
	 * 
	 * return "send4"; }
	 */
	
	
}
