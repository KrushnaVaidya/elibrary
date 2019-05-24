package com.globant.elibrary.services;

import java.util.List;

import com.globant.elibrary.models.BookModel;

public interface BookService {
	public void save(BookModel book);
	public List<BookModel> findAllBooks();
	public List<BookModel> findByTitle(String title);
	public boolean deleteBook(BookModel book);
}
