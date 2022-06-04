<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Test 4</title>
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
        $username = "danii";
        $password = "dczEKTWPSJRf6z";


        // Create connection
        $conn = mysqli_connect($servername, $username, $password, "cool_hotel");

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
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.html">Home</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="base.html">Base</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test1.html">test1</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test2.html">test2</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test3.html">test3</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test4.html">test4</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test5.html">test5</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test6.html">test6</a></li>
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test7.html">test7</a></li>   
                            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="test8.html">test8</a></li>  
                        </ul>   
                    </div>
                </div>
            </nav>
            <!-- Masthead-->
 <!-- Contact Section-->
 <br /><br /><br />
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Test 4</h2>
                <!-- Icon Divider-->
                <br>   

                <input class="btn btn-primary btn-xl"  type="submit" name = "button1" value="Load Data"> 
                <br>
                <?php 
                
                    if ($_GET){
                    // echo '<script>alert("'.  $_POST['name'] . ',  '.$_POST['email'].'")</script>';
                        $sql = "select c.num_of_projects as num_of_projects,
                                        c.org_id as org
                                from (
                                        select count(a.org_id) num_of_projects,
                                                year(b.start_date) year_of_projects,
                                                a.org_id
                                        from organisation a join project b on (a.org_id = b.org_id)
                                        group by year(b.start_date), 
                                                a.org_id
                                    ) c  join 
                                    (
                                        -- same query
                                        select count(a.org_id) num_of_projects,
                                                year(b.start_date) year_of_projects,
                                                a.org_id
                                        from organisation a join project b on (a.org_id = b.org_id)
                                        group by year(b.start_date), 
                                            a.org_id
                                    ) d on (c.year_of_projects = d.year_of_projects + 1 and c.org_id = d.org_id)  -- but join in next year
                                where (c.num_of_projects >= 10 and d.num_of_projects >= 10) and (c.num_of_projects = d.num_of_projects)
                            group by num_of_projects, org 
                        ";
                        // echo $sql;
                        $result = mysqli_query($conn, $sql);
                        // echo $result;
                        
                        // echo "Success";

                        echo '<table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Organization Name</th>
                                <th scope="col">Number of Projects</th>
                            </tr>
                        </thead>';

                        $idx = 0;
                        if (mysqli_num_rows($result) > 0) {
                          // output data of each row    
                          while($row = mysqli_fetch_assoc($result)) {
                            // echo "Facility: " . $row["FACILITY_ID"]." Date: ". $row["DATE_TIME"]. "NFC ID: " .$row["NFC_ID"]."Cost: ". $row["Cost"]. "<br>";
                            echo '  <tr>
                            <th scope="row">'.$idx.'</th>
                            <td>'.$row["org"].'</td>
                            <td>'.$row["num_of_projects"].'</td>
    
                            </tr>';
                            $idx +=1;
                          }        
                        } else {
                          echo "0 results";
                        }
                        echo "</tbody></table>";
                        
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