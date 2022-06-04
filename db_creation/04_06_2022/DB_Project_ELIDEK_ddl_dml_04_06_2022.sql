-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 04, 2022 at 03:18 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DB_Project_ELIDEK`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`admin_id`, `admin_name`) VALUES
(1, 'DEPARTMENT-A'),
(2, 'DEPARTMENT-B'),
(3, 'DEPARTMENT-C'),
(4, 'DEPARTMENT-D'),
(5, 'DEPARTMENT-E'),
(6, 'DEPARTMENT-F'),
(7, 'DEPARTMENT-G'),
(8, 'DEPARTMENT-H'),
(9, 'DEPARTMENT-I'),
(10, 'DEPARTMENT-K');

-- --------------------------------------------------------

--
-- Table structure for table `deliverable`
--

CREATE TABLE `deliverable` (
  `deliverable_title` varchar(300) NOT NULL,
  `deliverable_date` date NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `deliverable_summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliverable`
--

INSERT INTO `deliverable` (`deliverable_title`, `deliverable_date`, `project_id`, `deliverable_summary`) VALUES
('sapien a libero nam', '2017-09-05', 2, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
('malesuada in imperdiet et commodo', '2017-09-29', 149, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
('ligula suspendisse ornare consequat lectus', '2018-03-15', 198, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
('vehicula consequat morbi', '2018-04-17', 105, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
('molestie hendrerit at vulputate', '2018-06-17', 137, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),
('pharetra magna vestibulum', '2018-07-22', 105, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
('nisl nunc rhoncus dui', '2018-07-23', 172, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
('sed accumsan felis', '2018-10-05', 172, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
('justo aliquam quis turpis', '2018-11-03', 15, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),
('sed sagittis nam', '2018-11-24', 104, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
('sapien a libero', '2018-12-08', 13, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.'),
('nulla pede ullamcorper augue', '2019-01-23', 130, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
('tristique tortor eu', '2019-02-24', 86, 'In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
('aliquam erat volutpat in congue', '2019-02-24', 142, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
('potenti cras in purus', '2019-03-12', 50, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
('etiam pretium iaculis justo in', '2019-04-24', 170, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),
('vestibulum rutrum rutrum', '2019-05-08', 74, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
('magnis dis parturient montes', '2019-05-24', 191, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
('cras non velit', '2019-05-27', 10, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
('aenean fermentum donec', '2019-06-12', 142, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
('suscipit ligula in lacus', '2019-06-14', 124, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
('pede lobortis ligula sit amet', '2019-06-17', 128, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
('nulla nisl nunc nisl', '2019-08-05', 141, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
('platea dictumst etiam faucibus cursus', '2019-08-25', 111, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
('blandit mi in', '2019-08-27', 188, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
('nisi nam ultrices libero non', '2020-02-17', 147, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
('magnis dis parturient', '2020-02-19', 4, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.'),
('vestibulum velit id pretium', '2020-04-01', 195, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
('integer pede justo lacinia eget', '2020-04-21', 103, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
('a pede posuere nonummy integer', '2020-04-29', 200, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
('tellus in sagittis dui', '2020-05-18', 15, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
('sit amet nunc viverra dapibus', '2020-05-19', 123, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
('curae donec pharetra magna vestibulum', '2020-06-29', 114, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
('sed sagittis nam congue risus', '2020-06-29', 147, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
('rhoncus sed vestibulum sit amet', '2020-07-04', 32, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),
('morbi vestibulum velit', '2020-07-27', 179, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
('phasellus in felis donec semper', '2020-08-10', 134, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.'),
('libero convallis eget eleifend', '2020-08-10', 186, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
('elementum eu interdum eu', '2020-08-25', 26, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
('metus aenean fermentum', '2020-09-04', 109, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
('dapibus nulla suscipit ligula in', '2020-09-19', 153, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),
('dictumst morbi vestibulum velit id', '2020-09-21', 23, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
('pede justo lacinia', '2020-10-10', 83, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
('magna bibendum imperdiet nullam', '2020-10-16', 118, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
('in tempus sit amet', '2020-11-15', 148, 'Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
('ante vivamus tortor duis', '2020-12-02', 69, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
('natoque penatibus et magnis', '2020-12-17', 153, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
('venenatis tristique fusce congue', '2020-12-22', 188, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),
('eu tincidunt in', '2020-12-23', 123, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
('diam id ornare imperdiet', '2020-12-28', 60, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
('pede morbi porttitor lorem', '2021-01-02', 112, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
('elementum ligula vehicula consequat morbi', '2021-01-27', 188, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.'),
('potenti cras in', '2021-02-05', 52, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
('id nisl venenatis', '2021-02-05', 170, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.'),
('eleifend quam a odio', '2021-02-14', 168, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'),
('semper est quam', '2021-02-14', 170, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
('enim leo rhoncus sed vestibulum', '2021-02-20', 140, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.'),
('scelerisque mauris sit', '2021-02-24', 4, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
('dapibus nulla suscipit ligula', '2021-03-17', 20, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),
('hac habitasse platea dictumst aliquam', '2021-03-19', 120, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
('erat quisque erat', '2021-04-15', 31, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'),
('convallis duis consequat dui nec', '2021-04-15', 40, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
('suspendisse potenti cras in', '2021-04-27', 159, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
('velit id pretium iaculis', '2021-04-27', 162, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
('ultrices mattis odio donec', '2021-05-10', 98, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
('eros suspendisse accumsan tortor', '2021-05-10', 191, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
('leo pellentesque ultrices mattis', '2021-05-13', 163, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
('vel augue vestibulum rutrum', '2021-05-13', 190, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.'),
('maecenas tristique est et tempus', '2021-05-20', 28, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
('in purus eu', '2021-05-22', 40, 'Fusce consequat. Nulla nisl. Nunc nisl.'),
('neque aenean auctor gravida sem', '2021-05-24', 34, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.'),
('vestibulum vestibulum ante ipsum', '2021-06-18', 95, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
('ligula suspendisse ornare consequat', '2021-06-18', 195, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
('volutpat erat quisque erat', '2021-07-01', 97, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
('amet sapien dignissim vestibulum', '2021-07-01', 132, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
('sagittis nam congue risus', '2021-07-09', 148, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
('faucibus accumsan odio curabitur', '2021-07-18', 196, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
('suspendisse accumsan tortor quis', '2021-08-04', 103, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
('suspendisse potenti in eleifend', '2021-08-28', 148, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
('scelerisque mauris sit amet eros', '2021-10-03', 72, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
('integer ac neque duis bibendum', '2021-11-17', 199, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
('non velit donec', '2021-12-08', 56, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.'),
('eros elementum pellentesque quisque', '2021-12-25', 75, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),
('ut nunc vestibulum', '2022-01-04', 40, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
('et magnis dis parturient', '2022-01-25', 143, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.'),
('imperdiet sapien urna', '2022-02-07', 178, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.'),
('vestibulum aliquet ultrices erat', '2022-03-30', 70, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
('nulla justo aliquam quis turpis', '2022-05-06', 140, 'In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
('orci nullam molestie nibh', '2022-05-16', 48, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
('sit amet nulla quisque arcu', '2022-05-16', 66, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.'),
('quis libero nullam sit', '2022-10-30', 196, 'In congue. Etiam justo. Etiam pretium iaculis justo.');

--
-- Triggers `deliverable`
--
DELIMITER $$
CREATE TRIGGER `deliverable_ins` BEFORE INSERT ON `deliverable` FOR EACH ROW BEGIN
  declare rowcount int;
  /* query for deliverable_date check */
  select count(1)
  into rowcount
  from project
  where project_id = new.project_id and
        new.deliverable_date >= start_date and
        new.deliverable_date <= date_end;
  if (rowcount = 0)
  then
    signal sqlstate '45000' set message_text = 'Deliverable dtae must be between start date and end date of project';
  end if;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deliverable_upd` BEFORE UPDATE ON `deliverable` FOR EACH ROW BEGIN
  declare rowcount int;
  /* query for deliverable_date check */
  select count(1)
  into rowcount
  from project
  where project_id = new.project_id and
        new.deliverable_date >= start_date and
        new.deliverable_date <= date_end;
  if (rowcount = 0)
  then
    signal sqlstate '45000' set message_text = 'Deliverable dtae must be between start date and end date of project';
  end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `employer_id` int(10) UNSIGNED NOT NULL,
  `employer_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`employer_id`, `employer_name`) VALUES
(2, 'Alfi Wavell'),
(27, 'Anya Henrionot'),
(30, 'Ariella Kolodziej'),
(23, 'Arlyne Igoe'),
(13, 'Barty Grayland'),
(19, 'Caroline Hillaby'),
(22, 'Caterina Ashborn'),
(6, 'Charmion Breznovic'),
(8, 'Danielle Scamaden'),
(21, 'Gerhardt Petche'),
(18, 'Giffard Crolly'),
(10, 'Gilberte Belsher'),
(17, 'Giulietta Vasilevich'),
(4, 'Hervey Sweedland'),
(5, 'Ibby Knipe'),
(28, 'Jodee Feitosa'),
(14, 'Karlotta Gilmour'),
(11, 'Karole Swale'),
(9, 'Klaus Sidden'),
(20, 'Leah Rosenfeld'),
(24, 'Lemar Raselles'),
(26, 'Nanete Stolz'),
(3, 'Roxanna Pocklington'),
(16, 'Rudie Bickell'),
(29, 'Sybille Chatin'),
(12, 'Tamas Ivanisov'),
(25, 'Terrijo Middler'),
(1, 'Vassily Raven'),
(7, 'Vernice Castledine'),
(15, 'Waverly Playhill');

-- --------------------------------------------------------

--
-- Table structure for table `employer_manages_project`
--

CREATE TABLE `employer_manages_project` (
  `employer_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employer_manages_project`
--

INSERT INTO `employer_manages_project` (`employer_id`, `project_id`) VALUES
(13, 1),
(12, 2),
(11, 3),
(10, 4),
(9, 5),
(8, 6),
(7, 7),
(6, 8),
(5, 9),
(4, 10),
(3, 11),
(2, 12),
(1, 13),
(30, 14),
(29, 15),
(28, 16),
(27, 19),
(26, 20),
(25, 21),
(24, 22),
(23, 23),
(22, 24),
(21, 25),
(20, 26),
(19, 27),
(18, 28),
(17, 30),
(16, 31),
(15, 32),
(14, 33),
(13, 34),
(12, 35),
(11, 36),
(10, 37),
(9, 38),
(8, 39),
(7, 40),
(6, 41),
(5, 42),
(4, 43),
(3, 44),
(2, 45),
(1, 46),
(30, 47),
(29, 48),
(28, 49),
(27, 50),
(26, 51),
(25, 52),
(24, 53),
(23, 54),
(22, 55),
(21, 56),
(20, 57),
(19, 58),
(18, 59),
(17, 60),
(16, 61),
(15, 62),
(14, 63),
(13, 64),
(12, 65),
(11, 66),
(10, 67),
(9, 68),
(8, 69),
(7, 70),
(6, 71),
(5, 72),
(4, 73),
(3, 74),
(2, 75),
(1, 76),
(30, 77),
(29, 78),
(28, 79),
(27, 80),
(26, 81),
(25, 82),
(24, 83),
(23, 84),
(22, 85),
(21, 86),
(20, 87),
(19, 88),
(18, 89),
(17, 90),
(16, 91),
(15, 92),
(14, 93),
(13, 94),
(12, 95),
(11, 96),
(10, 97),
(9, 98),
(8, 99),
(7, 100),
(6, 101),
(5, 102),
(4, 103),
(3, 104),
(2, 105),
(1, 106),
(30, 107),
(29, 108),
(28, 109),
(27, 110),
(26, 111),
(25, 112),
(24, 113),
(23, 114),
(22, 115),
(21, 116),
(20, 117),
(19, 118),
(18, 119),
(17, 120),
(16, 121),
(15, 122),
(14, 123),
(13, 124),
(12, 125),
(11, 126),
(10, 127),
(9, 128),
(8, 129),
(7, 130),
(6, 131),
(5, 132),
(4, 133),
(3, 134),
(2, 135),
(1, 136),
(30, 137),
(29, 138),
(28, 140),
(27, 141),
(26, 142),
(25, 143),
(24, 144),
(23, 146),
(22, 147),
(21, 148),
(20, 149),
(19, 150),
(18, 151),
(17, 153),
(16, 154),
(15, 155),
(14, 156),
(13, 157),
(12, 158),
(11, 159),
(10, 160),
(9, 161),
(8, 162),
(7, 163),
(6, 164),
(5, 165),
(4, 166),
(3, 167),
(2, 168),
(1, 169),
(30, 170),
(29, 171),
(28, 172),
(27, 173),
(26, 174),
(25, 175),
(24, 176),
(23, 177),
(22, 178),
(21, 179),
(20, 180),
(19, 181),
(18, 182),
(17, 183),
(16, 185),
(15, 186),
(14, 187),
(13, 188),
(12, 189),
(11, 190),
(10, 191),
(9, 192),
(8, 193),
(7, 194),
(6, 195),
(5, 196),
(4, 197),
(3, 198),
(2, 199),
(1, 200);

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `org_id` char(20) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_street` varchar(255) NOT NULL,
  `org_number` varchar(10) NOT NULL,
  `org_postal_code` int(10) UNSIGNED NOT NULL,
  `org_city` varchar(255) NOT NULL,
  `category` varchar(30) NOT NULL,
  `estimate_budget` float DEFAULT NULL,
  `private_budget` float DEFAULT NULL,
  `private_capital` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`org_id`, `org_name`, `org_street`, `org_number`, `org_postal_code`, `org_city`, `category`, `estimate_budget`, `private_budget`, `private_capital`) VALUES
