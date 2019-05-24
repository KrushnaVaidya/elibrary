
<!DOCTYPE html>
<html lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Search Book</title>

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
        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
                <form action="search" method="POST" class="form-group-lg">
                        <legend>Search Book</legend>
                         <div class="form-group row font-label">
					    <label for="inputPublisher" class="col-sm-2 col-form-label font-label">Title</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="title" id="inputPublisher">
					    </div>
					  </div>
                       <div class="form-group row">
                       	<button type="submit" class="btn btn-primary div-center btn-sub">Search</button>
                       </div>
                        
                    </form>
        </div>
        <div style="margin-bottom: 400px;">
        
        </div>
     <div class="col-sm-12 footer-div">
	    <div class="form-group row">
			<label  class="div-center">Globant Assignment-03 by Krushna Vaidya</label>
		</div>
    </div>	
    </body>
</html>
