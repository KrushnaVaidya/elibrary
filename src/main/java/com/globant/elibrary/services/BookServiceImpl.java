package com.globant.elibrary.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import com.globant.elibrary.ElibraryApplication;
import com.globant.elibrary.daos.BookDAO;
import com.globant.elibrary.models.BookModel;
@Service
@Transactional
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookDAO bookDAO;
	
	@Override
	public void save(BookModel book) {
		bookDAO.save(book);
		
	}

	@Override
	public List<BookModel> findAllBooks() {
		
		return (List<BookModel>) bookDAO.findAll();
	}

	@Override
	public List<BookModel> findByTitle(String title) {
		
		return bookDAO.findByTitle(title);
	}

	@Override
	public boolean deleteBook(BookModel book) {
		bookDAO.delete(book);
		return true;
	}

}