('ABATZ', 'Abatz', 'Sunbrook', '245', 17278, 'Salt Lake City', 'RESEARCH CENTER', 694563, 929765, 0),
('AGIVU', 'Agivu', 'Columbus', '2', 17287, 'Florencia', 'RESEARCH CENTER', 429415, 738044, 0),
('BABBLEOPIA', 'Babbleopia', 'Meadow Vale', '462', 17275, 'Getulio', 'RESEARCH CENTER', 496825, 286161, 0),
('BABBLESET', 'Babbleset', 'Fair Oaks', '496', 17247, 'Qishui', 'UNIVERSITY', 929490, 0, 0),
('BABBLESTORM', 'Babblestorm', 'Jackson', '291', 17318, 'Hovtamej', 'COMPANY', 0, 0, 381726),
('BROWSEBLAB', 'Browseblab', 'Duke', '00399', 17323, 'Jaboatão', 'RESEARCH CENTER', 664003, 942355, 0),
('BROWSEBUG', 'Browsebug', 'Browning', '69', 17261, 'Pilar do Sul', 'COMPANY', 0, 0, 277490),
('BUBBLEBOX', 'Bubblebox', 'Dunning', '0535', 17317, 'Lisieux', 'RESEARCH CENTER', 393153, 669544, 0),
('CENTIDEL', 'Centidel', 'Maple Wood', '98', 17324, 'La Garenne-Colombes', 'COMPANY', 0, 0, 914149),
('CENTIMIA', 'Centimia', 'Grover', '548', 17264, 'Turka', 'COMPANY', 0, 0, 920834),
('CHATTERPOINT', 'Chatterpoint', 'Maywood', '060', 17316, 'Kole', 'UNIVERSITY', 783353, 0, 0),
('COGIBOX', 'Cogibox', 'Miller', '298', 17311, 'Bunigeulis', 'RESEARCH CENTER', 985651, 812765, 0),
('COGIDOO', 'Cogidoo', 'Talmadge', '540', 17266, 'Fubei', 'RESEARCH CENTER', 409994, 766827, 0),
('DEVSHARE', 'Devshare', 'Starling', '00156', 17286, 'Balbalan', 'UNIVERSITY', 678861, 0, 0),
('DIGITUBE', 'Digitube', 'Scofield', '617', 17251, 'København', 'RESEARCH CENTER', 612089, 293441, 0),
('DIVANOODLE', 'Divanoodle', 'Green', '993', 17236, 'Alcoy', 'RESEARCH CENTER', 613111, 507522, 0),
('EABOX', 'Eabox', 'Cambridge', '063', 17322, 'Ocoyo', 'UNIVERSITY', 840030, 0, 0),
('EIRE', 'Eire', 'Westridge', '337', 17310, 'Baiyang', 'UNIVERSITY', 951954, 0, 0),
('FADEO', 'Fadeo', 'Anderson', '8', 17330, 'Chillán', 'COMPANY', 0, 0, 454571),
('FANOODLE', 'Fanoodle', 'Loomis', '7', 17301, 'Bamako', 'UNIVERSITY', 301921, 0, 0),
('FIVECLUB', 'Fiveclub', 'Cascade', '19', 17291, 'Itaquyry', 'COMPANY', 0, 0, 195429),
('FIVESPAN', 'Fivespan', 'Russell', '3', 17300, 'Tatarbunary', 'COMPANY', 0, 0, 299684),
('FLASHDOG', 'Flashdog', 'Esker', '2', 17250, 'Saint-Pierre', 'UNIVERSITY', 544293, 0, 0),
('FLASHSPAN', 'Flashspan', 'Surrey', '34800', 17273, 'La Soledad', 'COMPANY', 0, 0, 354956),
('GEVEE', 'Gevee', 'Esker', '4', 17293, 'Skrunda', 'RESEARCH CENTER', 709961, 672735, 0),
('GIGAZOOM', 'Gigazoom', 'Pine View', '68', 17281, 'Aguisan', 'RESEARCH CENTER', 958850, 108931, 0),
('INNOJAM', 'Innojam', 'Manufacturers', '25925', 17306, 'Nowshera', 'COMPANY', 0, 0, 376628),
('JAMIA', 'Jamia', 'Monterey', '95575', 17326, 'Jomda', 'RESEARCH CENTER', 561410, 421740, 0),
('JATRI', 'Jatri', 'Helena', '5180', 17298, 'Nailung', 'UNIVERSITY', 149066, 0, 0),
('JAXNATION', 'Jaxnation', 'Clarendon', '3613', 17325, 'Barrancas', 'UNIVERSITY', 536583, 0, 0),
('KAZIO', 'Kazio', '6th', '80670', 17249, 'Bích Động', 'COMPANY', 0, 0, 602499),
('KAZU', 'Kazu', 'Towne', '2', 17274, 'Sadkowice', 'UNIVERSITY', 255068, 0, 0),
('KWIMBEE', 'Kwimbee', 'Vernon', '9', 17313, 'Ciheras', 'UNIVERSITY', 744723, 0, 0),
('LEENTI', 'Leenti', 'Sycamore', '08', 17255, 'Sabugal', 'COMPANY', 0, 0, 818582),
('LEEXO', 'Leexo', 'Sachtjen', '5', 17263, 'El Paso', 'RESEARCH CENTER', 634078, 874615, 0),
('LIVETUBE', 'Livetube', 'Fremont', '7725', 17308, 'Wilwerwiltz', 'RESEARCH CENTER', 921616, 598881, 0),
('LIVEZ', 'LiveZ', 'Texas', '3', 17321, 'Portão', 'COMPANY', 0, 0, 926348),
('MEEJO', 'Meejo', 'Autumn Leaf', '85', 17334, 'Yandun', 'UNIVERSITY', 532722, 0, 0),
('MEETZ', 'Meetz', 'Eggendart', '988', 17331, 'Zangbi', 'UNIVERSITY', 717923, 0, 0),
('MYBUZZ', 'Mybuzz', 'Grayhawk', '12762', 17258, 'Panyambungan', 'COMPANY', 0, 0, 283503),
('MYDO', 'Mydo', 'Delaware', '7834', 17303, 'Futu', 'COMPANY', 0, 0, 356184),
('MYNTE', 'Mynte', 'Glacier Hill', '176', 17268, 'Tamahú', 'UNIVERSITY', 235567, 0, 0),
('MYWORKS', 'Myworks', 'Monument', '142', 17244, 'Ponta Delgada', 'UNIVERSITY', 852172, 0, 0),
('OYOPE', 'Oyope', 'Prairie Rose', '7225', 17243, 'Soho', 'COMPANY', 0, 0, 850654),
('OYOYO', 'Oyoyo', 'High Crossing', '42', 17289, 'Dauriya', 'UNIVERSITY', 188436, 0, 0),
('PIXOPE', 'Pixope', '7th', '976', 17240, 'La Esperanza', 'COMPANY', 0, 0, 656456),
('PODCAT', 'Podcat', 'Washington', '34245', 17304, 'Jedlińsk', 'UNIVERSITY', 615853, 0, 0),
('QUAXO', 'Quaxo', 'Maryland', '93528', 17256, 'Al Wajh', 'UNIVERSITY', 659677, 0, 0),
('QUIMBA', 'Quimba', 'Carioca', '95', 17237, 'Wendengying', 'COMPANY', 0, 0, 758234),
('QUIRE', 'Quire', 'Merrick', '02558', 17284, 'Malvern', 'RESEARCH CENTER', 410407, 323778, 0),
('REALBLAB', 'Realblab', 'Leroy', '70', 17248, 'Thị Trấn Phú Mỹ', 'RESEARCH CENTER', 988059, 915089, 0),
('REALBUZZ', 'Realbuzz', 'Thackeray', '75961', 17296, 'Liangkou', 'RESEARCH CENTER', 248993, 969660, 0),
('REALFIRE', 'Realfire', 'Dawn', '4', 17280, 'Sagbayan', 'UNIVERSITY', 895467, 0, 0),
('RHYBOX', 'Rhybox', 'Kings', '70', 17315, 'Domaradz', 'COMPANY', 0, 0, 696692),
('RHYNYX', 'Rhynyx', '6th', '87', 17327, 'Chenqiao', 'COMPANY', 0, 0, 987748),
('RIFFWIRE', 'Riffwire', 'Northview', '770', 17294, 'Helsingborg', 'COMPANY', 0, 0, 977634),
('ROODEL', 'Roodel', 'Meadow Valley', '34', 17299, 'Prostřední Bečva', 'RESEARCH CENTER', 518510, 231110, 0),
('SKIBA', 'Skiba', 'Randy', '08825', 17283, 'Bocana de Paiwas', 'UNIVERSITY', 345211, 0, 0),
('SKIPFIRE', 'Skipfire', 'Cody', '916', 17238, 'Bagalangit', 'UNIVERSITY', 312869, 0, 0),
('SKIPPAD', 'Skippad', 'Northview', '17', 17319, 'Kysyl-Syr', 'UNIVERSITY', 641551, 0, 0),
('SKIPTUBE', 'Skiptube', 'Troy', '8096', 17235, 'Yongshan', 'UNIVERSITY', 316334, 0, 0),
('TALANE', 'Talane', 'Thompson', '947', 17265, 'Utan', 'UNIVERSITY', 191805, 0, 0),
('TAMBEE', 'Tambee', 'Barby', '21697', 17328, 'Kantharalak', 'UNIVERSITY', 143560, 0, 0),
('TAVU', 'Tavu', 'Dahle', '78274', 17277, 'Karanglo', 'UNIVERSITY', 842832, 0, 0),
('THOUGHTSPHERE', 'Thoughtsphere', 'Heffernan', '75', 17320, 'Fornelos', 'RESEARCH CENTER', 583352, 521228, 0),
('THOUGHTSTORM', 'Thoughtstorm', 'Stoughton', '8', 17302, 'Kanoni', 'RESEARCH CENTER', 378987, 368367, 0),
('THOUGHTWORKS', 'Thoughtworks', 'Cascade', '0387', 17239, 'Pagangan', 'RESEARCH CENTER', 334612, 598611, 0),
('TOPDRIVE', 'Topdrive', 'Walton', '3', 17272, 'Sabana Iglesia', 'RESEARCH CENTER', 904373, 531775, 0),
('TOPICLOUNGE', 'Topiclounge', 'Lotheville', '9', 17279, 'Pingding', 'COMPANY', 0, 0, 836208),
('TRILIA', 'Trilia', 'Ruskin', '92351', 17285, 'Bol', 'COMPANY', 0, 0, 684276),
('TRILITH', 'Trilith', 'Duke', '0345', 17290, 'Kuaro', 'RESEARCH CENTER', 382473, 982890, 0),
('TRUDOO', 'Trudoo', 'Sullivan', '4', 17292, 'Duitama', 'UNIVERSITY', 646009, 0, 0),
('TWIMBO', 'Twimbo', 'Emmet', '5070', 17333, 'Princeville', 'COMPANY', 0, 0, 511598),
('TWIMM', 'Twimm', 'Monterey', '7146', 17269, 'Paobokol', 'RESEARCH CENTER', 247337, 110071, 0),
('VIDOO', 'Vidoo', 'Delaware', '404', 17260, 'El Mirador', 'RESEARCH CENTER', 907596, 484448, 0),
('VINTE', 'Vinte', 'Vahlen', '8301', 17305, 'Paôy Pêt', 'RESEARCH CENTER', 587601, 360415, 0),
('VIVA', 'Viva', 'Heath', '8', 17253, 'Karangkeng', 'UNIVERSITY', 955880, 0, 0),
('VOOMM', 'Voomm', 'Meadow Vale', '8000', 17246, 'Taoyang', 'COMPANY', 0, 0, 307322),
('VOONIX', 'Voonix', 'Union', '680', 17312, 'Hampton', 'COMPANY', 0, 0, 792105),
('WIKIZZ', 'Wikizz', 'Vidon', '942', 17307, 'Si Wilai', 'UNIVERSITY', 636602, 0, 0),
('WORDPEDIA', 'Wordpedia', 'Monument', '0862', 17242, 'Jixian', 'RESEARCH CENTER', 987740, 252547, 0),
('WORDTUNE', 'Wordtune', 'Holy Cross', '61266', 17271, 'Perpignan', 'UNIVERSITY', 585304, 0, 0);

