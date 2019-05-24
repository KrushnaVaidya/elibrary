package com.globant.elibrary.controllers;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.globant.elibrary.facades.BookFacadeImpl;
import com.globant.elibrary.models.BookModel;
/**
 * 
 * @author krushna.vaidya
 *
 *This is a Controller Class that controls BookService.
 */

@Controller
public class BookController {
	@Autowired
	private BookFacadeImpl bookFacade;
	/**
	 * This method
	 * @return
	 */
	@GetMapping("/home")
	public String getHomePage() {
		return "homepage";
	}
	
	@GetMapping("/showbook")
	public String getAllBooks(HttpSession session,Model model) {
		List<BookModel> books=(List<BookModel>)bookFacade.findAllBooks();
		model.addAttribute("books",books);
		return "showbook";
	}
	
	/**
	 * This method redirect url to addbook.jsp page.
	 * @return
	 */
	@GetMapping("/addbook")
	public String addBook() {
		return "addbook";
	}
	
	/**
	 * This Method is used To add Book to the Database.
	 * @param author
	 * @param title
	 * @param isbn
	 * @param publisher
	 * @param qty
	 * 
	 */
	@PostMapping("/addbook")
	public void addBookTo(@RequestParam("author")String author,@RequestParam("title")String title,@RequestParam("isbn")String isbn,@RequestParam("publisher")String publisher,@RequestParam("qty")String qty) {
		BookModel book=new BookModel();
		book.setAuthor(author);
		book.setIsbn(isbn);
		book.setPublisher(publisher);
		book.setTitle(title);
		book.setQty(Integer.parseInt(qty));
		bookFacade.save(book);
		System.out.println("Book Added");
	}
	
	/**
	 * This Method redirect control to search.jsp page.
	 * @return
	 */
	@GetMapping("/searchbook")
	public String getsearchBook() {
		return "searchbook";
	}
	/**
	 * This method Search the Book as per the ID.
	 * @param title
	 * @param session
	 * @param model
	 */
	@PostMapping("/search")
	public void seachBook(@RequestParam("title")String title,HttpSession session,Model model) {
		List<BookModel> books=bookFacade.findByTitle(title);
		model.addAttribute("searchRes",books);
	}
	/**
	 * This method delete book.
	 * @param id
	 */
	
	@PostMapping("/delete")
	public void delete(@RequestParam("id")String id) {
		BookModel book=new BookModel();
		book.setId(Integer.parseInt(id));
		bookFacade.deleteBook(book);
		System.out.println("Book Deleted");
	}
	
}
