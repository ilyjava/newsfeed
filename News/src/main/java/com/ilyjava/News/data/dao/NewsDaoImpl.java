package com.ilyjava.News.data.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.hibernate.ObjectNotFoundException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ilyjava.News.data.dao.interfaces.NewsDao;
import com.ilyjava.News.data.entities.News;
import com.ilyjava.News.data.entities.NewsCategory;


@Repository
public class NewsDaoImpl implements NewsDao{
	@Autowired
	private SessionFactory sessionFactory;

	public void saveNews(News news) {
		sessionFactory.getCurrentSession().saveOrUpdate(news);
	}

	public List<News> listNews() {
		List<News> result = new ArrayList<News>();
		for (Object o : sessionFactory.getCurrentSession().createQuery("from News").getResultList()) {
			result.add((News)o);
		}
		Collections.sort(result, new Comparator<News>(){

			public int compare(News n1, News n2) {
				return n2.getDate_published().compareTo(n1.getDate_published());
			}
		});
		return result;
	}
	

	public List<News> listNewsByCategory(int categoryId) {
		List<News> result = new ArrayList<News>();
		for (Object o : sessionFactory.getCurrentSession().createQuery("from News where category_id='" + categoryId + "'").getResultList()) {
			result.add((News)o);
		}
		Collections.sort(result, new Comparator<News>(){

			public int compare(News n1, News n2) {
				return n2.getDate_published().compareTo(n1.getDate_published());
			}
		});
		return result;
	}


	public News getNewsById(int newId) {
		try {
			News result = sessionFactory.getCurrentSession().get(News.class, newId);
			return result;
		}
		catch(ObjectNotFoundException ex) {
			return null;
		}
	}


	public void deleteNews(int newId) {
		News news = sessionFactory.getCurrentSession().get(News.class, newId);
		if (news != null) {
			news.setCategory(null);
			sessionFactory.getCurrentSession().remove(news);
		}
	}
	public List<NewsCategory> listCategories() {
		List<NewsCategory> result = new ArrayList<NewsCategory>();
		for (Object o : sessionFactory.getCurrentSession().createQuery("from NewsCategory").getResultList()) {
			result.add((NewsCategory)o);
		}
		Collections.sort(result, new Comparator<NewsCategory>(){
	
			public int compare(NewsCategory c1, NewsCategory c2) {
				return c1.getName().compareTo(c2.getName());
			}
		});
		return result;
	}
	

	public NewsCategory getNewsCategoryById(int categoryId) {
		try {
			NewsCategory result = sessionFactory.getCurrentSession().get(NewsCategory.class, categoryId);
			return result;
		}
		catch(ObjectNotFoundException ex) {
			return null;
		}
	}
}
