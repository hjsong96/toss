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

	public int acCheck2(Map<String, Object> map) {
		return sqlSession.selectOne("sendMoney.acCheck2", map);
	}

	public List<AccountsDTO> sendList2(String acCheck) {
		return sqlSession.selectList("sendMoney.sendList2", acCheck);
	}

	public List<String> transList(TransactionsDTO dto) {
		return sqlSession.selectList("sendMoney.transList", dto);
	}

	public List<AccountsDTO> abCheck(Map<String, Object> map) {
		return sqlSession.selectList("sendMoney.abCheck", map);
	}

	public int trSave(Map<String, Object> map) {
		return sqlSession.insert("sendMoney.trSave", map);
	}


}
