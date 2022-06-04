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
        $DBname = "DB_Project_ELIDEK"


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


                <form method="get">
                    <input class="btn btn-primary btn-xl"  type="submit" name = "add" value="Add"> 
                    <input class="btn btn-primary btn-xl"  type="submit" name = "delete" value="Delete"> 
                </form> 

            <?php 
                
                if($_GET){
                
                    if(isset($_GET['add'])) {
                        

                        echo '

                        <h2> What do you want to add?</h2>

                        <form action="/action_page.php">
                            <label for="add"></label>
                            <select id="add" name="add">
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
                            <input type="submit">
                          </form>
                        ';

                        

                        if($_GET){

                            $addAt = $_GET['add'];

                            if($addAt == Project){

                                echo '

                                    <form method="get">
                                        <label for="projectID">Project ID:</label> <input type="number" name="projectID"> <br>
                                        <label for="projectTitle">Project title:</label> <input type="text" name="projectTitle"><br>
                                        <label for="description">Description:</label> <input type="text" name="description"><br>
                                        <label for="baget">Baget:</label> <input type="int" name="baget"><br>
                                        <label for="sdate">Starting Date:</label> <input type="date" name="sdate"><br>
                                        <label for="edate">Ending Date:</label> <input type="date" name="edate"><br>
                                        <label for="duration">Duration:</label> <input type="number" name="duration"><br><br>

                                        <label for="organisationID">Organisation ID:</label> <input type="text" name="organisationID"><br><br>

                                        <label for="reviweGrade">Review Grade:</label> <input type="number" name="reviweGrade"><br>
                                        <label for="reviweDate">Review Date:</label> <input type="date" name="reviweDate"><br>
                                        <label for="reviwersID">Reviwers ID:</label> <input type="number" name="reviwersID"><br><br>

                                        <label for="supervisorID">Supervisor ID:</label> <input type="nuber" name="supervisorID"><br><br>
                                        
                                        <label for="fieldsIDs">Fields IDs:</label> <input type="text" name="fieldsIDs"><br><br>
                                        
                                        <label for="programIDs">Program IDs:</label> <input type="number" name="programIDs"><br><br>
                                        
                                        <label for="employID">Employ who manage the Project ID:</label> <input type="number" name="employID"><br><br>

                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $projectID = $_GET['projectID'];
                                        $projectTitle = $_GET['projectTitle'];
                                        $description = $_GET['description'];
                                        $baget = $_GET['baget'];
                                        $sdate = $_GET['sdate'];
                                        $parts = explode('-',$sdate);
                                        $sdate = $parts[2] . '-' . $parts[0] . '-' . $parts[1];
                                        $edate = $_GET['edate'];
                                        $parts = explode('-',$edate);
                                        $edate = $parts[2] . '-' . $parts[0] . '-' . $parts[1];
                                        $duration = $_GET['duration'];

                                        $organisationID = $_GET['organisationID'];

                                        $reviweGrade = $_GET['reviweGrade'];
                                        $reviweDate = $_GET['reviweDate'];
                                        $parts = explode('-',$reviweDate);
                                        $reviweDate = $parts[2] . '-' . $parts[0] . '-' . $parts[1];
                                        $reviwersID = $_GET['reviwersID'];

                                        $supervisorID = $_GET['supervisorID'];

                                        $fieldsIDs = $_GET['fieldsIDs'];
                                        
                                        $programIDs = $_GET['programIDs'];
                                        
                                        $employID = $_GET['employID'];

                                        $sql = "INSERT INTO Project 
                                                    VALUES(".$projectID.",".$projectTitle.",".$description.",".$baget."," .$sdate.",".$edate."," .$duration.",".$organisationID." )";
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        //reniew
                                        $sql ="INSERT INTO review
                                                    VALUES(".$reviwersID.",".$projectID.",".$reviweGrade.",".$reviweDate.")";

                                        
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        //organization
                                        $sql = "INSERT INTO project_managed_by_org
                                                    VALUES(".$organisationID.",".$projectID.")";

                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        //supervisor
                                        $sql = "INSERT INTO res_works_one_project
                                                    VALUES(".$supervisorID.",".$projectID.", TRUE)";

                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        //field
                                        $fieldsIDs = explode(' ',$fieldsIDs);

                                        foreach ($fieldsIDs as $fieldID){
                                            $sql = "INSERT INTO scientific_field_project
                                                    VALUES(".$fieldsIDs.",".$projectID.")";

                                            $result1 = mysqli_query($conn, $sql);
                                            $result = $result and  $result1;
                                        }

                                        //program
                                        $sql = "INSERT INTO Prject_donation
                                                    VALUES(".$projectID.",".$programIDs.")";

                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        //employ
                                        $sql = "INSERT INTO employer_manages_project
                                                    VALUES(".$projectID.",".$employID.")";

                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            }   
                            
                            elseif($addAt == Program){

                                echo '

                                    <form method="get">
                                        <label for="programID">Program ID:</label> <input type="number" name="programID"> <br>
                                        <label for="programName">Program Name:</label> <input type="text" name="programName"><br>
                                        <label for="adminID">Administration ID:</label> <input type="number" name="adminID"><br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $programID = $_GET['programID'];
                                        $programName = $_GET['programName'];
                                        $adminID = $_GET['adminID'];
                                       
                                        $sql = "INSERT INTO program 
                                                    VALUES(".$programID.",".$programName.")";
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        
                                        $sql ="INSERT INTO program_belongs_to_admin
                                                    VALUES(".$adminID.",".$programID.")";

                                        $result1 = mysqli_query($conn, $sql);

                                        $result = $result and  $result1;

                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            }   
                            
                            elseif($addAt == Organisation){

                                echo'

                                    <form method="get">
                                        <label for="orgID">Organisation Abriviation:</label> <input type="text" name="orgID"> <br>
                                        <label for="orgName">Organisation Name:</label> <input type="text" name="orgName"><br>
                                        <label for="orgStreet">Address Street:</label> <input type="text" name="orgStreet"><br>
                                        <label for="orgNumb">Street Number:</label> <input type="text" name="orgNumb"><br>
                                        <label for="orgPostCode">Postal Code:</label> <input type="number" name="orgPostCode"><br>
                                        <label for="orgCity">City:</label> <input type="text" name="orgCity"><br>
                                        <label for="category">Type of organisation:</label> <input type="text" name="category"><br>
                                        <label for="estimateBadget">Estimate Badget:</label> <input type="number" name="estimateBadget"><br>
                                        <label for="privetBadget">Privet Badget:</label> <input type="number" name="privetBadget"><br>
                                        <label for="privetCapital">Privet Capital:</label> <input type="number" name="privetCapital"><br><br>

                                        <label for="telephones">Telephone numbers:</label> <input type="text" name="telephones"><br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 

                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $orgID = $_GET['orgID'];
                                        $projectTitle = $_GET['projectTitle'];
                                        $orgStreet = $_GET['orgStreet'];
                                        $orgNumb = $_GET['orgNumb'];
                                        $orgPostCode = $_GET['orgPostCode'];
                                        $orgCity = $_GET['orgCity'];
                                        $category = $_GET['category'];
                                        $estimateBadget = $_GET['estimateBadget'];
                                        $privetBadget = $_GET['privetBadget'];
                                        $privetCapital = $_GET['privetCapital'];

                                        $telephones = $_GET['telephones'];
                                        $telephones = explode(' ',$telephones);

                                        $sql = "INSERT INTO organisaton 
                                                    VALUES(".$orgID.",".$projectTitle.",".$projectTitle.",".$orgStreet."," .$orgNumb.",".$orgPostCode."," .$orgCity.",".$category."," .$category.",".$privetBadget."," .$privetCapital."  )";
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        foreach ($telephones as $telephone){
                                            $sql = "INSERT INTO telephones
                                                    VALUES(".$telephone.",".$orgID.")";

                                            $result1 = mysqli_query($conn, $sql);
                                            $result = $result and  $result1;
                                        }

                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            }   

                            elseif($addAt == Researcher){

                                echo '

                                    <form method="get">
                                        <label for="researcherID">Researcher ID:</label> <input type="number" name="researcherID"> <br>
                                        <label for="firstName">First Name:</label> <input type="text" name="firstName"><br>
                                        <label for="lastName">Last Name:</label> <input type="text" name="lastName"><br>
                                        <label for="birthdate">Birthdate:</label> <input type="date" name="birthdate"><br>
                                        <label for="sex">Sex:</label> <input type="text" name="sex"><br><br>

                                        <label for="pojectsID">Projects ID (not supervises):</label> <input type="text" name="pojectsID"><br><br>

                                        <label for="organisationID"> Organisation ID:</label> <input type="text" name="organisationID"><br>
                                        <label for="sdate">Start Date:</label> <input type="date" name="sdate"><br>
                                        <label for="edate">Start Date:</label> <input type="date" name="edate"><br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $researcherID = $_GET['researcherID'];
                                        $firstName = $_GET['firstName'];
                                        $lastName = $_GET['lastName'];
                                        $birthdate = $_GET['birthdate'];
                                        $parts = explode('-',$birthdate);
                                        $birthdate = $parts[2] . '-' . $parts[0] . '-' . $parts[1];
                                        $sex = $_GET['sex'];

                                        $pojectsID = $_GET['pojectsID'];
                                        $pojectsID = explode(' ',$pojectsID);

                                        $organisationID = $_GET['organisationID'];
                                        $sdate = $_GET['sdate'];
                                        $parts = explode('-',$sdate);
                                        $sdate = $parts[2] . '-' . $parts[0] . '-' . $parts[1];
                                        $edate = $_GET['edate'];
                                        $parts = explode('-',$edate);
                                        $edate = $parts[2] . '-' . $parts[0] . '-' . $parts[1];
                                        
                                    
                                        $sql = "INSERT INTO resercher 
                                                    VALUES(".$researcherID.",".$firstName.",".$lastName.",".$birthdate."," .$sex.")";
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        //org
                                        $sql ="INSERT INTO researchers_works_org
                                                    VALUES(".$organisationID.",".$researcherID.",".$sdate.",".$edate.")";

                                        
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        foreach ($pojectsID as $pojectID){
                                            $sql = "INSERT INTO res_works_on_project
                                                    VALUES(".$researcherID.",".$projectID.", FALSE)";

                                            $result1 = mysqli_query($conn, $sql);
                                            $result = $result and  $result1;
                                        }


                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            } 

                            elseif($addAt == Administration){

                                echo '

                                    <form method="get">
                                        <label for="adminID">Administration ID:</label> <input type="number" name="adminID"> <br>
                                        <label for="adminName">Administration Name:</label> <input type="text" name="adminName"><br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $adminID = $_GET['adminID'];
                                        $adminName = $_GET['adminName'];
                                    
                                        $sql = "INSERT INTO adminstration 
                                                    VALUES(".$adminID.",".$adminName.")";
                            
                                        
                                        $result = mysqli_query($conn, $sql);

                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            }

                            elseif($addAt == Deliverable){

                                echo '

                                    <form method="get">
                                        <label for="deliverablerTitle">Deliverable Title:</label> <input type="number" name="deliverablerTitle"> <br>
                                        <label for="projectID">Project ID:</label> <input type="text" name="projectID"><br>
                                        <label for="date">Date:</label> <input type="date" name="date"><br>
                                        <label for="summary">Summary:</label> <input type="text" name="summary"><br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $deliverablerTitle = $_GET['deliverablerTitle'];
                                        $projectID = $_GET['projectID'];
                                        $summary = $_GET['summary'];
                                        $date = $_GET['date'];
                                        $parts = explode('-',$date);
                                        $date = $parts[2] . '-' . $parts[0] . '-' . $parts[1];

                                        $sql = "INSERT INTO deliverable 
                                                    VALUES(".$date.",".$projectID.",".$deliverablerTitle.",".$summary.")";
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            } 

                            elseif($addAt == Field){

                                echo '

                                    <form method="get">
                                        <label for="fieldID">Field ID:</label> <input type="number" name="fieldID"> <br>
                                        <label for="name">Name:</label> <input type="text" name="name"><br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $fieldID = $_GET['fieldID'];
                                        $name = $_GET['name'];
                                        
                                        $sql = "INSERT INTO deliverable 
                                                    VALUES(".$fieldID.",".$name.")";
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            } 

                            elseif($addAt == Employ){

                                echo '

                                    <form method="get">
                                        <label for="employID">Employ ID:</label> <input type="number" name="employID"> <br>
                                        <label for="name">Name:</label> <input type="text" name="name"><br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $employID = $_GET['employID'];
                                        $name = $_GET['name'];
                                        
                                        $sql = "INSERT INTO employer 
                                                    VALUES(".$employID",".$name")";
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            } 

                        }

                    }
                    elseif(isset($_GET['delete'])) {
                        

                        echo '

                        <h2> What do you want to delete?</h2>

                        <form action="/action_page.php">
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
                            <input type="submit">
                        </form>
                        ';

                        

                        if($_GET){

                            $deletefrom = $_GET['delete'];

                            if($deletefrom == Project){

                                echo '

                                    <form method="get">
                                        <label for="projectID">Project ID:</label> <input type="number" name="projectID"> <br><br>

                                        <input class="btn btn-primary btn-xl"  type="submit" name = "DeleteFromDB" value="Delete Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['DeleteFromDB'])) {
                                        $projectID = $_GET['projectID'];
                                        
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
                                        $sql ="DELETE FROM res_works_one_project
                                                    WHERE project_id = " .$projectID;

                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        //field
                                        $sql ="DELETE FROM scientific_field_project
                                                    WHERE project_id = " .$projectID;

                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;
                                        

                                        //program
                                        $sql ="DELETE FROM Prject_donation
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
                                            $sql = "DELETE FROM Project 
                                                    WHERE project_id = ".$projectID;
                            
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
                            }   
                            
                            elseif($deletefrom == Program){

                                echo '

                                    <form method="get">
                                        <label for="programID">Program ID:</label> <input type="number" name="programID"> <br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $programID = $_GET['programID'];
                                       
                                        $sql = "DELETE FROM program_belongs_to_admin 
                                                    WHERE program_id =".$programID ;
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        
                                        $sql = "DELETE FROM Project_donation 
                                                    WHERE program_id =".$programID ;
                                                    
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        
                                        if ($result){
                                            $sql = "DELETE FROM program 
                                                    WHERE program_id =".$programID ;

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
                            }   
                            
                            elseif($deletefrom == Organisation){

                                echo'

                                    <form method="get">
                                        <label for="orgID">Organisation Abriviation:</label> <input type="text" name="orgID"> <br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 

                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $orgID = $_GET['orgID'];
                                        

                                        $sql = "DELETE FROM  telephones 
                                                    WHERE org_id = " $orgID ;
                            
                                        
                                        $result = mysqli_query($conn, $sql);

                                        $sql = "DELETE FROM  researcher_works_org 
                                                    WHERE org_id = " $orgID ;
                            
                                        
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        $sql = "DELETE FROM  project_managed_by_org 
                                                    WHERE org_id = " $orgID ;
                            
                                        
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;
                                        

                                        if ($result){
                                            $sql = "DELETE FROM organisation 
                                                    WHERE org_id =".$orgID ;

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
                            }   

                            elseif($deletefrom == Researcher){

                                echo '

                                    <form method="get">
                                        <label for="researcherID">Researcher ID:</label> <input type="number" name="researcherID"> <br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $researcherID = $_GET['researcherID'];
                                    
                                        
                                        
                                        //org
                                        $sql ="DELETE FROM researchers_works_org
                                                    WHERE researcher_id = ".$researcherID;

                                        
                                        $result = mysqli_query($conn, $sql);
                                        

                                        $sql ="DELETE FROM researchers_works_on_project
                                                    WHERE researcher_id = ".$researcherID;

                                        
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;

                                        $sql ="DELETE FROM review
                                                    WHERE researcher_id = ".$researcherID;

                                        
                                        $result1 = mysqli_query($conn, $sql);
                                        $result = $result and  $result1;



                                        if ($result){

                                            $sql = "DELETE FROM resercher 
                                                    WHERE researcher_id = ".$researcherID;
                            
                                        
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
                            } 

                            elseif($deletefrom == Administration){

                                echo '

                                    <form method="get">
                                        <label for="adminID">Administration ID:</label> <input type="number" name="adminID"> <br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $adminID = $_GET['adminID'];

                                        //org
                                        $sql ="DELETE FROM program_belongs_to_admin
                                                    WHERE admin_id = ".$adminID;

                                        
                                        $result = mysqli_query($conn, $sql);

                                        if ($result){

                                            $sql = "DELETE FROM administration 
                                                    WHERE admin_id = ".$admin_id;
                            
                                        
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
                            }

                            elseif($deletefrom == Deliverable){

                                echo '

                                    <form method="get">
                                        <label for="projectID">Project ID:</label> <input type="text" name="projectID"><br>
                                        <label for="ddate">Deliverable Date:</label> <input type="date" name="ddate"> <br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $projectID = $_GET['projectID'];
                                        $ddate = $_GET['ddate'];
                                        $parts = explode('-',$ddate);
                                        $ddate = $parts[2] . '-' . $parts[0] . '-' . $parts[1];
                                        
                                        $sql = "DELETE FROM deliverable 
                                                    WHERE diliverable_date = ".$ddate " AND project_id = ".$projectID;
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            } 

                            elseif($deletefrom == Field){

                                echo '

                                    <form method="get">
                                        <label for="fieldID">Field ID:</label> <input type="number" name="fieldID"> <br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $fieldID = $_GET['fieldID'];
                                        
                                        $sql = "DELETE FROM deliverable 
                                                    WHERE sc_field_id = ".$fieldID;
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        if ($result){
                                            echo "<p><h2> Done </p></h2>";
                                        }
                                        else{
                                            echo "<p><h2> Somthing went wrong </p></h2>";
                                        } 
                                    }
                                }
                            } 

                            elseif($deletefrom == Employ){

                                echo '

                                    <form method="get">
                                        <label for="employID">Employ ID:</label> <input type="number" name="employID"> <br><br>
                                        
                                        <input class="btn btn-primary btn-xl"  type="submit" name = "AddToDB" value="Add Data"> 
                                    </form>

                                ';

                                if($_GET){
                
                                    if(isset($_GET['AddToDB'])) {
                                        $employID = $_GET['employID'];
                                        
                                        $sql = "DELETE FROM employer_manages_project 
                                                    WHERE employer_id = ".$employID;
                            
                                        
                                        $result = mysqli_query($conn, $sql);
                                        
                                        if ($result){

                                            $sql = "DELETE FROM employer 
                                                    WHERE employer_id = ".$employID;
                            
                                        
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
                            } 

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
</html>