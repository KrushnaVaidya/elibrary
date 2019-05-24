
<!DOCTYPE html>
<html lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Add Book</title>

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
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
    <div class="row">
   
    <div class="col-lg-12 di-addbook">
    <div class="col-lg-2">
    </div>
      		<div class="col-lg-4">
                <form action="addbook" method="POST" class="form-group-lg" >
                            
                     <div class="form-group row">
					    <label for="inputIsbn" class="col-sm-2 col-form-label">ISBN</label>
					    <div class="col-sm-10">
					      <input type="text"  class="form-control input-lg" name="isbn" id="inputIsbn">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputTitle" class="col-sm-2 col-form-label">Title</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="title" id="inputTitle">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputAuthor" class="col-sm-2 col-form-label">Author</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="author" id="inputAuthor">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputPublisher" class="col-sm-2 col-form-label">Publisher</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="publisher" id="inputPublisher">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputQty" class="col-sm-2 col-form-label">Quantity</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="qty" id="inputQty">
					    </div>
					  </div>
					   <div class="form-group row col-sm-12">
					   <div class="col-sm-2">
					   
					   </div>
					   	<div class="col-sm-5">
					   		<button type="submit" class="btn btn-primary btn-lg btn-sub">ADD BOOK</button>
              			</div>
					    <div class="col-sm-5">
					     <!-- <button type="button" class="btn btn-primary btn-lg btn-sub">Clear</button>
              		 -->   </div>
					  </div>
                       
                    </form>
  		</div>
  		<div class="col-lg-6">
		</div>
    </div>

	</div>
	    <div class="col-sm-12 footer-div">
	    <div class="form-group row">
			<label  class="div-center">Globant Assignment-03 by Krushna Vaidya</label>
		</div>
    </div>
        	
    </body>
</html>
