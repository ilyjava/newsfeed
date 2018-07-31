package com.ilyjava.News.data.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ilyjava.News.data.dao.interfaces.NewsDao;
import com.ilyjava.News.data.entities.News;
import com.ilyjava.News.data.entities.NewsCategory;
import com.ilyjava.News.data.services.interfaces.NewsService;

@Service
public class NewsServicesImpl implements NewsService {
	
	@Autowired
	private NewsDao newsDao;


	@Transactional
	public void saveNews(News news) {
		newsDao.saveNews(news);
	}


	@Transactional
	public List<News> listNews() {
		return newsDao.listNews();
	}
	

	@Transactional
	public List<News> listNewsByCategory(int categoryId) {
		return newsDao.listNewsByCategory(categoryId);
	}

	@Transactional
	public List<NewsCategory> listCategories() {
		return newsDao.listCategories();
	}

	@Transactional
	public News getNewsById(int newId) {
		return newsDao.getNewsById(newId);
	}

	@Transactional
	public void deleteNews(int newId) {
		newsDao.deleteNews(newId);
	}

	@Transactional
	public NewsCategory getNewsCategoryById(int categoryId) {
		return newsDao.getNewsCategoryById(categoryId);
	}
	
}

