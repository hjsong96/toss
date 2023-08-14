package com.toss.send;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

@Repository
public class SendDAO {

	@Autowired
	private SqlSession sqlSession;

	public List<AccountsDTO> sendList(AccountsDTO dto) {
		return sqlSession.selectList("sendMoney.sendList", dto);
	}

	public int acCheck(Map<String, Object> map) {
		return sqlSession.selectOne("sendMoney.acCheck", map);
	}


}
