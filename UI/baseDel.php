'<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>base</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="logo.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>


    <?php
        $servername = "localhost";
        $username = "root";
        $password = "root";
        $DBname = "DB_Project_ELIDEK";


        // Create connection
        $conn = mysqli_connect($servername, $username, $password, $DBname);

        // Check connection
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        $output = "Connection Successful";
        echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
        
    ?>


    <body id="page-top">
        <body id="page-top">
            <!-- Navigation-->
            <nav class="navbar bg-secondary text-uppercase fixed-top" id="mainNav"> <!-- navbar-expand-lg-->
                <div class="container">
                    <a class="navbar-brand js-scroll-trigger" href="#page-top">ΕΛΙΔΕΚ</a>
                    <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        Menu
                        <i class="fas fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php">Home</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="base.php">Base</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test1.php">test1</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test2.php">test2</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test3.php">test3</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test4.php">test4</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test5.php">test5</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test6.php">test6</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test7.php">test7</a></li>  
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test8.php">test8</a></li>  
                    </div>
                </div>
            </nav>
            <!-- Masthead-->
 <!-- Contact Section-->
 <br /><br /><br />
                <section class="page-section" id="contact">
                <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">base</h2>
                <!-- Icon Divider-->
                <br/>   


                    <h1  >
                    <a href = "base.php">ADD</a>   
                    <a style = "text-decoration: underline;" href = "baseDel.php">DELETE</a> 
                    </h1>

            <?php 
                
                
                    
                    echo '

                    <h2> What do you want to delete?</h2>

                    <form action="/baseDel.php">
                        <label for="delete"></label>
                        <select id="delete" name="delete">
                            <option value="Select">------Select------</option>
                            <option value="Project">Project</option>
                            <option value="Program">Program</option>
                            <option value="Organisation">Organisation</option>
                            <option value="Researcher">Researcher</option>
                            <option value="Administration">Administration</option>
                            <option value="Deliverable">Deliverable</option>
                            <option value="Field">Field</option>
                            <option value="Employ">Employer</option>
                        </select>
                        <label for="projectID">ID:</label> <input type="number" name="ID"> <br><br>

                        <input class="btn btn-primary btn-xl"  type="submit" name = "DeleteFromDB" value="Delete Data"> 
                    </form>
                    
                    ';

                

                    


                        $deletefrom = $_GET['delete'];
                    
                    
                        if($deletefrom == 'Project'){
                        
                            if(isset($_GET['DeleteFromDB'])){


                                    $projectID = $_GET['ID'];

                                    //reniew
                                    $sql ="DELETE FROM review
                                                WHERE project_id = " .$projectID; 

                                    
                                    
                                    $result = mysqli_query($conn, $sql);

                                    //organization
                                    $sql ="DELETE FROM project_managed_by_org
                                                WHERE project_id = " .$projectID;

                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;

                                    //supervisor
                                    $sql ="DELETE FROM res_works_on_project
                                                WHERE project_id = " .$projectID;

                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;

                                    //field
                                    $sql ="DELETE FROM scientific_field_project
                                                WHERE project_id = " .$projectID;

                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;
                                    

                                    //program
                                    $sql ="DELETE FROM project_donation
                                                WHERE project_id = " .$projectID;

                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;

                                    //employ
                                    $sql ="DELETE FROM employer_manages_project
                                                WHERE project_id = " .$projectID;


                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;

                                    $sql ="DELETE FROM deliverable
                                                WHERE project_id = " .$projectID;


                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;

                                    if ($result){
                                        
                                        $sql = "DELETE FROM project 
                                                WHERE project_id = " .$projectID;
                        
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;
                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                            

                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                            

                                        } 
                                    }
                                    else{
                                        echo "<p><h2> Somthing went wrong </p></h2>";
                                    } 
                                
                            }
                        }   
                    
                        elseif($deletefrom == 'Program'){

                                if(isset($_GET['DeleteFromDB'])) {
                                    $programID = $_GET['ID'];
                                    
                                    $sql = "DELETE FROM program_belongs_to_admin 
                                                WHERE program_id = ".$programID;
                        
                                    
                                    $result = mysqli_query($conn, $sql);
                                    
                                    
                                    $sql = "DELETE FROM Project_donation 
                                                WHERE program_id =  ".$programID;
                                                
                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;

                                    
                                    if ($result){
                                        $sql = "DELETE FROM program 
                                                WHERE program_id =  ".$programID;

                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;
                                        if($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                    else{
                                        echo "<p><h2> Somthing went wrong </p></h2>";
                                    } 
                                }
                            
                        }  

                        elseif($deletefrom == 'Organisation'){

                            header("Location: delOrg.php");
                            exit();
                        }   

                        elseif($deletefrom == 'Researcher'){

                                if(isset($_GET['DeleteFromDB'])) {
                                    $researcherID = $_GET['ID'];
                                
                                    
                                    
                                    //org
                                    $sql ="DELETE FROM researcher_works_org
                                                WHERE researcher_id = " .$researcherID;

                                    
                                    $result = mysqli_query($conn, $sql);
                                    

                                    $sql ="DELETE FROM res_works_on_project
                                                WHERE researcher_id = " .$researcherID;

                                    
                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;

                                    $sql ="DELETE FROM review
                                                WHERE researcher_id =  " .$researcherID;
                                    $result1 = mysqli_query($conn, $sql);
                                    $result = $result and  $result1;



                                    if ($result){

                                        $sql = "DELETE FROM researcher 
                                                WHERE researcher_id = " .$researcherID;
                        
                                    
                                            $result1 = mysqli_query($conn, $sql);
                                            $result = $result and  $result1;

                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        }
                                    }
                                    else{
                                        echo "<p><h2> Somthing went wrong </p></h2>";
                                    } 
                                }
                            
                        } 
                    
                        elseif($deletefrom == 'Administration'){

                                if(isset($_GET['DeleteFromDB'])) {
                                    $adminID = $_GET['ID'];

                                    //org
                                    $sql ="DELETE FROM program_belongs_to_admin
                                                WHERE admin_id = " .$adminID;

                                    
                                    $result = mysqli_query($conn, $sql);

                                    if ($result){

                                        $sql = "DELETE FROM administration 
                                                WHERE admin_id = " .$adminID;
                        
                                    
                                            $result1 = mysqli_query($conn, $sql);
                                            $result = $result and  $result1;

                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        }
                                    }
                                    else{
                                        echo "<p><h2> Somthing went wrong </p></h2>";
                                    } 
                                }
                            
                        }

                        elseif($deletefrom == 'Deliverable'){

                            header("Location: delDel.php");
                            exit();    
                            
                        } 

                        elseif($deletefrom == 'Field'){

                                if(isset($_GET['DeleteFromDB'])) {
                                    $fieldID = $_GET['ID'];


                                    
                                    $sql = "DELETE FROM scientific_field_project 
                                                WHERE sc_field_id = " .$fieldID;
                        
                                    
                                    $result = mysqli_query($conn, $sql);
                                    
                                    if ($result){
                                        $sql = "DELETE FROM scientific_field 
                                                WHERE sc_field_id = " .$fieldID;
                                
                                            
                                        $result = mysqli_query($conn, $sql);
                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        }
                                    }
                                    else{
                                        echo "<p><h2> Somthing went wrong </p></h2>";
                                    } 
                                }
                            
                        } 
                    
                        elseif($deletefrom == 'Employ'){

                                if(isset($_GET['DeleteFromDB'])) {
                                    $employID = $_GET['ID'];
                                    
                                    $sql = "DELETE FROM employer_manages_project 
                                                WHERE employer_id = " .$employID;
                        
                                    
                                    $result = mysqli_query($conn, $sql);
                                    
                                    if ($result){

                                        $sql = "DELETE FROM employer 
                                                WHERE employer_id = " .$employID;
                        
                                    
                                        $result = mysqli_query($conn, $sql);

                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                    else{
                                        echo "<p><h2> Somthing went wrong </p></h2>";
                                    } 
                                }
                            
                        } 
                    
                
            ?>
                     

                
            </div>
            </div>
        </section>
        <footer class="footer text-center">
            <div class="container">
                <div class="row">
                    <!-- Footer Location-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Find Us</h4>
                        <p class="lead mb-0">
                            Sigrou Av. 185 & Sardeon 2 
                            <br>
                            17121, Nea Smirni, Athens
                            <br />
                            210 64 12 410, 420
                            <br> 
                            info@elidek.gr
                        </p>
                    </div>
                    <!-- Footer Social Icons-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                    </div>
                    <!-- Footer About Text-->
                    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4">Our Team</h4>
                        <p class="lead mb-0">
                            Chatzis Ioannis
                            <br />
                            Froudakis Evangelos
                            <br />
                            Sabanis Athanasios
                        </p>
                    </div>
                </div>
        </footer>    
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container">
                <small>
                    Copyright &copy; Your Website
                    <!-- This script automatically adds the current year to your website footer-->
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                </small>
            </div>
        </div>
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
        </div>

        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

    </body>
</html>'