--
-- Triggers `organisation`
--
DELIMITER $$
CREATE TRIGGER `organisation_ins` BEFORE INSERT ON `organisation` FOR EACH ROW BEGIN
  if (
        (new.category = 'UNIVERSITY' and not((new.private_budget is null or new.private_budget = 0) and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'RESEARCH CENTER' and not(new.private_budget is not null and new.private_budget > 0 and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'COMPANY' and not((new.private_budget is null or new.private_budget = 0) and new.private_capital is not null and new.private_capital > 0 and (new.estimate_budget is null or new.estimate_budget = 0)))
     )
  then
    signal sqlstate '45000' set message_text = 'Type(s) of budget do not match the category';
  end if;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `organisation_upd` BEFORE UPDATE ON `organisation` FOR EACH ROW BEGIN
  if (
        (new.category = 'UNIVERSITY' and not((new.private_budget is null or new.private_budget = 0) and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'RESEARCH CENTER' and not(new.private_budget is not null and new.private_budget > 0 and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'COMPANY' and not((new.private_budget is null or new.private_budget = 0) and new.private_capital is not null and new.private_capital > 0 and (new.estimate_budget is null or new.estimate_budget = 0)))
     )
  then
    signal sqlstate '45000' set message_text = 'Type(s) of budget do not match the category';
  end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `program_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `program_name`) VALUES
(1, 'PROGRAM-A'),
(26, 'PROGRAM-A1'),
(2, 'PROGRAM-B'),
(27, 'PROGRAM-B1'),
(3, 'PROGRAM-C'),
(28, 'PROGRAM-C1'),
(4, 'PROGRAM-D'),
(29, 'PROGRAM-D1'),
(5, 'PROGRAM-E'),
(30, 'PROGRAM-E1'),
(6, 'PROGRAM-F'),
(7, 'PROGRAM-G'),
(8, 'PROGRAM-H'),
(9, 'PROGRAM-I'),
(10, 'PROGRAM-K'),
(11, 'PROGRAM-L'),
(12, 'PROGRAM-M'),
(13, 'PROGRAM-N'),
(14, 'PROGRAM-O'),
(15, 'PROGRAM-P'),
(16, 'PROGRAM-Q'),
(17, 'PROGRAM-R'),
(18, 'PROGRAM-S'),
(19, 'PROGRAM-T'),
(20, 'PROGRAM-U'),
(21, 'PROGRAM-V'),
(22, 'PROGRAM-W'),
(23, 'PROGRAM-X'),
(24, 'PROGRAM-Y'),
(25, 'PROGRAM-Z');

-- --------------------------------------------------------

--
-- Table structure for table `program_belongs_to_admin`
--

CREATE TABLE `program_belongs_to_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_belongs_to_admin`
--

INSERT INTO `program_belongs_to_admin` (`admin_id`, `program_id`) VALUES
(7, 1),
(1, 2),
(8, 3),
(10, 4),
(2, 5),
(9, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 10),
(6, 11),
(1, 12),
(8, 13),
(10, 14),
(2, 15),
(9, 16),
(3, 17),
(4, 18),
(5, 19),
(6, 20),
(7, 21),
(1, 22),
(7, 23),
(9, 24),
(1, 25),
(9, 26),
(3, 27),
(4, 28),
(6, 29),
(8, 30);

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `budget` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `date_end` date NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `org_id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`project_id`, `project_title`, `description`, `budget`, `start_date`, `date_end`, `duration`, `org_id`) VALUES
(1, 'libero quis orci nullam', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 335464, '2020-08-06', '2021-08-06', 1, 'SKIPTUBE'),
(2, 'porttitor lacus at turpis donec', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 609834, '2017-06-27', '2019-06-27', 2, 'DIVANOODLE'),
(3, 'purus eu magna', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 583371, '2018-04-09', '2021-04-09', 4, 'QUIMBA'),
(4, 'pede venenatis non', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 813521, '2019-03-09', '2022-11-09', 4, 'SKIPFIRE'),
(5, 'proin at turpis a', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 294959, '2020-04-06', '2021-04-06', 1, 'THOUGHTWORKS'),
(6, 'vestibulum rutrum rutrum neque', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 611942, '2020-02-01', '2022-02-01', 3, 'PIXOPE'),
(7, 'interdum venenatis turpis enim', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 748892, '2021-09-02', '2024-09-02', 4, 'WORDPEDIA'),
(8, 'posuere cubilia curae', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 433710, '2021-04-12', '2024-12-12', 4, 'OYOPE'),
(9, 'ac nulla sed vel enim', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 115863, '2020-08-27', '2021-08-27', 1, 'MYWORKS'),
(10, 'ac enim in tempor turpis', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 609129, '2018-06-10', '2020-06-10', 3, 'VOOMM'),
(11, 'platea dictumst maecenas', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 298262, '2017-08-20', '2020-08-20', 4, 'BABBLESET'),
(12, 'gravida nisi at nibh', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 275458, '2021-08-30', '2025-04-30', 4, 'REALBLAB'),
(13, 'duis faucibus accumsan odio', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 246036, '2018-09-15', '2019-09-15', 1, 'KAZIO'),
(14, 'pretium iaculis justo', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 377763, '2020-08-23', '2022-08-23', 2, 'FLASHDOG'),
(15, 'tempus semper est', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 237696, '2018-02-24', '2021-02-24', 4, 'DIGITUBE'),
(16, 'luctus cum sociis natoque', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 251747, '2020-12-31', '2024-08-31', 4, 'VIVA'),
(19, 'vivamus vestibulum sagittis sapien cum', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 855275, '2021-09-11', '2024-09-11', 4, 'LEENTI'),
(20, 'imperdiet nullam orci pede', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 104903, '2019-03-06', '2022-11-06', 4, 'QUAXO'),
(21, 'praesent lectus vestibulum quam sapien', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 649532, '2018-01-18', '2019-01-18', 1, 'MYBUZZ'),
(22, 'consectetuer eget rutrum at', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 624607, '2018-07-03', '2020-07-03', 3, 'VIDOO'),
(23, 'erat quisque erat eros', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 135389, '2020-07-10', '2023-07-10', 3, 'BROWSEBUG'),
(24, 'donec quis orci eget', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 996356, '2019-09-05', '2023-05-05', 4, 'LEEXO'),
(25, 'hendrerit at vulputate vitae nisl', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 156791, '2017-06-25', '2018-06-25', 1, 'CENTIMIA'),
(26, 'ipsum integer a', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 438337, '2019-02-06', '2021-02-06', 3, 'TALANE'),
(27, 'ultrices libero non mattis pulvinar', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 365486, '2021-01-09', '2024-01-09', 3, 'COGIDOO'),
(28, 'ac nibh fusce lacus', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 311409, '2017-11-28', '2021-07-28', 4, 'MYNTE'),
(30, 'interdum eu tincidunt in', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 263635, '2019-04-16', '2021-04-16', 3, 'TWIMM'),
(31, 'venenatis non sodales sed', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 495467, '2019-10-15', '2022-10-15', 4, 'WORDTUNE'),
(32, 'potenti cras in purus', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 442451, '2018-09-10', '2022-05-10', 4, 'TOPDRIVE'),
(33, 'ultrices enim lorem ipsum', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 513931, '2019-05-31', '2020-05-31', 2, 'FLASHSPAN'),
(34, 'nulla facilisi cras non velit', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 790817, '2019-08-11', '2021-08-11', 3, 'SKIPTUBE'),
(35, 'sed nisl nunc rhoncus', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 552766, '2020-08-19', '2023-08-19', 3, 'DIVANOODLE'),
(36, 'duis bibendum felis sed', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 533930, '2020-08-17', '2024-04-17', 4, 'QUIMBA'),
(37, 'parturient montes nascetur', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 319939, '2019-09-07', '2020-09-07', 2, 'SKIPFIRE'),
(38, 'turpis sed ante vivamus', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 565893, '2019-04-16', '2021-04-16', 3, 'THOUGHTWORKS'),
(39, 'morbi sem mauris laoreet ut', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 446616, '2019-10-12', '2022-10-12', 4, 'PIXOPE'),
(40, 'semper sapien a libero nam', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 632882, '2020-02-12', '2023-10-12', 4, 'WORDPEDIA'),
(41, 'dui maecenas tristique', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 674351, '2018-10-09', '2019-10-09', 1, 'OYOPE'),
(42, 'velit eu est', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 496207, '2018-01-30', '2020-01-30', 2, 'MYWORKS'),
(43, 'mauris ullamcorper purus sit', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 815212, '2021-05-01', '2024-05-01', 4, 'VOOMM'),
(44, 'non ligula pellentesque', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 111044, '2020-05-12', '2024-01-12', 4, 'BABBLESET'),
(45, 'ac est lacinia nisi venenatis', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 921751, '2022-02-10', '2023-02-10', 1, 'REALBLAB'),
(46, 'mattis odio donec', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 937731, '2019-09-23', '2021-09-23', 3, 'KAZIO'),
(47, 'nulla sed vel', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 439877, '2018-11-13', '2021-11-13', 4, 'FLASHDOG'),
(48, 'at lorem integer tincidunt ante', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 916782, '2020-06-15', '2024-02-15', 4, 'DIGITUBE'),
(49, 'vestibulum ac est', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 903210, '2019-09-25', '2020-09-25', 2, 'VIVA'),
(50, 'primis in faucibus', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 262378, '2018-06-13', '2020-06-13', 3, 'LEENTI'),
(51, 'id mauris vulputate elementum', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 502272, '2020-04-29', '2023-04-29', 3, 'QUAXO'),
(52, 'ante vivamus tortor', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 329284, '2019-07-05', '2023-03-05', 4, 'MYBUZZ'),
(53, 'ipsum praesent blandit', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 203487, '2020-08-11', '2021-08-11', 1, 'VIDOO'),
(54, 'cras non velit', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 326003, '2017-11-05', '2019-11-05', 2, 'BROWSEBUG'),
(55, 'mus vivamus vestibulum sagittis', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 801844, '2022-01-18', '2025-01-18', 4, 'LEEXO'),
(56, 'parturient montes nascetur ridiculus mus', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 627103, '2021-08-20', '2025-04-20', 4, 'CENTIMIA'),
(57, 'sed magna at nunc commodo', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 913291, '2018-02-01', '2019-02-01', 1, 'TALANE'),
(58, 'ut mauris eget massa tempor', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 555349, '2021-09-10', '2023-09-10', 2, 'COGIDOO'),
(59, 'odio consequat varius integer ac', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 980046, '2018-04-04', '2021-04-04', 4, 'MYNTE'),
(60, 'porta volutpat erat quisque', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 232998, '2020-10-22', '2024-06-22', 4, 'TWIMM'),
(61, 'donec dapibus duis at', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 723913, '2018-12-14', '2019-12-14', 1, 'WORDTUNE'),
(62, 'ut suscipit a feugiat et', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 830513, '2020-03-16', '2022-03-16', 2, 'TOPDRIVE'),
(63, 'vel sem sed sagittis', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 925686, '2021-11-10', '2024-11-10', 4, 'FLASHSPAN'),
(64, 'enim blandit mi', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 211617, '2021-12-18', '2025-08-18', 4, 'SKIPTUBE'),
(65, 'condimentum id luctus nec molestie', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 777934, '2019-10-02', '2020-10-02', 2, 'DIVANOODLE'),
(66, 'nulla tellus in', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 560220, '2021-08-20', '2023-08-20', 2, 'QUIMBA'),
(67, 'in felis eu', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 631904, '2018-11-28', '2021-11-28', 4, 'SKIPFIRE'),
(68, 'in faucibus orci luctus', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 153785, '2021-11-02', '2025-07-02', 4, 'THOUGHTWORKS'),
(69, 'dui nec nisi', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 161317, '2020-08-27', '2021-08-27', 1, 'PIXOPE'),
(70, 'sit amet nulla quisque', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 124889, '2021-04-21', '2023-04-21', 2, 'WORDPEDIA'),
(71, 'vestibulum vestibulum ante ipsum primis', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 471520, '2021-03-23', '2024-03-23', 4, 'OYOPE'),
(72, 'turpis a pede', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 472282, '2021-07-08', '2025-03-08', 4, 'MYWORKS'),
(73, 'vestibulum sagittis sapien cum', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 545364, '2021-12-19', '2022-12-19', 1, 'VOOMM'),
(74, 'euismod scelerisque quam turpis', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 341580, '2018-07-20', '2020-07-20', 3, 'BABBLESET'),
(75, 'nunc proin at', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 232812, '2019-01-11', '2022-01-11', 4, 'REALBLAB'),
(76, 'tempus vivamus in', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 136457, '2018-09-13', '2022-05-13', 4, 'KAZIO'),
(77, 'odio donec vitae nisi', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 506810, '2018-06-08', '2019-06-08', 1, 'FLASHDOG'),
(78, 'ipsum primis in', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 518478, '2017-11-08', '2019-11-08', 2, 'DIGITUBE'),
(79, 'pellentesque eget nunc donec', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 640446, '2020-04-22', '2023-04-22', 3, 'VIVA'),
(80, 'morbi non quam', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 773065, '2019-04-23', '2022-12-23', 4, 'LEENTI'),
(81, 'nec molestie sed justo pellentesque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 350587, '2019-03-27', '2020-03-27', 2, 'QUAXO'),
(82, 'varius ut blandit non interdum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 388208, '2019-11-27', '2021-11-27', 3, 'MYBUZZ'),
(83, 'dis parturient montes', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 887007, '2018-04-20', '2021-04-20', 4, 'VIDOO'),
(84, 'metus sapien ut', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 579917, '2018-08-05', '2022-04-05', 4, 'BROWSEBUG'),
(85, 'lectus vestibulum quam sapien varius', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 319977, '2021-01-03', '2022-01-03', 1, 'LEEXO'),
(86, 'id consequat in', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 387611, '2017-11-30', '2019-11-30', 2, 'CENTIMIA'),
(87, 'enim in tempor', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 845513, '2020-03-06', '2023-03-06', 3, 'TALANE'),
(88, 'odio porttitor id consequat', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 774675, '2022-03-20', '2025-11-20', 4, 'COGIDOO'),
(89, 'nec nisi volutpat eleifend donec', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 361787, '2019-01-11', '2020-01-11', 1, 'MYNTE'),
(90, 'erat tortor sollicitudin mi sit', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 470748, '2017-11-30', '2019-11-30', 2, 'TWIMM'),
(91, 'ante ipsum primis in', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 969070, '2021-01-03', '2024-01-03', 3, 'WORDTUNE'),
(92, 'a suscipit nulla elit', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 990919, '2020-04-10', '2023-12-10', 4, 'TOPDRIVE'),
(93, 'nullam molestie nibh in', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 885058, '2020-10-01', '2021-10-01', 1, 'FLASHSPAN'),
(94, 'elementum nullam varius', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 366344, '2021-08-27', '2023-08-27', 2, 'SKIPTUBE'),
(95, 'consectetuer adipiscing elit proin', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 914892, '2020-09-28', '2023-09-28', 3, 'DIVANOODLE'),
(96, 'ultrices aliquet maecenas', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 931123, '2020-08-11', '2024-04-11', 4, 'QUIMBA'),
(97, 'eu felis fusce', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 719098, '2020-07-27', '2021-07-27', 1, 'SKIPFIRE'),
(98, 'nunc vestibulum ante ipsum', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 269726, '2020-10-10', '2022-10-10', 2, 'THOUGHTWORKS'),
(99, 'pellentesque ultrices mattis odio', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 371061, '2019-12-15', '2022-12-15', 4, 'PIXOPE'),
(100, 'diam in magna bibendum', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 258808, '2021-09-25', '2025-05-25', 4, 'WORDPEDIA'),
(101, 'mus vivamus vestibulum', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 514104, '2021-07-27', '2022-07-27', 1, 'OYOPE'),
(102, 'dui maecenas tristique est et', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 307040, '2017-11-09', '2019-11-09', 2, 'MYWORKS'),
(103, 'lorem vitae mattis', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 180730, '2019-07-21', '2022-07-21', 4, 'VOOMM'),
(104, 'vel lectus in', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 555080, '2017-06-14', '2021-02-14', 4, 'BABBLESET'),
(105, 'at nunc commodo placerat praesent', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 723645, '2017-08-31', '2018-08-31', 1, 'REALBLAB'),
(106, 'at lorem integer tincidunt', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 618425, '2019-05-26', '2021-05-26', 3, 'KAZIO'),
(107, 'est phasellus sit amet erat', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 243740, '2019-04-05', '2022-04-05', 4, 'FLASHDOG'),
(108, 'malesuada in imperdiet et', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 529670, '2019-04-02', '2022-12-02', 4, 'DIGITUBE'),
(109, 'mi in porttitor pede justo', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 282542, '2020-07-23', '2021-07-23', 1, 'VIVA'),
(110, 'nec sem duis aliquam convallis', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 718378, '2018-04-10', '2020-04-10', 3, 'LEENTI'),
(111, 'ut suscipit a feugiat', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 110873, '2018-02-07', '2021-02-07', 4, 'QUAXO'),
(112, 'morbi vestibulum velit', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 509206, '2019-09-13', '2023-05-13', 4, 'MYBUZZ'),
(113, 'pede lobortis ligula sit amet', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 720646, '2018-09-11', '2019-09-11', 1, 'VIDOO'),
(114, 'iaculis justo in hac', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 339856, '2018-09-13', '2020-09-13', 3, 'BROWSEBUG'),
(115, 'tellus nulla ut erat', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 782555, '2021-05-31', '2024-05-31', 4, 'LEEXO'),
(116, 'curae donec pharetra', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 928865, '2021-11-11', '2025-07-11', 4, 'CENTIMIA'),
(117, 'elit ac nulla sed vel', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 226226, '2018-05-12', '2019-05-12', 1, 'TALANE'),
(118, 'tempus semper est quam', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 100089, '2020-06-26', '2022-06-26', 2, 'COGIDOO'),
(119, 'sapien varius ut blandit', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 678450, '2020-06-23', '2023-06-23', 3, 'MYNTE'),
(120, 'nisl duis bibendum felis', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 725245, '2019-06-07', '2023-02-07', 4, 'TWIMM'),
(121, 'sapien iaculis congue vivamus', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 397623, '2020-09-05', '2021-09-05', 1, 'WORDTUNE'),
(122, 'lectus vestibulum quam', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 754766, '2022-03-14', '2025-11-14', 4, 'TOPDRIVE'),
(123, 'volutpat in congue', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 429565, '2019-07-30', '2022-07-30', 4, 'FLASHSPAN'),
(124, 'at nulla suspendisse potenti', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 555578, '2017-06-21', '2020-06-21', 4, 'SKIPTUBE'),
(125, 'pede ullamcorper augue a', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 883074, '2021-03-14', '2022-03-14', 1, 'DIVANOODLE'),
(126, 'ultrices aliquet maecenas leo', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 349023, '2018-02-20', '2020-02-20', 2, 'QUIMBA'),
(127, 'in sagittis dui vel nisl', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 721891, '2021-12-25', '2024-12-25', 4, 'SKIPFIRE'),
(128, 'orci vehicula condimentum', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 633000, '2018-02-08', '2021-10-08', 4, 'THOUGHTWORKS'),
(129, 'dignissim vestibulum vestibulum', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 463184, '2020-03-27', '2021-03-27', 1, 'PIXOPE'),
(130, 'convallis tortor risus', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 838687, '2017-07-21', '2019-07-21', 2, 'WORDPEDIA'),
(131, 'pede justo lacinia eget', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 127731, '2020-09-23', '2023-09-23', 3, 'OYOPE'),
(132, 'adipiscing elit proin risus praesent', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 117943, '2020-05-15', '2024-01-15', 4, 'MYWORKS'),
(133, 'id lobortis convallis tortor', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 380874, '2018-07-04', '2019-07-04', 1, 'VOOMM'),
(134, 'morbi sem mauris', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 669323, '2019-04-22', '2021-04-22', 3, 'BABBLESET'),
(135, 'vivamus metus arcu', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 476125, '2021-03-16', '2024-03-16', 4, 'REALBLAB'),
(136, 'donec semper sapien a libero', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 907711, '2021-12-03', '2025-08-03', 4, 'KAZIO'),
(137, 'non interdum in', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 904675, '2018-04-15', '2019-04-15', 1, 'FLASHDOG'),
(138, 'neque duis bibendum morbi non', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 365271, '2019-01-28', '2021-01-28', 3, 'DIGITUBE'),
(140, 'placerat ante nulla justo aliquam', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 463001, '2020-03-21', '2023-11-21', 4, 'VIVA'),
(141, 'aliquet ultrices erat tortor', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 798825, '2018-10-24', '2019-10-24', 1, 'LEENTI'),
(142, 'eu est congue', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 759339, '2018-02-27', '2020-02-27', 2, 'QUAXO'),
(143, 'faucibus cursus urna', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 789925, '2020-01-24', '2023-01-24', 4, 'MYBUZZ'),
(144, 'magna vestibulum aliquet ultrices erat', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 954256, '2021-11-01', '2025-07-01', 4, 'VIDOO'),
(146, 'blandit ultrices enim lorem', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 645082, '2021-12-15', '2023-12-15', 2, 'BROWSEBUG'),
(147, 'vel nulla eget eros elementum', 'Fusce consequat. Nulla nisl. Nunc nisl.', 201760, '2018-09-19', '2021-09-19', 4, 'LEEXO'),
(148, 'nisi vulputate nonummy maecenas tincidunt', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 364468, '2020-06-21', '2024-02-21', 4, 'CENTIMIA'),
(149, 'augue vestibulum ante ipsum primis', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 402033, '2017-08-15', '2018-08-15', 1, 'TALANE'),
(150, 'nullam orci pede venenatis', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 887089, '2021-02-24', '2023-02-24', 2, 'COGIDOO'),
(151, 'vestibulum ante ipsum primis', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 890417, '2020-08-10', '2024-04-10', 4, 'MYNTE'),
(153, 'mattis nibh ligula nec', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 916989, '2020-01-13', '2021-01-13', 2, 'TWIMM'),
(154, 'vestibulum ac est lacinia nisi', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 120534, '2018-10-14', '2020-10-14', 3, 'WORDTUNE'),
(155, 'pretium iaculis justo in', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 641733, '2021-01-04', '2024-01-04', 3, 'TOPDRIVE'),
(156, 'aliquam non mauris morbi', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 885088, '2021-06-23', '2025-02-23', 4, 'FLASHSPAN'),
(157, 'nullam varius nulla facilisi cras', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 999196, '2019-03-17', '2020-03-17', 2, 'SKIPTUBE'),
(158, 'erat vestibulum sed', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 850556, '2019-07-24', '2021-07-24', 3, 'DIVANOODLE'),
(159, 'diam nam tristique', 'Fusce consequat. Nulla nisl. Nunc nisl.', 899895, '2019-07-31', '2022-07-31', 4, 'QUIMBA'),
(160, 'natoque penatibus et magnis', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 614881, '2020-06-18', '2024-02-18', 4, 'SKIPFIRE'),
(161, 'donec diam neque vestibulum', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 974405, '2018-02-27', '2019-02-27', 1, 'THOUGHTWORKS'),
(162, 'in sagittis dui', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 645664, '2020-06-06', '2022-06-06', 2, 'PIXOPE'),
(163, 'ullamcorper augue a suscipit nulla', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 208673, '2020-01-17', '2023-01-17', 4, 'WORDPEDIA'),
(164, 'ultrices libero non', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 853389, '2021-06-03', '2025-02-03', 4, 'OYOPE'),
(165, 'donec ut dolor morbi vel', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 935981, '2021-01-12', '2022-01-12', 1, 'MYWORKS'),
(166, 'quam nec dui luctus rutrum', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 713606, '2019-08-30', '2021-08-30', 3, 'VOOMM'),
(167, 'non mi integer ac', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 110568, '2021-11-08', '2024-11-08', 4, 'BABBLESET'),
(168, 'nulla integer pede justo', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 109539, '2018-07-05', '2022-03-05', 4, 'REALBLAB'),
(169, 'justo sollicitudin ut', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 784509, '2017-07-01', '2018-07-01', 1, 'KAZIO'),
(170, 'lorem quisque ut', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 273587, '2019-04-17', '2021-04-17', 3, 'FLASHDOG'),
(171, 'enim leo rhoncus', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 496487, '2018-12-02', '2021-12-02', 4, 'DIGITUBE'),
(172, 'hac habitasse platea', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 234330, '2017-10-28', '2021-06-28', 4, 'VIVA'),
(173, 'felis donec semper sapien a', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 601324, '2018-07-20', '2019-07-20', 1, 'LEENTI'),
(174, 'curae mauris viverra diam', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 468024, '2018-09-22', '2020-09-22', 3, 'QUAXO'),
(175, 'faucibus orci luctus et ultrices', 'Fusce consequat. Nulla nisl. Nunc nisl.', 696160, '2020-07-05', '2023-07-05', 3, 'MYBUZZ'),
(176, 'libero ut massa', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 304109, '2020-10-28', '2024-06-28', 4, 'VIDOO'),
(177, 'duis bibendum morbi', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 920985, '2019-07-31', '2020-07-31', 2, 'BROWSEBUG'),
(178, 'at turpis a pede posuere', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 710642, '2021-01-31', '2023-01-31', 2, 'LEEXO'),
(179, 'suspendisse accumsan tortor quis', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 765918, '2020-04-07', '2023-04-07', 3, 'CENTIMIA'),
(180, 'parturient montes nascetur ridiculus', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 333901, '2022-01-13', '2025-09-13', 4, 'TALANE'),
(181, 'lectus aliquam sit amet diam', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 205552, '2022-05-11', '2023-05-11', 1, 'COGIDOO'),
(182, 'ut ultrices vel augue', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 207944, '2021-01-06', '2023-01-06', 2, 'MYNTE'),
(183, 'faucibus cursus urna ut', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 346576, '2021-05-17', '2024-05-17', 4, 'TWIMM'),
(185, 'quis turpis eget elit sodales', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 191262, '2018-06-11', '2019-06-11', 1, 'WORDTUNE'),
(186, 'sit amet cursus', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 204830, '2018-12-19', '2020-12-19', 3, 'TOPDRIVE'),
(187, 'elit proin risus praesent lectus', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 917219, '2018-10-21', '2021-10-21', 4, 'FLASHSPAN'),
(188, 'mauris enim leo rhoncus sed', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 904256, '2019-07-16', '2023-03-16', 4, 'SKIPTUBE'),
(189, 'ipsum primis in faucibus orci', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 156179, '2021-10-29', '2022-10-29', 1, 'DIVANOODLE'),
(190, 'metus arcu adipiscing molestie hendrerit', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 534279, '2019-06-14', '2021-06-14', 3, 'QUIMBA'),
(191, 'sapien cum sociis natoque', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 448530, '2018-10-16', '2021-10-16', 4, 'SKIPFIRE'),
(192, 'odio odio elementum', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 381548, '2018-01-03', '2021-09-03', 4, 'THOUGHTWORKS'),
(193, 'in magna bibendum', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 299189, '2018-10-27', '2019-10-27', 1, 'PIXOPE'),
(194, 'gravida sem praesent id massa', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 344672, '2018-08-01', '2020-08-01', 3, 'WORDPEDIA'),
(195, 'id nisl venenatis lacinia aenean', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 164181, '2020-01-16', '2023-01-16', 4, 'OYOPE'),
(196, 'nascetur ridiculus mus vivamus vestibulum', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 233657, '2020-07-05', '2024-03-05', 4, 'MYWORKS'),
(197, 'eu massa donec dapibus', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 519050, '2018-06-18', '2019-06-18', 1, 'VOOMM'),
(198, 'felis sed interdum venenatis turpis', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 742259, '2017-07-13', '2019-07-13', 2, 'BABBLESET'),
(199, 'a ipsum integer a nibh', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 197019, '2021-05-28', '2024-05-28', 4, 'REALBLAB'),
(200, 'sit amet lobortis', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 548206, '2018-02-19', '2021-10-19', 4, 'KAZIO');

--
-- Triggers `Project`
--
DELIMITER $$
CREATE TRIGGER `Project_ins` BEFORE INSERT ON `Project` FOR EACH ROW SET new.duration = ceil(datediff(new.date_end, new.start_date)/365)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Project_upd` BEFORE UPDATE ON `Project` FOR EACH ROW SET @duration = ceil(datediff(new.date_end, new.start_date)/365)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Project_donation`
--

CREATE TABLE `Project_donation` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Project_donation`
--

INSERT INTO `Project_donation` (`project_id`, `program_id`) VALUES
(13, 1),
(46, 1),
(76, 1),
(106, 1),
(136, 1),
(169, 1),
(200, 1),
(12, 2),
(45, 2),
(75, 2),
(105, 2),
(135, 2),
(168, 2),
(199, 2),
(11, 3),
(44, 3),
(74, 3),
(104, 3),
(134, 3),
(167, 3),
(198, 3),
(10, 4),
(43, 4),
(73, 4),
(103, 4),
(133, 4),
(166, 4),
(197, 4),
(9, 5),
(42, 5),
(72, 5),
(102, 5),
(132, 5),
(165, 5),
(196, 5),
(8, 6),
(41, 6),
(71, 6),
(101, 6),
(131, 6),
(164, 6),
(195, 6),
(7, 7),
(40, 7),
(70, 7),
(100, 7),
(130, 7),
(163, 7),
(194, 7),
(6, 8),
(39, 8),
(69, 8),
(99, 8),
(129, 8),
(162, 8),
(193, 8),
(5, 9),
(38, 9),
(68, 9),
(98, 9),
(128, 9),
(161, 9),
(192, 9),
(4, 10),
(37, 10),
(67, 10),
(97, 10),
(127, 10),
(160, 10),
(191, 10),
(3, 11),
(36, 11),
(66, 11),
(96, 11),
(126, 11),
(159, 11),
(190, 11),
(2, 12),
(35, 12),
(65, 12),
(95, 12),
(125, 12),
(158, 12),
(189, 12),
(1, 13),
(34, 13),
(64, 13),
(94, 13),
(124, 13),
(157, 13),
(188, 13),
(33, 14),
(63, 14),
(93, 14),
(123, 14),
(156, 14),
(187, 14),
(32, 15),
(62, 15),
(92, 15),
(122, 15),
(155, 15),
(186, 15),
(31, 16),
(61, 16),
(91, 16),
(121, 16),
(154, 16),
(185, 16),
(30, 17),
(60, 17),
(90, 17),
(120, 17),
(153, 17),
(183, 17),
(28, 18),
(59, 18),
(89, 18),
(119, 18),
(151, 18),
(182, 18),
(27, 19),
(58, 19),
(88, 19),
(118, 19),
(150, 19),
(181, 19),
(26, 20),
(57, 20),
(87, 20),
(117, 20),
(149, 20),
(180, 20),
(25, 21),
(56, 21),
(86, 21),
(116, 21),
(148, 21),
(179, 21),
(24, 22),
(55, 22),
(85, 22),
(115, 22),
(147, 22),
(178, 22),
(23, 23),
(54, 23),
(84, 23),
(114, 23),
(146, 23),
(177, 23),
(22, 24),
(53, 24),
(83, 24),
(113, 24),
(144, 24),
(176, 24),
(21, 25),
(52, 25),
(82, 25),
(112, 25),
(143, 25),
(175, 25),
(20, 26),
(51, 26),
(81, 26),
(111, 26),
(142, 26),
(174, 26),
(19, 27),
(50, 27),
(80, 27),
(110, 27),
(141, 27),
(173, 27),
(16, 28),
(49, 28),
(79, 28),
(109, 28),
(140, 28),
(172, 28),
(15, 29),
(48, 29),
(78, 29),
(108, 29),
(138, 29),
(171, 29),
(14, 30),
(47, 30),
(77, 30),
(107, 30),
(137, 30),
(170, 30);

-- --------------------------------------------------------

--
-- Table structure for table `project_managed_by_org`
--

CREATE TABLE `project_managed_by_org` (
  `org_id` char(20) NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_managed_by_org`
--

INSERT INTO `project_managed_by_org` (`org_id`, `project_id`) VALUES
('DEVSHARE', 1),
('COGIDOO', 2),
('COGIBOX', 3),
('CHATTERPOINT', 4),
('CENTIMIA', 5),
('CENTIDEL', 6),
('BUBBLEBOX', 7),
('BROWSEBUG', 8),
('BROWSEBLAB', 9),
('BABBLESTORM', 10),
('BABBLESET', 11),
('BABBLEOPIA', 12),
('AGIVU', 13),
('ABATZ', 14),
('JAXNATION', 15),
('JATRI', 16),
('JAMIA', 19),
('INNOJAM', 20),
('GIGAZOOM', 21),
('GEVEE', 22),
('FLASHSPAN', 23),
('FLASHDOG', 24),
('FIVESPAN', 25),
('FIVECLUB', 26),
('FANOODLE', 27),
('FADEO', 28),
('EIRE', 30),
('EABOX', 31),
('DIVANOODLE', 32),
('DIGITUBE', 33),
('DEVSHARE', 34),
('COGIDOO', 35),
('COGIBOX', 36),
('CHATTERPOINT', 37),
('CENTIMIA', 38),
('CENTIDEL', 39),
('BUBBLEBOX', 40),
('BROWSEBUG', 41),
('BROWSEBLAB', 42),
('BABBLESTORM', 43),
('BABBLESET', 44),
('BABBLEOPIA', 45),
('AGIVU', 46),
('ABATZ', 47),
('JAXNATION', 48),
('JATRI', 49),
('JAMIA', 50),
('INNOJAM', 51),
('GIGAZOOM', 52),
('GEVEE', 53),
('FLASHSPAN', 54),
('FLASHDOG', 55),
('FIVESPAN', 56),
('FIVECLUB', 57),
('FANOODLE', 58),
('FADEO', 59),
('EIRE', 60),
('EABOX', 61),
('DIVANOODLE', 62),
('DIGITUBE', 63),
('DEVSHARE', 64),
('COGIDOO', 65),
('COGIBOX', 66),
('CHATTERPOINT', 67),
('CENTIMIA', 68),
('CENTIDEL', 69),
('BUBBLEBOX', 70),
('BROWSEBUG', 71),
('BROWSEBLAB', 72),
('BABBLESTORM', 73),
('BABBLESET', 74),
('BABBLEOPIA', 75),
('AGIVU', 76),
('ABATZ', 77),
('JAXNATION', 78),
('JATRI', 79),
('JAMIA', 80),
('INNOJAM', 81),
('GIGAZOOM', 82),
('GEVEE', 83),
('FLASHSPAN', 84),
('FLASHDOG', 85),
('FIVESPAN', 86),
('FIVECLUB', 87),
('FANOODLE', 88),
('FADEO', 89),
('EIRE', 90),
('EABOX', 91),
('DIVANOODLE', 92),
('DIGITUBE', 93),
('DEVSHARE', 94),
('COGIDOO', 95),
('COGIBOX', 96),
('CHATTERPOINT', 97),
('CENTIMIA', 98),
('CENTIDEL', 99),
('BUBBLEBOX', 100),
('BROWSEBUG', 101),
('BROWSEBLAB', 102),
('BABBLESTORM', 103),
('BABBLESET', 104),
('BABBLEOPIA', 105),
('AGIVU', 106),
('ABATZ', 107),
('JAXNATION', 108),
('JATRI', 109),
('JAMIA', 110),
('INNOJAM', 111),
('GIGAZOOM', 112),
('GEVEE', 113),
('FLASHSPAN', 114),
('FLASHDOG', 115),
('FIVESPAN', 116),
('FIVECLUB', 117),
('FANOODLE', 118),
('FADEO', 119),
('EIRE', 120),
('EABOX', 121),
('DIVANOODLE', 122),
('DIGITUBE', 123),
('DEVSHARE', 124),
('COGIDOO', 125),
('COGIBOX', 126),
('CHATTERPOINT', 127),
('CENTIMIA', 128),
('CENTIDEL', 129),
('BUBBLEBOX', 130),
('BROWSEBUG', 131),
('BROWSEBLAB', 132),
('BABBLESTORM', 133),
('BABBLESET', 134),
('BABBLEOPIA', 135),
('AGIVU', 136),
('ABATZ', 137),
('JAXNATION', 138),
('JATRI', 140),
('JAMIA', 141),
('INNOJAM', 142),
('GIGAZOOM', 143),
('GEVEE', 144),
('FLASHSPAN', 146),
('FLASHDOG', 147),
('FIVESPAN', 148),
('FIVECLUB', 149),
('FANOODLE', 150),
('FADEO', 151),
('EIRE', 153),
('EABOX', 154),
('DIVANOODLE', 155),
('DIGITUBE', 156),
('DEVSHARE', 157),
('COGIDOO', 158),
('COGIBOX', 159),
('CHATTERPOINT', 160),
('CENTIMIA', 161),
('CENTIDEL', 162),
('BUBBLEBOX', 163),
('BROWSEBUG', 164),
('BROWSEBLAB', 165),
('BABBLESTORM', 166),
('BABBLESET', 167),
('BABBLEOPIA', 168),
('AGIVU', 169),
('ABATZ', 170),
('JATRI', 171),
('JAMIA', 172),
('INNOJAM', 173),
('GIGAZOOM', 174),
('GEVEE', 175),
('FLASHSPAN', 176),
('FLASHDOG', 177),
('FIVESPAN', 178),
('FIVECLUB', 179),
('FANOODLE', 180),
('FADEO', 181),
('EIRE', 182),
('EABOX', 183),
('DIVANOODLE', 185),
('DIGITUBE', 186),
('DEVSHARE', 187),
('COGIDOO', 188),
('COGIBOX', 189),
('CHATTERPOINT', 190),
('CENTIMIA', 191),
('CENTIDEL', 192),
('BUBBLEBOX', 193),
('BROWSEBUG', 194),
('BROWSEBLAB', 195),
('BABBLESTORM', 196),
('BABBLESET', 197),
('BABBLEOPIA', 198),
('AGIVU', 199),
('ABATZ', 200);

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `researcher_id` int(10) UNSIGNED NOT NULL,
  `researcher_first_name` varchar(255) NOT NULL,
  `researcher_last_name` varchar(255) NOT NULL,
  `researcher_birth_date` date NOT NULL,
  `researcher_sex` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `researcher`
--

INSERT INTO `researcher` (`researcher_id`, `researcher_first_name`, `researcher_last_name`, `researcher_birth_date`, `researcher_sex`) VALUES
(1, 'Odelinda', 'Wilcock', '1993-11-17', 'F'),
(2, 'Johan', 'Beaney', '1973-03-13', 'M'),
(3, 'Alida', 'Edison', '1982-05-18', 'F'),
(4, 'Hilary', 'McOnie', '1984-05-30', 'M'),
(5, 'Willie', 'Scroggie', '1988-02-29', 'M'),
(6, 'Des', 'Mattiussi', '1986-04-02', 'M'),
(7, 'Andie', 'Spilsburie', '1988-11-08', 'F'),
(8, 'Giulietta', 'Kernock', '1987-02-20', 'F'),
(9, 'Kessiah', 'Sabbin', '1995-01-19', 'F'),
(10, 'Babette', 'Bonds', '1987-12-30', 'F'),
(11, 'Michael', 'Bunning', '1981-08-25', 'M'),
(12, 'Kev', 'O\'Leary', '1993-04-26', 'M'),
(13, 'Shelley', 'Ambroix', '1990-05-29', 'F'),
(14, 'Frayda', 'Bikker', '1988-02-29', 'F'),
(15, 'Raphael', 'Blanchflower', '1974-12-02', 'M'),
(16, 'Bruce', 'Graeser', '1978-06-03', 'M'),
(17, 'Douglas', 'Skerman', '1981-03-11', 'M'),
(18, 'Jayme', 'Frisch', '1996-04-25', 'F'),
(19, 'Alexei', 'Waryk', '1972-01-15', 'M'),
(20, 'Annemarie', 'Brundle', '1993-10-01', 'F'),
(21, 'Viki', 'Jodrellec', '1971-08-18', 'F'),
(22, 'Bentley', 'Wemm', '1974-07-03', 'M'),
(23, 'Darbie', 'Garfitt', '1975-06-13', 'F'),
(24, 'Kalila', 'Malthouse', '1980-01-25', 'F'),
(25, 'Valeda', 'Frankcombe', '1985-10-25', 'F'),
(26, 'Chas', 'Beneix', '1988-04-25', 'M'),
(27, 'Shayne', 'Esposi', '1997-05-31', 'M'),
(28, 'Paulita', 'McEwan', '1983-08-16', 'F'),
(29, 'Frederick', 'Patton', '1983-02-20', 'M'),
(30, 'Imogen', 'McIlvaney', '1983-11-25', 'F'),
(31, 'Sidonia', 'Bertomieu', '1977-07-25', 'F'),
(32, 'Boycey', 'Gillott', '1975-06-20', 'M'),
(33, 'Samuel', 'Grieves', '1972-04-15', 'M'),
(34, 'Roderic', 'Hutchings', '1987-03-27', 'M'),
(35, 'Madelin', 'Harlow', '1977-03-06', 'F'),
(36, 'Aime', 'Mellenby', '1987-12-20', 'F'),
(37, 'Gianni', 'Cominoli', '1995-08-28', 'M'),
(38, 'Ester', 'Ledster', '1999-06-24', 'F'),
(39, 'Ralph', 'Barnett', '1982-01-21', 'M'),
(40, 'Veda', 'Bacon', '1973-04-07', 'F'),
(41, 'Lea', 'Svanini', '1997-08-21', 'F'),
(42, 'Jaimie', 'Dobble', '2000-01-26', 'M'),
(43, 'Goddart', 'Bartolomivis', '1983-09-28', 'M'),
(44, 'Cathlene', 'Hakes', '1981-08-17', 'F'),
(45, 'Sayre', 'Donohoe', '1981-04-09', 'F'),
(46, 'Darb', 'Leet', '1978-08-25', 'F'),
(47, 'Grantley', 'Roddie', '1976-03-27', 'M'),
(48, 'Eleonora', 'Krollman', '1974-01-22', 'F'),
(49, 'Linus', 'Hasslocher', '1989-04-29', 'M'),
(50, 'Daffie', 'Lile', '1972-01-26', 'F'),
(51, 'Briny', 'Andrasch', '1989-04-07', 'F'),
(52, 'Kendal', 'Skeermer', '1996-09-10', 'M'),
(53, 'Austin', 'Armor', '1992-09-27', 'M'),
(54, 'Lucho', 'Bulleyn', '1976-04-25', 'M'),
(55, 'Flint', 'Chetham', '1990-01-13', 'M'),
(56, 'Edeline', 'Croisdall', '1992-10-03', 'F'),
(57, 'Sibelle', 'Marder', '1982-08-27', 'F'),
(58, 'Felic', 'Thominga', '1989-06-24', 'M'),
(59, 'Edlin', 'Milbank', '1987-12-06', 'M'),
(60, 'Olav', 'Coils', '1977-03-31', 'M'),
(61, 'Madelena', 'Littlefair', '1997-09-08', 'F'),
(62, 'Desiree', 'Plom', '1970-06-22', 'F'),
(63, 'Zachary', 'Baumaier', '1977-02-23', 'M'),
(64, 'Augustine', 'Lammertz', '1985-03-08', 'M'),
(65, 'Alley', 'Varnam', '1986-06-19', 'M'),
(66, 'Valaree', 'Doldon', '1986-05-16', 'F'),
(67, 'Boy', 'Cliss', '1994-08-01', 'M'),
(68, 'Agnella', 'Tacey', '1997-08-20', 'F'),
(69, 'Carmita', 'Upshall', '1970-11-14', 'F'),
(70, 'Nealy', 'Pawson', '1994-01-29', 'M'),
(71, 'Flossy', 'Rosini', '1973-03-28', 'F'),
(72, 'Etti', 'Andrini', '1976-04-17', 'F'),
(73, 'Aaren', 'Elion', '1998-11-20', 'F'),
(74, 'Rollin', 'Skellern', '1974-02-09', 'M'),
(75, 'Eugine', 'Anand', '1989-05-23', 'F'),
(76, 'Boniface', 'Gurko', '1984-09-15', 'M'),
(77, 'Linette', 'Whittleton', '1989-10-29', 'F'),
(78, 'Duff', 'Goady', '1987-09-03', 'M'),
(79, 'Ricki', 'Paddemore', '1978-07-24', 'M'),
(80, 'Cameron', 'Mosten', '1988-04-04', 'M'),
(81, 'Shelton', 'Yewdale', '1990-02-11', 'M'),
(82, 'Letisha', 'Tremellier', '1979-06-16', 'F'),
(83, 'Freedman', 'Shreenan', '1971-01-09', 'M'),
(84, 'Yorgos', 'Mainwaring', '1989-09-02', 'M'),
(85, 'Babs', 'Gorusso', '1976-02-04', 'F'),
(86, 'Barnie', 'Thurber', '1976-06-06', 'M'),
(87, 'Lucienne', 'Gillatt', '1984-04-24', 'F'),
(88, 'Ree', 'Fowlie', '1978-08-06', 'F'),
(89, 'Nappie', 'Merioth', '1974-04-11', 'M'),
(90, 'Donavon', 'Strahan', '1999-01-04', 'M'),
(91, 'Leland', 'Kase', '1976-07-12', 'M'),
(92, 'Free', 'Wellbeloved', '1985-03-17', 'M'),
(93, 'Nolly', 'Archibold', '1981-09-01', 'M'),
(94, 'Darius', 'Spini', '1978-04-30', 'M'),
(95, 'Rice', 'Raecroft', '1980-01-31', 'M'),
(96, 'Ruthann', 'Withur', '1978-12-14', 'F'),
(97, 'Rebekah', 'Lorkin', '1996-05-16', 'F'),
(98, 'Billi', 'Antczak', '1980-03-30', 'F'),
(99, 'Gilles', 'Funcheon', '1999-03-08', 'M'),
(100, 'Fabiano', 'Morkham', '1975-04-04', 'M'),
(101, 'Claudian', 'Hatwells', '1972-01-20', 'M'),
(102, 'Lyn', 'Robel', '1980-03-12', 'M'),
(103, 'Dilly', 'Ambrosi', '1970-08-05', 'M'),
(104, 'Tobiah', 'Rodenburgh', '1999-11-07', 'M'),
(105, 'Osborne', 'Waddicor', '1980-08-01', 'M'),
(106, 'Korie', 'Richardson', '1984-08-10', 'F'),
(107, 'Devonna', 'Matokhnin', '1998-01-03', 'F'),
(108, 'Aguste', 'Casey', '1973-05-23', 'M'),
(109, 'Sherye', 'Simione', '1973-12-13', 'F'),
(110, 'Christine', 'Besant', '1985-10-27', 'F'),
(111, 'Ronda', 'Honnicott', '1995-12-16', 'F'),
(112, 'Armand', 'Longland', '1983-11-10', 'M'),
(113, 'Royall', 'Stebbings', '1982-08-23', 'M'),
(114, 'Willis', 'Janicek', '1986-06-29', 'M'),
(115, 'Laurie', 'Copcote', '1982-12-16', 'F'),
(116, 'Cinnamon', 'Lockart', '1981-12-21', 'F'),
(117, 'Carlyle', 'Byforth', '1990-04-25', 'M'),
(118, 'Blinnie', 'Noakes', '1991-03-16', 'F'),
(119, 'Bambie', 'Copcutt', '1997-07-23', 'F'),
(120, 'Barclay', 'Hugonin', '1975-07-14', 'M'),
(121, 'Geoffry', 'Matis', '1988-04-25', 'M'),
(122, 'Adi', 'Blesdill', '1979-01-05', 'F'),
(123, 'Renata', 'Sheerin', '1974-03-16', 'F'),
(124, 'Farrel', 'Levins', '1980-08-05', 'M'),
(125, 'Jewelle', 'Lendrem', '1992-12-20', 'F'),
(126, 'Byron', 'Wyper', '1983-09-28', 'M'),
(127, 'Davina', 'Bruno', '1979-12-01', 'F'),
(128, 'Curtice', 'Conahy', '1978-05-10', 'M'),
(129, 'Craig', 'Constantine', '1979-07-16', 'M'),
(130, 'Bunny', 'Rheam', '1988-11-07', 'F'),
(131, 'Rhiamon', 'Colmer', '1989-08-15', 'F'),
(132, 'Brenden', 'Ilson', '1983-03-21', 'M'),
(133, 'Carmelle', 'Winnister', '1970-08-29', 'F'),
(134, 'Johannah', 'Adamkiewicz', '1980-10-01', 'F'),
(135, 'Ruy', 'Garahan', '1982-09-21', 'M'),
(136, 'Margarette', 'Dadge', '1984-01-02', 'F'),
(137, 'Clara', 'Madre', '1992-03-14', 'F'),
(138, 'Christopher', 'Borel', '1983-07-25', 'M'),
(139, 'Gilles', 'Brosi', '1980-01-28', 'M'),
(140, 'Lucilia', 'Partener', '1976-02-22', 'F'),
(141, 'Homer', 'Getcliff', '1970-10-10', 'M'),
(142, 'Mikaela', 'Bosse', '1983-11-24', 'F'),
(143, 'Frances', 'Malenoir', '1986-07-05', 'F'),
(144, 'Antonetta', 'Jerdan', '1987-05-10', 'F'),
(145, 'Eada', 'Issacson', '1987-01-05', 'F'),
(146, 'Kennith', 'Kesby', '1993-03-18', 'M'),
(147, 'Penny', 'Keenlyside', '1976-09-26', 'M'),
(148, 'Agnella', 'Bertin', '1997-08-22', 'F'),
(149, 'Maritsa', 'Braizier', '1978-06-21', 'F'),
(150, 'Creighton', 'Persitt', '1971-11-26', 'M'),
(151, 'Sylas', 'Ahlf', '1979-11-24', 'M'),
(152, 'Wilma', 'Radsdale', '1982-03-04', 'F'),
(153, 'Claudianus', 'Duchenne', '1983-10-02', 'M'),
(154, 'Timmie', 'Di Francesco', '1987-08-22', 'F'),
(155, 'Nappy', 'Charter', '1975-01-30', 'M'),
(156, 'Trace', 'Shergill', '1975-11-17', 'M'),
(157, 'Barris', 'Feathers', '1971-01-15', 'M'),
(158, 'Glad', 'McGlashan', '1996-12-01', 'F'),
(159, 'Wendye', 'Konke', '1998-09-16', 'F'),
(160, 'Emmy', 'Moughton', '1999-10-29', 'M'),
(161, 'Chandra', 'Schrinel', '1998-01-11', 'F'),
(162, 'Hynda', 'Crackel', '1981-12-15', 'F'),
(163, 'Sula', 'Caines', '1991-06-21', 'F'),
(164, 'Pincus', 'Prayer', '1995-08-05', 'M'),
(165, 'Ike', 'Gaine', '1987-03-22', 'M'),
(166, 'Gage', 'Isaacs', '1991-09-25', 'M'),
(167, 'Gherardo', 'Challens', '1984-12-29', 'M'),
(168, 'Phillida', 'Burchess', '1995-07-10', 'F'),
(169, 'Bastian', 'Pickover', '1996-07-28', 'M'),
(170, 'Prentice', 'Devas', '1990-07-08', 'M'),
(171, 'Babbie', 'Mingo', '1999-08-26', 'F'),
(172, 'Reinwald', 'Dignall', '1981-05-14', 'M'),
(173, 'Rollo', 'Smoughton', '1970-08-16', 'M'),
(174, 'Claudio', 'Joice', '1973-11-09', 'M'),
(175, 'Raoul', 'Bembrick', '1992-10-30', 'M'),
(176, 'Ruby', 'McCalister', '1980-02-22', 'M'),
(177, 'Octavius', 'Brenard', '1980-05-17', 'M'),
(178, 'Way', 'Treuge', '1971-11-23', 'M'),
(179, 'Mitch', 'Kensall', '1985-11-11', 'M'),
(180, 'Kristoforo', 'Cargen', '1990-05-08', 'M'),
(181, 'Alexandros', 'Dulwitch', '1992-07-12', 'M'),
(182, 'Saunder', 'Kampshell', '1986-02-18', 'M'),
(183, 'Julee', 'Pirelli', '1993-08-24', 'F'),
(184, 'Lynnette', 'Son', '1989-04-20', 'F'),
(185, 'Emmeline', 'Suatt', '1987-01-15', 'F'),
(186, 'Minnaminnie', 'Carnie', '1983-02-03', 'F'),
(187, 'Carline', 'Hayfield', '1980-06-18', 'F'),
(188, 'Germain', 'Watford', '1986-02-12', 'M'),
(189, 'Francisca', 'Aneley', '1980-11-12', 'F'),
(190, 'Milli', 'Hevey', '1979-03-14', 'F'),
(191, 'Effie', 'Goward', '1992-06-03', 'F'),
(192, 'Kaycee', 'Szwarc', '1992-08-07', 'F'),
(193, 'Thea', 'Pomery', '1979-05-20', 'F'),
(194, 'Rory', 'Maffulli', '1978-05-30', 'M'),
(195, 'Walliw', 'Seeley', '1999-07-04', 'F'),
(196, 'Vin', 'McClymont', '1995-05-01', 'F'),
(197, 'Maire', 'Alastair', '1985-11-05', 'F'),
(198, 'Harriette', 'Bestar', '1975-07-09', 'F'),
(199, 'Adelbert', 'Moro', '1983-10-18', 'M'),
(200, 'Court', 'Willingam', '1989-05-22', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `researcher_works_org`
--

CREATE TABLE `researcher_works_org` (
  `org_id` char(20) NOT NULL,
  `researcher_id` int(10) UNSIGNED NOT NULL,
  `start_date_of_work` date NOT NULL,
  `date_end_of_work` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `researcher_works_org`
--

INSERT INTO `researcher_works_org` (`org_id`, `researcher_id`, `start_date_of_work`, `date_end_of_work`) VALUES
('SKIPTUBE', 1, '2017-11-17', NULL),
('DIVANOODLE', 2, '1995-01-01', '2005-12-31'),
('QUIMBA', 2, '2006-01-01', NULL),
('PIXOPE', 3, '1996-01-01', '2000-12-31'),
('QUIMBA', 3, '2002-01-01', NULL),
('SKIPFIRE', 4, '2007-01-01', '2015-12-31'),
('SKIPFIRE', 4, '2016-01-01', NULL),
('THOUGHTWORKS', 5, '2011-01-01', NULL),
('PIXOPE', 6, '2008-01-01', '2012-12-31'),
('THOUGHTWORKS', 6, '2013-01-01', '2020-12-31'),
('WORDPEDIA', 6, '2021-01-01', NULL),
('WORDPEDIA', 7, '2010-01-01', NULL),
('OYOPE', 8, '2011-02-20', NULL),
('MYWORKS', 9, '2019-01-19', NULL),
('VOOMM', 10, '2011-12-30', '2020-12-31'),
('WORDPEDIA', 10, '2021-01-01', NULL),
('BABBLESET', 11, '2005-08-25', NULL),
('REALBLAB', 12, '2017-04-26', NULL),
('KAZIO', 13, '2014-05-29', NULL),
('FLASHDOG', 14, '2012-02-29', '2019-12-31'),
('MYWORKS', 14, '2020-01-01', NULL),
('DIGITUBE', 15, '1998-12-02', '2005-12-31'),
('VOOMM', 15, '2006-01-01', '2015-12-31'),
('VIVA', 16, '2002-06-03', '2010-12-31'),
('VOOMM', 16, '2011-01-01', NULL),
('LEENTI', 17, '2005-03-11', NULL),
('BABBLESET', 18, '2018-01-01', NULL),
('QUAXO', 18, '2020-04-25', NULL),
('MYBUZZ', 19, '1996-01-15', NULL),
('VIDOO', 20, '2017-10-01', NULL),
('BROWSEBUG', 21, '1995-08-18', '2015-12-31'),
('REALBLAB', 21, '2016-01-01', NULL),
('KAZIO', 22, '2009-01-01', NULL),
('LEEXO', 22, '1998-07-03', '2008-12-31'),
('CENTIMIA', 23, '1999-06-13', NULL),
('FLASHDOG', 24, '2021-01-01', NULL),
('TALANE', 24, '2004-01-25', '2020-12-31'),
('COGIDOO', 25, '2009-10-25', NULL),
('DIGITUBE', 26, '2018-01-01', NULL),
('MYNTE', 26, '2012-04-25', '2017-12-31'),
('KAZIO', 27, '2020-05-20', NULL),
('TWIMM', 28, '2007-08-16', '2015-12-31'),
('VIVA', 28, '2016-01-01', NULL),
('WORDTUNE', 29, '2007-02-20', NULL),
('FLASHDOG', 30, '2007-11-25', '2012-12-31'),
('LEENTI', 30, '2021-01-01', NULL),
('TOPDRIVE', 30, '2013-01-01', '2020-12-31'),
('FLASHSPAN', 31, '2001-07-25', NULL),
('QUAXO', 32, '2007-01-01', NULL),
('SKIPTUBE', 32, '1999-06-20', '2006-12-31'),
('DIGITUBE', 33, '2010-01-01', NULL),
('DIVANOODLE', 33, '1996-04-15', '2009-12-31'),
('QUIMBA', 34, '2011-03-27', NULL),
('SKIPFIRE', 35, '2001-03-06', NULL),
('THOUGHTWORKS', 36, '2011-12-20', '2017-12-31'),
('VIDOO', 36, '2018-01-01', NULL),
('PIXOPE', 37, '2019-08-28', NULL),
('QUIMBA', 38, '2020-04-20', NULL),
('LEENTI', 39, '2017-01-21', NULL),
('WORDPEDIA', 39, '2006-01-21', '2016-12-31'),
('BROWSEBUG', 40, '2008-01-01', NULL),
('OYOPE', 40, '1997-04-07', '2007-12-31'),
('LEENTI', 41, '2021-05-19', NULL),
('BROWSEBUG', 42, '2020-05-20', NULL),
('MYWORKS', 43, '2007-09-28', NULL),
('LEEXO', 44, '2016-01-01', NULL),
('VOOMM', 44, '2005-08-17', '2015-12-31'),
('BABBLESET', 45, '2005-04-09', '2015-12-31'),
('QUAXO', 45, '2016-01-01', NULL),
('CENTIMIA', 46, '2011-01-01', NULL),
('REALBLAB', 46, '2002-08-25', '2010-12-31'),
('KAZIO', 47, '2000-03-27', NULL),
('FLASHDOG', 48, '1998-01-22', '2004-12-31'),
('MYBUZZ', 48, '2016-01-01', NULL),
('TALANE', 48, '2005-01-01', '2015-12-31'),
('DIGITUBE', 49, '2013-04-29', NULL),
('COGIDOO', 50, '2013-01-01', NULL),
('VIVA', 50, '1996-01-26', '2012-12-31'),
('LEENTI', 51, '2013-04-07', NULL),
('QUAXO', 52, '2020-09-10', NULL),
('MYBUZZ', 53, '2016-09-27', NULL),
('BROWSEBUG', 54, '2000-04-25', '2009-01-31'),
('TWIMM', 54, '2016-01-01', NULL),
('VIDOO', 54, '2010-01-01', '2015-12-31'),
('BROWSEBUG', 55, '2014-01-13', NULL),
('LEEXO', 56, '2016-10-03', NULL),
('CENTIMIA', 57, '2006-08-27', NULL),
('TALANE', 58, '2013-06-24', NULL),
('COGIDOO', 59, '2011-12-06', NULL),
('CENTIMIA', 60, '2019-01-01', NULL),
('FLASHSPAN', 60, '2009-01-01', '2018-12-31'),
('MYNTE', 60, '2001-03-31', '2008-12-31'),
('VOOMM', 61, '2021-03-20', NULL),
('TWIMM', 62, '1994-06-22', NULL),
('TALANE', 63, '2014-01-01', NULL),
('WORDTUNE', 63, '2001-02-23', '2013-12-31'),
('TOPDRIVE', 64, '2009-03-08', NULL),
('FLASHSPAN', 65, '2010-06-19', NULL),
('SKIPTUBE', 66, '2010-05-16', NULL),
('DIVANOODLE', 67, '2018-08-01', NULL),
('PIXOPE', 68, '2020-07-20', NULL),
('MYNTE', 69, '2000-01-01', NULL),
('QUIMBA', 69, '1994-11-14', '1999-12-31'),
('SKIPFIRE', 70, '2014-01-01', '2018-12-31'),
('SKIPFIRE', 70, '2019-01-01', NULL),
('THOUGHTWORKS', 71, '1997-03-28', NULL),
('PIXOPE', 72, '2000-04-17', '2010-12-31'),
('THOUGHTWORKS', 72, '2011-01-01', '2018-12-31'),
('TWIMM', 72, '2019-01-01', NULL),
('FLASHSPAN', 73, '2021-05-05', NULL),
('PIXOPE', 74, '2011-01-01', NULL),
('WORDPEDIA', 74, '1998-02-09', '2010-12-31'),
('OYOPE', 75, '2013-05-23', NULL),
('MYWORKS', 76, '2008-09-15', '2017-12-31'),
('WORDPEDIA', 76, '2018-01-01', NULL),
('VOOMM', 77, '2013-10-29', NULL),
('BABBLESET', 78, '2011-09-03', '2020-12-31'),
('OYOPE', 78, '2021-01-01', NULL),
('REALBLAB', 79, '2002-07-24', NULL),
('KAZIO', 80, '2012-04-04', NULL),
('FLASHSPAN', 81, '2014-02-11', NULL),
('DIGITUBE', 82, '2003-06-16', '2008-12-31'),
('VOOMM', 82, '2009-01-01', NULL),
('VIVA', 83, '1995-01-09', NULL),
('BABBLESET', 84, '2021-01-01', NULL),
('LEENTI', 84, '2013-09-02', '2020-12-31'),
('QUAXO', 85, '2000-02-04', NULL),
('MYBUZZ', 86, '2000-06-06', '2014-12-31'),
('REALBLAB', 86, '2015-01-01', NULL),
('DIVANOODLE', 87, '2016-01-01', NULL),
('VIDOO', 87, '2008-04-24', '2015-12-31'),
('BROWSEBUG', 88, '2002-08-06', '2012-12-31'),
('KAZIO', 88, '2013-01-01', NULL),
('LEEXO', 89, '1998-04-11', NULL),
('CENTIMIA', 91, '2000-07-12', NULL),
('FLASHDOG', 92, '2016-01-01', NULL),
('TALANE', 92, '2009-03-17', '2015-12-31'),
('COGIDOO', 93, '2017-01-01', NULL),
('QUIMBA', 93, '2005-09-01', '2016-12-31'),
('DIGITUBE', 94, '2009-01-01', NULL),
('MYNTE', 94, '2002-04-30', '2008-12-31'),
('TWIMM', 95, '2004-01-31', NULL),
('SKIPFIRE', 96, '2017-01-01', NULL),
('VIVA', 96, '2007-01-01', '2016-12-31'),
('WORDTUNE', 96, '2002-12-14', '2006-12-31'),
('TOPDRIVE', 97, '2020-05-16', NULL),
('FLASHSPAN', 98, '2004-03-30', '2012-12-31'),
('LEENTI', 98, '2013-01-01', NULL),
('OYOPE', 99, '2021-05-03', NULL),
('QUAXO', 100, '1999-04-04', NULL),
('DIVANOODLE', 101, '1996-01-20', NULL),
('MYBUZZ', 102, '2015-01-01', NULL),
('QUIMBA', 102, '2004-03-12', '2014-12-31'),
('SKIPFIRE', 103, '1994-08-05', NULL),
('MYBUZZ', 104, '2019-05-02', NULL),
('OYOPE', 105, '2019-01-01', NULL),
('THOUGHTWORKS', 105, '2004-08-01', '2018-12-31'),
('PIXOPE', 106, '2008-08-10', NULL),
('CENTIMIA', 107, '2021-05-02', NULL),
('BROWSEBUG', 108, '2003-01-01', '2009-12-31'),
('MYWORKS', 108, '2010-01-01', NULL),
('WORDPEDIA', 108, '1997-05-23', '2002-12-31'),
('OYOPE', 109, '1997-12-13', NULL),
('MYWORKS', 110, '2009-10-27', NULL),
('VOOMM', 111, '2014-06-01', '2020-12-31'),
('VOOMM', 111, '2021-01-01', NULL),
('CENTIMIA', 112, '2007-11-10', NULL),
('REALBLAB', 113, '2006-08-23', NULL),
('KAZIO', 114, '2010-06-29', '2017-12-31'),
('TALANE', 114, '2018-01-01', NULL),
('FLASHDOG', 115, '2006-12-16', NULL),
('COGIDOO', 116, '1014-01-01', NULL),
('DIGITUBE', 116, '2005-12-21', '2013-12-31'),
('VIVA', 117, '2014-04-25', NULL),
('LEENTI', 118, '2015-03-16', NULL),
('REALBLAB', 119, '2019-05-01', NULL),
('KAZIO', 120, '2012-01-01', NULL),
('QUAXO', 120, '1999-07-14', '2003-12-31'),
('TWIMM', 120, '2004-01-01', '2011-12-31'),
('MYBUZZ', 121, '2012-04-25', NULL),
('VIDOO', 122, '2003-01-05', NULL),
('BROWSEBUG', 123, '1998-03-16', '2015-12-31'),
('FLASHDOG', 123, '2016-01-01', NULL),
('LEEXO', 124, '2004-08-05', '2014-12-31'),
('TOPDRIVE', 124, '2015-01-01', NULL),
('CENTIMIA', 125, '2016-12-20', NULL),
('TALANE', 126, '2007-09-28', NULL),
('COGIDOO', 127, '2003-12-01', NULL),
('MYNTE', 128, '2002-05-10', '2009-12-31'),
('SKIPTUBE', 128, '2010-01-01', NULL),
('VIVA', 129, '2003-07-16', NULL),
('WORDTUNE', 130, '2012-11-07', NULL),
('TOPDRIVE', 131, '2013-08-15', NULL),
('FLASHSPAN', 132, '2007-03-21', '2011-12-31'),
('LEENTI', 132, '2020-01-01', NULL),
('QUIMBA', 132, '2012-01-01', '2016-12-31'),
('SKIPTUBE', 133, '1994-08-29', NULL),
('DIVANOODLE', 134, '2004-10-01', '2009-12-31'),
('SKIPFIRE', 134, '2010-01-01', NULL),
('QUIMBA', 135, '2006-09-21', NULL),
('SKIPFIRE', 136, '2008-01-02', NULL),
('THOUGHTWORKS', 137, '2016-03-14', NULL),
('MYBUZZ', 138, '2007-07-25', NULL),
('PIXOPE', 138, '2006-01-01', '2014-12-31'),
('PIXOPE', 138, '2015-01-01', NULL),
('WORDPEDIA', 139, '2004-01-28', NULL),
('OYOPE', 140, '2000-02-22', '2007-12-31'),
('WORDPEDIA', 140, '2008-01-01', NULL),
('MYWORKS', 141, '1994-10-10', '2004-12-31'),
('VIDOO', 141, '2005-01-01', NULL),
('OYOPE', 142, '2007-11-24', NULL),
('BABBLESET', 143, '2010-07-05', NULL),
('MYWORKS', 144, '2019-01-01', NULL),
('REALBLAB', 144, '2011-05-10', '2018-12-31'),
('KAZIO', 145, '2011-01-05', NULL),
('FLASHDOG', 146, '2017-03-18', NULL),
('DIGITUBE', 147, '2000-09-26', '2005-12-31'),
('LEEXO', 147, '2006-01-01', NULL),
('WORDPEDIA', 148, '2019-05-01', NULL),
('VIVA', 149, '2002-06-21', NULL),
('BABBLESET', 150, '2002-01-01', '2012-12-31'),
('CENTIMIA', 150, '2013-01-01', NULL),
('LEENTI', 150, '1995-11-26', '2001-12-31'),
('QUAXO', 151, '2003-11-24', NULL),
('MYBUZZ', 152, '2006-03-04', '2012-12-31'),
('REALBLAB', 152, '2013-01-01', NULL),
('TALANE', 153, '2013-01-01', NULL),
('VIDOO', 153, '2007-10-02', '2012-12-31'),
('BROWSEBUG', 154, '2011-08-22', '2017-12-31'),
('KAZIO', 154, '2018-01-01', NULL),
('LEEXO', 155, '1999-01-30', NULL),
('CENTIMIA', 156, '1999-11-17', '2004-12-31'),
('COGIDOO', 156, '2012-01-01', NULL),
('FLASHDOG', 156, '2005-01-01', '2011-12-31'),
('TALANE', 157, '1995-01-15', NULL),
('COGIDOO', 158, '2020-12-01', NULL),
('THOUGHTWORKS', 159, '2020-05-01', NULL),
('DIVANOODLE', 160, '2021-05-01', NULL),
('TOPDRIVE', 161, '2021-05-01', NULL),
('MYNTE', 162, '2002-01-01', '2010-12-31'),
('MYNTE', 162, '2011-01-01', NULL),
('VIVA', 162, '2005-12-15', NULL),
('TWIMM', 163, '2015-06-21', NULL),
('LEENTI', 164, '2019-08-05', NULL),
('TOPDRIVE', 165, '2011-03-22', NULL),
('FLASHSPAN', 166, '2015-09-25', NULL),
('SKIPTUBE', 167, '2008-12-29', NULL),
('DIVANOODLE', 168, '2019-07-10', NULL),
('QUIMBA', 169, '2020-07-28', NULL),
('SKIPFIRE', 170, '2014-07-08', NULL),
('TWIMM', 171, '2020-05-01', NULL),
('BROWSEBUG', 172, '2005-05-14', '2010-12-31'),
('THOUGHTWORKS', 172, '2011-01-01', NULL),
('PIXOPE', 173, '1994-08-16', NULL),
('LEEXO', 174, '2007-01-01', '2011-12-31'),
('THOUGHTWORKS', 174, '2012-01-01', NULL),
('WORDPEDIA', 174, '1997-11-09', '2006-12-31'),
('OYOPE', 175, '2016-10-30', NULL),
('CENTIMIA', 176, '2013-01-01', NULL),
('MYWORKS', 176, '2004-02-22', '2012-12-31'),
('PIXOPE', 177, '2020-01-01', NULL),
('VOOMM', 177, '2004-05-17', '2019-12-31'),
('BABBLESET', 178, '1995-11-23', '2010-12-31'),
('TALANE', 178, '2011-01-01', NULL),
('REALBLAB', 179, '2009-11-11', NULL),
('KAZIO', 180, '2014-05-08', NULL),
('FLASHDOG', 181, '2016-07-12', NULL),
('DIGITUBE', 182, '2010-01-01', '2018-12-31'),
('MYNTE', 182, '2019-02-18', NULL),
('VIVA', 183, '2017-08-24', NULL),
('LEENTI', 184, '2013-04-20', '2020-12-31'),
('TWIMM', 184, '2021-01-01', NULL),
('QUAXO', 185, '2011-01-15', NULL),
('MYBUZZ', 186, '2007-02-03', '2014-12-31'),
('SKIPTUBE', 186, '2015-01-01', NULL),
('VIDOO', 187, '2004-06-18', NULL),
('BROWSEBUG', 188, '2010-02-12', NULL),
('LEEXO', 189, '2004-11-12', NULL),
('CENTIMIA', 190, '2003-03-14', '2018-12-31'),
('FLASHSPAN', 190, '2019-01-01', NULL),
('TALANE', 191, '2016-06-03', NULL),
('COGIDOO', 192, '2016-08-07', NULL),
('MYNTE', 193, '2003-05-20', NULL),
('DIVANOODLE', 194, '2002-05-30', '2010-12-31'),
('TWIMM', 194, '2011-01-01', NULL),
('COGIDOO', 195, '2021-05-01', NULL),
('WORDTUNE', 196, '2019-05-01', NULL),
('TOPDRIVE', 197, '2009-11-05', NULL),
('FLASHSPAN', 198, '1999-07-09', NULL),
('SKIPFIRE', 198, '1997-01-01', '2005-12-31'),
('SKIPTUBE', 199, '2007-10-18', NULL),
('DIVANOODLE', 200, '2013-05-22', '2020-12-31'),
('THOUGHTWORKS', 200, '2021-01-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `res_works_on_project`
--

CREATE TABLE `res_works_on_project` (
  `researcher_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `is_supervisor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `res_works_on_project`
--

INSERT INTO `res_works_on_project` (`researcher_id`, `project_id`, `is_supervisor`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 3, 0),
(4, 4, 1),
(5, 5, 1),
(6, 5, 0),
(6, 6, 0),
(6, 7, 0),
(7, 7, 0),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 0),
(13, 13, 1),
(14, 9, 0),
(16, 10, 0),
(17, 19, 1),
(17, 50, 1),
(18, 11, 0),
(21, 11, 0),
(21, 45, 1),
(21, 105, 1),
(23, 25, 1),
(23, 56, 1),
(24, 26, 0),
(24, 47, 0),
(26, 28, 0),
(49, 5, 0),
(49, 138, 1),
(54, 60, 0),
(56, 85, 1),
(62, 60, 0),
(64, 122, 1),
(65, 123, 1),
(75, 101, 1),
(78, 101, 0),
(87, 50, 1),
(91, 148, 1),
(93, 124, 0),
(95, 183, 1),
(97, 122, 0),
(97, 155, 1),
(99, 131, 0),
(104, 175, 1),
(109, 8, 0),
(111, 73, 0),
(124, 186, 1),
(127, 181, 1),
(129, 140, 0),
(130, 31, 1),
(130, 91, 1),
(132, 50, 0),
(133, 94, 0),
(149, 79, 0),
(149, 140, 1),
(149, 171, 0),
(165, 186, 0),
(190, 179, 0),
(194, 131, 1);

--
-- Triggers `res_works_on_project`
--
DELIMITER $$
CREATE TRIGGER `res_works_on_project_ins` BEFORE INSERT ON `res_works_on_project` FOR EACH ROW BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from review
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Researcher is a reviewer on this project, cannot work.';
  end if;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `res_works_on_project_upd` BEFORE UPDATE ON `res_works_on_project` FOR EACH ROW BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from review
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Researcher is a reviewer on this project, cannot work.';
  end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `researcher_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `grade` int(10) UNSIGNED NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `review`
--
DELIMITER $$
CREATE TRIGGER `review_ins` BEFORE INSERT ON `review` FOR EACH ROW BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from res_works_on_project
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Reviewer working on this project, cannot review.';
  end if;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `review_upd` BEFORE UPDATE ON `review` FOR EACH ROW BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from res_works_on_project
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Reviewer working on this project, cannot review.';
  end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `scientific_field`
--

CREATE TABLE `scientific_field` (
  `sc_field_id` int(10) UNSIGNED NOT NULL,
  `name_of_sc_f` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scientific_field`
--

INSERT INTO `scientific_field` (`sc_field_id`, `name_of_sc_f`) VALUES
(17, 'Analytical Chemistry'),
(19, 'Astronomy'),
(4, 'Atmospheric Sciences'),
(2, 'Biology'),
(20, 'Cell Biology'),
(11, 'Chemistry'),
(15, 'Ecology'),
(13, 'Electromagnetics'),
(1, 'Embryology'),
(18, 'Ethology'),
(10, 'Genetics'),
(12, 'Geology'),
(14, 'Glaciology'),
(6, 'Kinetics'),
(3, 'Marine Biology'),
(5, 'Mechanics'),
(16, 'Neurobiology'),
(9, 'Structural Geology');

-- --------------------------------------------------------

--
-- Table structure for table `scientific_field_project`
--

CREATE TABLE `scientific_field_project` (
  `sc_field_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scientific_field_project`
--

INSERT INTO `scientific_field_project` (`sc_field_id`, `project_id`) VALUES
(1, 13),
(1, 34),
(1, 52),
(1, 70),
(1, 88),
(1, 106),
(1, 124),
(1, 143),
(1, 163),
(1, 181),
(1, 200),
(2, 12),
(2, 33),
(2, 51),
(2, 69),
(2, 87),
(2, 105),
(2, 123),
(2, 142),
(2, 162),
(2, 180),
(2, 199),
(3, 11),
(3, 32),
(3, 50),
(3, 68),
(3, 86),
(3, 104),
(3, 122),
(3, 141),
(3, 161),
(3, 179),
(3, 198),
(4, 10),
(4, 31),
(4, 49),
(4, 67),
(4, 85),
(4, 103),
(4, 121),
(4, 140),
(4, 160),
(4, 178),
(4, 197),
(5, 9),
(5, 30),
(5, 48),
(5, 66),
(5, 84),
(5, 102),
(5, 120),
(5, 138),
(5, 159),
(5, 177),
(5, 196),
(6, 8),
(6, 28),
(6, 47),
(6, 65),
(6, 83),
(6, 101),
(6, 119),
(6, 137),
(6, 158),
(6, 176),
(6, 195),
(9, 7),
(9, 27),
(9, 46),
(9, 64),
(9, 82),
(9, 100),
(9, 118),
(9, 136),
(9, 157),
(9, 175),
(9, 194),
(10, 6),
(10, 26),
(10, 45),
(10, 63),
(10, 81),
(10, 99),
(10, 117),
(10, 135),
(10, 156),
(10, 174),
(10, 193),
(11, 5),
(11, 25),
(11, 44),
(11, 62),
(11, 80),
(11, 98),
(11, 116),
(11, 134),
(11, 155),
(11, 173),
(11, 192),
(12, 4),
(12, 24),
(12, 43),
(12, 61),
(12, 79),
(12, 97),
(12, 115),
(12, 133),
(12, 154),
(12, 172),
(12, 191),
(13, 3),
(13, 23),
(13, 42),
(13, 60),
(13, 78),
(13, 96),
(13, 114),
(13, 132),
(13, 153),
(13, 171),
(13, 190),
(14, 2),
(14, 22),
(14, 41),
(14, 59),
(14, 77),
(14, 95),
(14, 113),
(14, 131),
(14, 151),
(14, 170),
(14, 189),
(15, 1),
(15, 21),
(15, 40),
(15, 58),
(15, 76),
(15, 94),
(15, 112),
(15, 130),
(15, 150),
(15, 169),
(15, 188),
(16, 20),
(16, 39),
(16, 57),
(16, 75),
(16, 93),
(16, 111),
(16, 129),
(16, 149),
(16, 168),
(16, 187),
(17, 19),
(17, 38),
(17, 56),
(17, 74),
(17, 92),
(17, 110),
(17, 128),
(17, 148),
(17, 167),
(17, 186),
(18, 16),
(18, 37),
(18, 55),
(18, 73),
(18, 91),
(18, 109),
(18, 127),
(18, 147),
(18, 166),
(18, 185),
(19, 15),
(19, 36),
(19, 54),
(19, 72),
(19, 90),
(19, 108),
(19, 126),
(19, 146),
(19, 165),
(19, 183),
(20, 14),
(20, 35),
(20, 53),
(20, 71),
(20, 89),
(20, 107),
(20, 125),
(20, 144),
(20, 164),
(20, 182);

-- --------------------------------------------------------

--
-- Table structure for table `telephones`
--

CREATE TABLE `telephones` (
  `telephone` varchar(20) NOT NULL,
  `org_id` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telephones`
--

INSERT INTO `telephones` (`telephone`, `org_id`) VALUES
('4508569989', 'SKIPTUBE'),
('3335776116', 'SKIPTUBE'),
('7538736463', 'SKIPTUBE'),
('3591173308', 'SKIPTUBE'),
('2169110160', 'SKIPTUBE'),
('1857879038', 'SKIPTUBE'),
('6578154553', 'SKIPTUBE'),
('7555496759', 'SKIPTUBE'),
('5216279380', 'SKIPTUBE'),
('3346254907', 'SKIPTUBE'),
('4223433187', 'DIVANOODLE'),
('6195437118', 'DIVANOODLE'),
('2961848021', 'DIVANOODLE'),
('6342292097', 'DIVANOODLE'),
('5207609017', 'DIVANOODLE'),
('8283290641', 'DIVANOODLE'),
('4764167985', 'DIVANOODLE'),
('1333591162', 'DIVANOODLE'),
('4964698655', 'DIVANOODLE'),
('5206351178', 'DIVANOODLE'),
('8714996356', 'QUIMBA'),
('5799011437', 'QUIMBA'),
('7293874834', 'QUIMBA'),
('3692941010', 'QUIMBA'),
('5716766717', 'QUIMBA'),
('4273658299', 'QUIMBA'),
('2292526197', 'QUIMBA'),
('2805271585', 'QUIMBA'),
('7364177004', 'QUIMBA'),
('1555345035', 'QUIMBA'),
('3112616973', 'SKIPFIRE'),
('5946708179', 'SKIPFIRE'),
('7679412741', 'SKIPFIRE'),
('1998931231', 'SKIPFIRE'),
('6375980727', 'SKIPFIRE'),
('3953160313', 'SKIPFIRE'),
('7758400027', 'SKIPFIRE'),
('6917780434', 'SKIPFIRE'),
('2518493094', 'SKIPFIRE'),
('4076837865', 'SKIPFIRE'),
('5243987220', 'THOUGHTWORKS'),
('3742917699', 'THOUGHTWORKS'),
('2213281013', 'THOUGHTWORKS'),
('2878245213', 'THOUGHTWORKS'),
('8199337302', 'THOUGHTWORKS'),
('1217619775', 'THOUGHTWORKS'),
('6721918672', 'THOUGHTWORKS'),
('2973625896', 'THOUGHTWORKS'),
('5856877838', 'THOUGHTWORKS'),
('5706225603', 'THOUGHTWORKS'),
('5172529532', 'PIXOPE'),
('7953298035', 'PIXOPE'),
('8542962647', 'PIXOPE'),
('7962719215', 'PIXOPE'),
('1629185018', 'PIXOPE'),
('2288746472', 'PIXOPE'),
('6265960535', 'PIXOPE'),
('7017470026', 'PIXOPE'),
('1032852370', 'PIXOPE'),
('8721710167', 'PIXOPE'),
('7991762502', 'WORDPEDIA'),
('1999186002', 'WORDPEDIA'),
('4105382882', 'WORDPEDIA'),
('8721096130', 'WORDPEDIA'),
('3621997114', 'WORDPEDIA'),
('4265135411', 'WORDPEDIA'),
('6725811553', 'WORDPEDIA'),
('4284159585', 'WORDPEDIA'),
('5695008666', 'WORDPEDIA'),
('4453285402', 'WORDPEDIA'),
('6242836019', 'OYOPE'),
('1398117825', 'OYOPE'),
('3935452707', 'OYOPE'),
('7807721664', 'OYOPE'),
('2933211490', 'OYOPE'),
('3703852258', 'OYOPE'),
('4209407778', 'OYOPE'),
('5987343375', 'OYOPE'),
('3814931172', 'OYOPE'),
('8052038299', 'OYOPE'),
('5983719202', 'MYWORKS'),
('3261409807', 'MYWORKS'),
('7701374384', 'MYWORKS'),
('1848053470', 'MYWORKS'),
('5689881700', 'MYWORKS'),
('8518777758', 'MYWORKS'),
('2081742682', 'MYWORKS'),
('2292073081', 'MYWORKS'),
('4122730622', 'MYWORKS'),
('1208521656', 'MYWORKS'),
('5991138141', 'VOOMM'),
('6091456293', 'VOOMM'),
('6049317721', 'VOOMM'),
('4535373586', 'VOOMM'),
('3376723677', 'VOOMM'),
('7519094023', 'VOOMM'),
('3381399491', 'VOOMM'),
('5788192503', 'VOOMM'),
('5349236979', 'VOOMM'),
('2874445957', 'VOOMM'),
('2614517744', 'BABBLESET'),
('1718194999', 'BABBLESET'),
('6137827742', 'BABBLESET'),
('7927655444', 'BABBLESET'),
('8569854753', 'BABBLESET'),
('6157559202', 'BABBLESET'),
('5919635640', 'BABBLESET'),
('2149103618', 'BABBLESET'),
('1133389939', 'BABBLESET'),
('7474356199', 'BABBLESET'),
('2584774096', 'REALBLAB'),
('5283831466', 'REALBLAB'),
('8248917076', 'REALBLAB'),
('6801456481', 'REALBLAB'),
('1092289868', 'REALBLAB'),
('4542706104', 'REALBLAB'),
('5901148575', 'REALBLAB'),
('2625707554', 'REALBLAB'),
('4375824887', 'REALBLAB'),
('7369004360', 'REALBLAB'),
('7087068537', 'KAZIO'),
('7127058301', 'KAZIO'),
('6785087612', 'KAZIO'),
('3775791085', 'KAZIO'),
('3355341066', 'KAZIO'),
('6188209566', 'KAZIO'),
('4551517828', 'KAZIO'),
('4472899933', 'KAZIO'),
('6455016180', 'KAZIO'),
('2928616966', 'KAZIO'),
('2927938151', 'FLASHDOG'),
('4139994822', 'FLASHDOG'),
('6294660117', 'FLASHDOG'),
('1362408225', 'FLASHDOG'),
('5736882080', 'FLASHDOG'),
('6209941942', 'FLASHDOG'),
('4896952855', 'FLASHDOG'),
('6843215794', 'FLASHDOG'),
('4274842344', 'FLASHDOG'),
('7221968249', 'FLASHDOG'),
('6197206485', 'DIGITUBE'),
('5111278947', 'DIGITUBE'),
('8081912927', 'DIGITUBE'),
('8769045246', 'DIGITUBE'),
('7378113648', 'DIGITUBE'),
('8618795714', 'DIGITUBE'),
('2479273731', 'DIGITUBE'),
('1835790062', 'DIGITUBE'),
('1051813084', 'DIGITUBE'),
('2674332788', 'DIGITUBE'),
('2982268603', 'VIVA'),
('1072075204', 'VIVA'),
('4726396118', 'VIVA'),
('4335753370', 'VIVA'),
('7023943470', 'VIVA'),
('7597094304', 'VIVA'),
('3794293703', 'VIVA'),
('8241928673', 'VIVA'),
('5128379421', 'VIVA'),
('3365606873', 'VIVA'),
('3773481600', 'LEENTI'),
('2529195705', 'LEENTI'),
('3744372168', 'LEENTI'),
('8716143436', 'LEENTI'),
('3474692354', 'LEENTI'),
('4529091658', 'LEENTI'),
('8629005391', 'LEENTI'),
('7138056799', 'LEENTI'),
('4225767492', 'LEENTI'),
('1026983918', 'LEENTI'),
('2846637299', 'QUAXO'),
('2118463594', 'QUAXO'),
('7545693403', 'QUAXO'),
('2941798151', 'QUAXO'),
('7784508992', 'QUAXO'),
('5544812427', 'QUAXO'),
('2403779493', 'QUAXO'),
('7241780973', 'QUAXO'),
('8366492436', 'QUAXO'),
('6798974296', 'QUAXO'),
('7469450393', 'MYBUZZ'),
('5062952049', 'MYBUZZ'),
('2526580349', 'MYBUZZ'),
('6532761386', 'MYBUZZ'),
('1818483449', 'MYBUZZ'),
('5473956956', 'MYBUZZ'),
('1011702772', 'MYBUZZ'),
('7167466169', 'MYBUZZ'),
('5008419545', 'MYBUZZ'),
('6427184250', 'MYBUZZ'),
('2551097173', 'VIDOO'),
('8603062701', 'VIDOO'),
('3364271841', 'VIDOO'),
('6502660941', 'VIDOO'),
('7735781287', 'VIDOO'),
('8602910440', 'VIDOO'),
('1979302007', 'VIDOO'),
('8189975695', 'VIDOO'),
('4774395156', 'VIDOO'),
('5732626898', 'VIDOO'),
('7302827418', 'BROWSEBUG'),
('5441237627', 'BROWSEBUG'),
('1182560894', 'BROWSEBUG'),
('3163592541', 'BROWSEBUG'),
('4595108272', 'BROWSEBUG'),
('5219908037', 'BROWSEBUG'),
('3148847052', 'BROWSEBUG'),
('1497737529', 'BROWSEBUG'),
('5595107132', 'BROWSEBUG'),
('6225839696', 'BROWSEBUG'),
('5114551173', 'LEEXO'),
('1039390057', 'LEEXO'),
('2266958330', 'LEEXO'),
('2306973469', 'LEEXO'),
('3225760086', 'LEEXO'),
('7624514479', 'LEEXO'),
('7758456796', 'LEEXO'),
('1436832789', 'LEEXO'),
('3308625168', 'LEEXO'),
('7794585336', 'LEEXO'),
('8727457685', 'CENTIMIA'),
('6821873645', 'CENTIMIA'),
('5955924911', 'CENTIMIA'),
('1915618517', 'CENTIMIA'),
('4835442574', 'CENTIMIA'),
('4401849317', 'CENTIMIA'),
('6057391263', 'CENTIMIA'),
('5269282563', 'CENTIMIA'),
('2936375780', 'CENTIMIA'),
('6195303781', 'CENTIMIA'),
('5311149475', 'TALANE'),
('6953114244', 'TALANE'),
('1447008188', 'TALANE'),
('4327900433', 'TALANE'),
('6999489459', 'TALANE'),
('1113911102', 'TALANE'),
('3137082007', 'TALANE'),
('5453710066', 'TALANE'),
('6869891948', 'TALANE'),
('3048039253', 'TALANE'),
('5797983410', 'COGIDOO'),
('6842998756', 'COGIDOO'),
('3409028704', 'COGIDOO'),
('5862283547', 'COGIDOO'),
('8575004027', 'COGIDOO'),
('4728640468', 'COGIDOO'),
('2721187929', 'COGIDOO'),
('8531855588', 'COGIDOO'),
('8538258999', 'COGIDOO'),
('2589298080', 'COGIDOO'),
('2251920447', 'MYNTE'),
('6074727525', 'MYNTE'),
('2707582282', 'MYNTE'),
('6006520276', 'MYNTE'),
('4365902683', 'MYNTE'),
('4959818099', 'MYNTE'),
('3765795761', 'MYNTE'),
('2095915356', 'MYNTE'),
('1795082185', 'MYNTE'),
('5644064419', 'MYNTE'),
('3907025883', 'TWIMM'),
('7202323812', 'TWIMM'),
('7641779200', 'TWIMM'),
('3822958144', 'TWIMM'),
('8678311594', 'TWIMM'),
('6768007595', 'TWIMM'),
('1938169711', 'TWIMM'),
('7294571514', 'TWIMM'),
('1449027959', 'TWIMM'),
('1232854122', 'TWIMM'),
('2865478547', 'WORDTUNE'),
('5774144399', 'WORDTUNE'),
('5795777472', 'WORDTUNE'),
('3383875831', 'WORDTUNE'),
('6873599614', 'WORDTUNE'),
('3025228282', 'WORDTUNE'),
('3456612598', 'WORDTUNE'),
('5273015044', 'WORDTUNE'),
('5374434209', 'WORDTUNE'),
('6559647912', 'WORDTUNE'),
('7802546199', 'TOPDRIVE'),
('7043743477', 'TOPDRIVE'),
('2421407440', 'TOPDRIVE'),
('2474592693', 'TOPDRIVE'),
('3169401914', 'TOPDRIVE'),
('4149486120', 'TOPDRIVE'),
('8097103042', 'TOPDRIVE'),
('2724068433', 'TOPDRIVE'),
('7723982295', 'TOPDRIVE'),
('1932540451', 'TOPDRIVE'),
('3309779677', 'FLASHSPAN'),
('6163633216', 'FLASHSPAN'),
('7914449432', 'FLASHSPAN'),
('6018556415', 'FLASHSPAN'),
('5331546229', 'FLASHSPAN'),
('2947737760', 'FLASHSPAN'),
('5308347904', 'FLASHSPAN'),
('3075956564', 'FLASHSPAN'),
('8414319931', 'FLASHSPAN'),
('7361477078', 'FLASHSPAN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `UN_ADMINISTRATION` (`admin_name`);

--
-- Indexes for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD PRIMARY KEY (`deliverable_date`,`project_id`),
  ADD UNIQUE KEY `UN_DELIVERABLE` (`deliverable_title`),
  ADD KEY `FK_DELIV_PROJECT_ID` (`project_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`employer_id`),
  ADD UNIQUE KEY `UN_EMPLOYER_MANAGERS_PROJECT` (`employer_name`);

--
-- Indexes for table `employer_manages_project`
--
ALTER TABLE `employer_manages_project`
  ADD PRIMARY KEY (`employer_id`,`project_id`),
  ADD KEY `FK_EMP_MAN_PROJECT_ID` (`project_id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`org_id`),
  ADD UNIQUE KEY `UN_ORGANISATION` (`org_name`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`),
  ADD UNIQUE KEY `UN_PROGRAM_NAME` (`program_name`);

--
-- Indexes for table `program_belongs_to_admin`
--
ALTER TABLE `program_belongs_to_admin`
  ADD PRIMARY KEY (`admin_id`,`program_id`),
  ADD KEY `FK_PRO_BEL_TO_ADMIN_PROGRAM_ID` (`program_id`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`project_id`),
  ADD UNIQUE KEY `UN_PROJECT_TILE` (`project_title`),
  ADD KEY `IDX_PROJECT_START_DATE` (`start_date`),
  ADD KEY `IDX_PROJECT_DURATION` (`duration`),
  ADD KEY `FK_ORG_ID_OF_PROJECT` (`org_id`);

--
-- Indexes for table `Project_donation`
--
ALTER TABLE `Project_donation`
  ADD PRIMARY KEY (`project_id`,`program_id`),
  ADD KEY `FK_PROJDON_PROGRAM_ID` (`program_id`);

--
-- Indexes for table `project_managed_by_org`
--
ALTER TABLE `project_managed_by_org`
  ADD PRIMARY KEY (`org_id`,`project_id`),
  ADD KEY `FK_PRO_MAN_BY_ORG_PROJECT_ID` (`project_id`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`researcher_id`);

--
-- Indexes for table `researcher_works_org`
--
ALTER TABLE `researcher_works_org`
  ADD PRIMARY KEY (`researcher_id`,`org_id`,`start_date_of_work`),
  ADD KEY `FK_RES_WORKS_ORG_ORG_ID` (`org_id`);

--
-- Indexes for table `res_works_on_project`
--
ALTER TABLE `res_works_on_project`
  ADD PRIMARY KEY (`researcher_id`,`project_id`),
  ADD KEY `FK_RES_WORKS_ON_PRO_PROJECT_ID` (`project_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`researcher_id`,`project_id`),
  ADD KEY `FK_REV_PROJECT_ID` (`project_id`);

--
-- Indexes for table `scientific_field`
--
ALTER TABLE `scientific_field`
  ADD PRIMARY KEY (`sc_field_id`),
  ADD UNIQUE KEY `UN_SCIENTIFIC_FIELD` (`name_of_sc_f`);

--
-- Indexes for table `scientific_field_project`
--
ALTER TABLE `scientific_field_project`
  ADD PRIMARY KEY (`project_id`,`sc_field_id`),
  ADD KEY `FK_SCI_FIELD_PRO_SC_FIELD_ID` (`sc_field_id`);

--
-- Indexes for table `telephones`
--
ALTER TABLE `telephones`
  ADD KEY `IDX_TELEPHONES_ORG_ID` (`org_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `employer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Project`
--
ALTER TABLE `Project`
  MODIFY `project_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `researcher`
--
ALTER TABLE `researcher`
  MODIFY `researcher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `scientific_field`
--
ALTER TABLE `scientific_field`
  MODIFY `sc_field_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD CONSTRAINT `FK_DELIV_PROJECT_ID` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `employer_manages_project`
--
ALTER TABLE `employer_manages_project`
  ADD CONSTRAINT `FK_EMPLOYER_ID` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`),
  ADD CONSTRAINT `FK_EMP_MAN_PROJECT_ID` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `program_belongs_to_admin`
--
ALTER TABLE `program_belongs_to_admin`
  ADD CONSTRAINT `FK_PRO_BEL_TO_ADMIN_ADMIN_ID` FOREIGN KEY (`admin_id`) REFERENCES `administration` (`admin_id`),
  ADD CONSTRAINT `FK_PRO_BEL_TO_ADMIN_PROGRAM_ID` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`);

--
-- Constraints for table `Project`
--
ALTER TABLE `Project`
  ADD CONSTRAINT `FK_ORG_ID_OF_PROJECT` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`) ON DELETE SET NULL;

--
-- Constraints for table `Project_donation`
--
ALTER TABLE `Project_donation`
  ADD CONSTRAINT `FK_PROJDON_PROGRAM_ID` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`),
  ADD CONSTRAINT `FK_PROJDON_PROJECT_ID` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `project_managed_by_org`
--
ALTER TABLE `project_managed_by_org`
  ADD CONSTRAINT `FK_PRO_MAN_BY_ORG_ORG_ID` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `FK_PRO_MAN_BY_ORG_PROJECT_ID` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `researcher_works_org`
--
ALTER TABLE `researcher_works_org`
  ADD CONSTRAINT `FK_RES_WORKS_ORG_ORG_ID` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `FK_RES_WORKS_ORG_RESEARCHER_ID` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `res_works_on_project`
--
ALTER TABLE `res_works_on_project`
  ADD CONSTRAINT `FK_RES_WORKS_ON_PRO_PROJECT_ID` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`),
  ADD CONSTRAINT `FK_RES_WORKS_ON_PRO_RESEARCHER_ID` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_REV_PROJECT_ID` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`),
  ADD CONSTRAINT `FK_REV_RESEARCHER_ID` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `scientific_field_project`
--
ALTER TABLE `scientific_field_project`
  ADD CONSTRAINT `FK_SCI_FIELD_PRO_PROJECT_ID` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`),
  ADD CONSTRAINT `FK_SCI_FIELD_PRO_SC_FIELD_ID` FOREIGN KEY (`sc_field_id`) REFERENCES `scientific_field` (`sc_field_id`);

--
-- Constraints for table `telephones`
--
ALTER TABLE `telephones`
  ADD CONSTRAINT `FK_TELEPHONES` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
