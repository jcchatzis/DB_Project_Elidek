<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>test 2</title>
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
                        </ul>   
                    </div>
                </div>
            </nav>
            <!-- Masthead-->
        <!-- Contact Section-->
        <br><br><br>
        
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Test 2</h2>
                <!-- Icon Divider-->

                <br>
                    
                <form method="get">

                    <h2>Researcher First Name:</h2> <input type="text" name="resercherFirstName">
                    <h2>Researcher Last Name:</h2> <input type="text" name="resercherLastName">
                    <br><br>
                    <font size="+2">or</font>
                    <br><br>
                    <h2>Acronym of organization:</h2> <input type="text" name="organisationID">
                    
                    <br><br>

                    <input class="btn btn-primary btn-xl"  type="submit" name = "button2" value="Load Data">

                </form>  
                <?php 
                
                    if($_GET){
                    //<!--an einai to ena i an einai to allo-->
                        if(isset($_GET['button2'])) {
                            $resercherFirstName =  $_GET['resercherFirstName'];
                            $resercherLastName =  $_GET['resercherLastName'];
                            $organisationID =  $_GET['organisationID'];

                            // <!--echo '<script>alert("'.  $_POST['name'] . ',  '.$_POST['email'].'")</script>';-->
                            if (is_null($resercherLastName) and is_null($organisationID)){
                                ;
                            }else if (!is_null($resercherLastName) and !is_null($organisationID)){
                                echo " <h1> Enter only one  </h1>";
                            }else{

                                if (!is_null($resercherLastName) and is_null($organisationID)){
                                    $flag = 0;
                                    $sql = "select c.project_title
           
                                            from researcher a join res_works_on_project b on (a.researcher_id = b.researcher_id )
                                                            join project c on (b.project_id = c.project_id)
                                            
                                            where a.researcher_last_name = ".$resercherLastName."  and
                                                a.researcher_first_name = ".$resercherLastName."
                                            
                                            order by c.project_id asc
                                            ";
                                }else{
                                    $flag = 1;
                                    $sql = "select  b.project_title
           
                                            from organisation a join project b on (a.org_id = b.org_id)
                                            
                                            where a.org_name = ".$organisationID."
                                            
                                            order by b.project_id desc
                                            ";
                                }
                            
                                // echo $sql;
                                $result = mysqli_query($conn, $sql);
                                // echo $result;
                                echo " <h1> Projects: </h1>";
                                echo '<table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Project Name</th>
                                    </tr>
                                </thead>';
                                $idx =1;
                                if (mysqli_num_rows($result) > 0) {
                                    // output data of each row
                                
                                    while($row = mysqli_fetch_assoc($result)) {
                                    // echo "id: " . $row["NFC_ID"]." Nfc :". $row["PLACE_ID"]. $row["Entry"]. $row["Exitry"]. "<br>";
                                        echo '
                                        <th scope="row">'.$idx.'</th>
                                        <td>'. $row["project_title"].'</td>
                                        </tr>';

                                        $idx +=1;
                                    }        
                                } 
                                else {
                                    echo "0 results";
                                }
                                echo "</tbody></table>";
                                
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
                    <!-- (credit: https://updateyourfooter.com/)-->
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