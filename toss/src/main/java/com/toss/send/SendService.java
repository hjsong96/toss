package com.toss.send;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SendService {

	@Autowired
	private SendDAO sendDAO;
	
	public List<AccountsDTO> sendList(AccountsDTO dto) {
		return sendDAO.sendList(dto);
	}

	public int acCheck(Map<String, Object> map) {
		return sendDAO.acCheck(map);
	}

	
}
