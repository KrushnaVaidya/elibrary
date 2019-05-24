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
<title>Search Result</title>
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
    <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 div-center">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Qty</th>
                  
                </tr>
            </thead>
            
            <tbody>
            <%
            List<BookModel> all=(List<BookModel>)request.getAttribute("searchRes");
            for(int i=0;i<all.size();i++){
            %>
            <tr>
               <td>
                    <%=all.get(i).getId()%>
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
              
           </tr>
          <%} %>
               
            </tbody>
        </table>
    </div>
        <div class="col-sm-12 footer-div">
	    <div class="form-group row">
			<label  class="div-center">Globant Assignment-03 by Krushna Vaidya</label>
		</div>
    </div>
</body>
</html>