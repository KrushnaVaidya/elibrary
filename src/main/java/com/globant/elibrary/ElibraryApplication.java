package com.globant.elibrary;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.globant.elibrary.daos.BookDAO;
import com.globant.elibrary.models.BookModel;

@SpringBootApplication
@ComponentScan(basePackages = {"com.globant.elibrary"})
public class ElibraryApplication {

	public static void main(String[] args) {
		ApplicationContext context=SpringApplication.run(ElibraryApplication.class, args);
		BookDAO bookDAO=(BookDAO)context.getBean("bookDAO");
		BookModel book=new BookModel();
		book.setAuthor("Utkarsh");
		book.setIsbn("ISBN-002");
		book.setPublisher("Teck-Max");
		book.setQty(5);
		book.setTitle("FresherTraining");
		//bookDAO.save(book);
		List<BookModel> all=(List<BookModel>) bookDAO.findAll();
		System.out.println(all);
		
	}

}
