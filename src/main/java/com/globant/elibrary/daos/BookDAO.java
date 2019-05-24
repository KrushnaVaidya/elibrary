package com.globant.elibrary.daos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.globant.elibrary.models.BookModel;
@Repository
public interface BookDAO extends CrudRepository<BookModel, Integer>{
	//public List<BookModel> findAllBooks();
	public List<BookModel>findByTitle(String title);
}
