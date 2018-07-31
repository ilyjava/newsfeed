package com.ilyjava.News.data.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import com.ilyjava.News.data.entities.NewsCategory;
import com.ilyjava.News.data.services.interfaces.NewsService;

public class StringsToNewsCategoryConverter implements Converter<String, NewsCategory>{
	@Autowired
	private NewsService newsService;
	
	public NewsCategory convert(String categoryId) {
		newsService.getNewsCategoryById(Integer.parseInt(categoryId));
		return null;
	}
}
