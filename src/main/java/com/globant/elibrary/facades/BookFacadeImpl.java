package com.globant.elibrary.facades;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globant.elibrary.models.BookModel;
import com.globant.elibrary.services.BookServiceImpl;
@Service
public class BookFacadeImpl implements BookFacade{
	@Autowired
	private BookServiceImpl bookService;

	/*
	 * public BookFacadeImpl() { // TODO Auto-generated constructor stub
	 * bookService=new BookServiceImpl(); }
	 */
	@Override
	public void save(BookModel book) {
		 bookService.save(book);
	}

	@Override
	public List<BookModel> findAllBooks() {
		return  bookService.findAllBooks();
	}

	@Override
	public List<BookModel> findByTitle(String title) {
		// TODO Auto-generated method stub
		return  bookService.findByTitle(title);
	}

	@Override
	public boolean deleteBook(BookModel book) {
		// TODO Auto-generated method stub
		return  bookService.deleteBook(book);
	}

}
