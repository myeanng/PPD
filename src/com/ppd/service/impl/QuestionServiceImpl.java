package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.QuestionDao;
import com.ppd.entity.Question;
import com.ppd.service.QuestionService;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService {

	private QuestionDao questionDao;
	
	
	@Resource(name="questionDao")
	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	public boolean add(Question entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean del(Question entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Question> queryAll() {
		// TODO Auto-generated method stub
		return questionDao.queryAll();
	}

	public Question queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Question> queryByParam(Question entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Question entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
