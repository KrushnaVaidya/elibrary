<%@page import="com.globant.elibrary.models.BookModel"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
<title>All Books</title>
</head>
<body>
   <table class="table table-dark home-font">
        <thead>
            <tr>
                <th scope="col" class="el-bg"><a href="home">
                <img alt="" src="ELibrary.png">
                </a></th>
                <th scope="col"><a href="home">Home</a></th>
                <th scope="col"><a href="addbook">Add Book</a></th>
                <th scope="col"><a href="showbook">View Book</a></th>
                <th scope="col"><a href="searchbook">Search Book</a></th>
                <th scope="col"><a href="home">Log Out</a></th>
            </tr>
        </thead>  
    </table> 
    <div class="row show-bg">
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
    </div>
    
     <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 mg-t ">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Qty</th>
                    <th>Delete</th>
                  
                </tr>
            </thead>
            
            <tbody>
            <%
            List<BookModel> all=(List<BookModel>)request.getAttribute("books");
            for(int i=0;i<all.size();i++){
            %>
            <tr>
            <form action="delete" method="post" >
               <td>
                    <%=all.get(i).getId()%>
                    <input type="hidden" name="id" value="<%=all.get(i).getId()%>">
               </td>
              <td>
                    <%=all.get(i).getIsbn()%>
               </td>
              <td>
                    <%=all.get(i).getTitle()%>
               </td>
               <td>
                    <%=all.get(i).getAuthor()%>
               </td>
               <td>
                    <%=all.get(i).getPublisher()%>
               </td>
               <td>
                    <%=all.get(i).getQty()%>
               </td>
                 <td>
                    <input type="submit" name="Delete" value="Delete">
               </td>
               </form>
           </tr>
          <%} %>
               
            </tbody>
        </table>
    </div>
    </div>
   <div class="col-sm-12 footer-div">
	    <div class="form-group row">
			<label  class="div-center">Globant Assignment-03 by Krushna Vaidya</label>
		</div>
    </div>
   </body>
</html>