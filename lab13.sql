-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Wersja serwera:               10.1.10-MariaDB - mariadb.org binary distribution
-- Serwer OS:                    Win32
-- HeidiSQL Wersja:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Zrzut struktury bazy danych lab13
CREATE DATABASE IF NOT EXISTS `lab13` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lab13`;


-- Zrzut struktury tabela lab13.mytable
CREATE TABLE IF NOT EXISTS `mytable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Imie` varchar(255) DEFAULT NULL,
  `Nazwisko` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Miasto` varchar(50) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

-- Zrzucanie danych dla tabeli lab13.mytable: ~100 rows (około)
/*!40000 ALTER TABLE `mytable` DISABLE KEYS */;
INSERT INTO `mytable` (`id`, `Imie`, `Nazwisko`, `Email`, `Miasto`, `Zip`) VALUES
	(1, 'Stella', 'Fatima', 'iaculis.enim.sit@laoreet.com', 'Bromberg', '89062'),
	(2, 'Rama', 'Riley', 'adipiscing.enim@arcuSed.edu', 'West Bend', '14167'),
	(3, 'Kennan', 'Wang', 'sem.eget.massa@bibendum.org', 'Louisville', '05794'),
	(4, 'Stacey', 'Lani', 'montes.nascetur@vitaenibh.org', 'Radford', '76381'),
	(5, 'Karyn', 'Kadeem', 'eu.accumsan.sed@sedpede.com', 'Port Washington', 'E3Z 2T7'),
	(6, 'Caldwell', 'Cameron', 'nulla.In@conubianostraper.edu', 'Walnut', '86559'),
	(7, 'Hakeem', 'Marah', 'nulla.Integer@anteiaculis.com', 'Cruz Bay', 'B3E 3H3'),
	(8, 'Alan', 'Alika', 'odio.Phasellus@risusquis.ca', 'Vacaville', 'X7E 5G6'),
	(9, 'Jin', 'MacKenzie', 'mauris@risusa.org', 'Shelton', 'N8K 7E6'),
	(10, 'Barbara', 'Chantale', 'tellus.Phasellus.elit@tristiqueac.ca', 'Gilbert', 'G3Z 4T2'),
	(11, 'Branden', 'Darrel', 'adipiscing.non.luctus@metus.com', 'Providence', 'K3B 8Y2'),
	(12, 'Kaden', 'Alexander', 'Vestibulum.ante@Phasellusfermentum.org', 'Marlborough', 'W7J 8E1'),
	(13, 'Breanna', 'Erin', 'aliquet.nec@dignissimtemporarcu.com', 'Bentonville', 'N5N 6I4'),
	(14, 'Roary', 'Sacha', 'nec.urna@elementum.ca', 'North Tonawanda', '05443'),
	(15, 'Marshall', 'Kirby', 'pede.Suspendisse@ornaresagittisfelis.org', 'Laguna Niguel', '77322'),
	(16, 'Tucker', 'Libby', 'Donec.at.arcu@imperdietornare.ca', 'Laguna Niguel', 'Y2C 1Q5'),
	(17, 'Jenna', 'Allen', 'convallis@gravidasagittis.ca', 'Astoria', '48611'),
	(18, 'Unity', 'Jared', 'natoque@tellus.ca', 'Los Angeles', '49750'),
	(19, 'Pascale', 'Carter', 'Sed.eget@a.edu', 'Richmond', '17856'),
	(20, 'Jennifer', 'Patrick', 'Proin.velit.Sed@Vivamus.ca', 'Kenosha', '89528'),
	(21, 'Desiree', 'Regan', 'elit.Curabitur.sed@enimSednulla.edu', 'Chickasha', 'M9I 6S1'),
	(22, 'Colton', 'Geoffrey', 'a.arcu@pede.edu', 'Cambridge', '69754'),
	(23, 'Aristotle', 'Jerry', 'sed.sem.egestas@Donecat.ca', 'West Haven', '93486'),
	(24, 'Amos', 'Lewis', 'Mauris.ut.quam@afacilisisnon.edu', 'Calumet City', 'K3K 1E1'),
	(25, 'Macaulay', 'Macon', 'sit@dolorvitae.org', 'Battle Creek', '40974'),
	(26, 'Roth', 'Hillary', 'Cras.sed@vel.com', 'New Haven', '40374'),
	(27, 'Honorato', 'Thor', 'Quisque.tincidunt@acmattis.edu', 'Steubenville', 'Q9Z 1Y9'),
	(28, 'Stuart', 'Germane', 'Nunc.mauris.Morbi@nibhDonecest.com', 'Mesa', 'C5Z 2X7'),
	(29, 'Madonna', 'Ezra', 'Mauris.molestie@gravidasagittis.edu', 'La Verne', 'G1Y 3F8'),
	(30, 'Calvin', 'Ayanna', 'nibh@facilisisvitae.edu', 'Somersworth', '59140'),
	(31, 'Amal', 'Colt', 'lorem.ac.risus@sedtortorInteger.org', 'Alamogordo', 'E1M 3Z7'),
	(32, 'Jelani', 'Stella', 'Cras.eget.nisi@congue.ca', 'Chula Vista', '77269'),
	(33, 'Quentin', 'Reece', 'euismod.in.dolor@mienim.ca', 'Lufkin', 'V7E 8F4'),
	(34, 'Silas', 'Uta', 'ultrices.posuere.cubilia@apurusDuis.ca', 'McKeesport', 'A3D 8P8'),
	(35, 'Noelani', 'Gemma', 'magna.nec@enim.ca', 'Chicago Heights', '90318'),
	(36, 'Lisandra', 'Leroy', 'arcu.Sed.eu@Fuscealiquam.com', 'West Allis', 'W3I 2M1'),
	(37, 'Piper', 'Ferris', 'enim.Nunc.ut@luctusfelispurus.com', 'Boulder City', 'P7M 6E6'),
	(38, 'Jena', 'Prescott', 'ligula@In.org', 'New Madrid', '94036'),
	(39, 'Jerome', 'Ila', 'Duis.a@fringilla.ca', 'Revere', '82567'),
	(40, 'Caldwell', 'Quincy', 'urna.convallis@magnaNam.ca', 'Scottsdale', 'N4Z 5Y9'),
	(41, 'Roary', 'Liberty', 'cubilia.Curae;@velit.com', 'Menomonee Falls', '25840'),
	(42, 'Jana', 'Caryn', 'orci@Sedpharetra.ca', 'Binghamton', '53103'),
	(43, 'Meghan', 'Wade', 'enim@tortordictum.org', 'Middletown', 'E2A 4Q8'),
	(44, 'Stephanie', 'Miranda', 'dolor.quam@magnaDuisdignissim.org', 'Plainfield', 'Q4X 1N9'),
	(45, 'Harriet', 'Chaney', 'neque.Morbi.quis@aliquetProin.com', 'Greenville', '55059'),
	(46, 'Naomi', 'Honorato', 'diam.lorem.auctor@incursuset.edu', 'Fredericksburg', 'Y6B 3N0'),
	(47, 'Samuel', 'Isabella', 'et.arcu@sem.org', 'Perth Amboy', '06157'),
	(48, 'Odette', 'Kareem', 'semper.Nam@venenatisa.ca', 'Covina', 'E6Z 8R2'),
	(49, 'Gil', 'Raja', 'risus@ante.edu', 'Kalispell', '71842'),
	(50, 'Guy', 'Carolyn', 'adipiscing@erosturpis.edu', 'Gulfport', 'L4F 1J0'),
	(51, 'Otto', 'Martin', 'blandit.at@vitaemaurissit.ca', 'Thomasville', 'F7B 3M5'),
	(52, 'Macon', 'Slade', 'pede.Praesent.eu@aptenttacitisociosqu.ca', 'Weymouth', '83004'),
	(53, 'Griffith', 'Beck', 'lacus@Vivamusrhoncus.ca', 'Pembroke Pines', 'R9R 4B9'),
	(54, 'Shannon', 'Lani', 'Morbi.quis@augue.com', 'Lubbock', 'K2W 8D9'),
	(55, 'Denton', 'Kaitlin', 'odio@atnisi.edu', 'Fort Lauderdale', 'P9E 3I2'),
	(56, 'Desiree', 'Chanda', 'volutpat.Nulla.facilisis@famesacturpis.edu', 'Grand Rapids', '17705'),
	(57, 'Simone', 'Yoko', 'vitae.erat.Vivamus@adipiscing.ca', 'Lubbock', 'F7A 2X2'),
	(58, 'Kadeem', 'Callie', 'a.tortor@seddictumeleifend.org', 'Areceibo', '96763'),
	(59, 'Rebecca', 'Ebony', 'tristique@dignissim.ca', 'Irvine', 'H8R 1W8'),
	(60, 'Trevor', 'Camilla', 'diam.Pellentesque@Crasconvallisconvallis.edu', 'Cedar City', '07564'),
	(61, 'Courtney', 'Abraham', 'eu@interdum.org', 'Ruston', '02088'),
	(62, 'Ann', 'Phelan', 'mauris.ut.mi@diamPellentesquehabitant.edu', 'New Orleans', 'B7R 2M2'),
	(63, 'Raphael', 'Thomas', 'et.tristique@non.ca', 'Cape Coral', '78699'),
	(64, 'Kato', 'Stuart', 'Pellentesque@Morbineque.edu', 'Oneonta', 'U7B 6L1'),
	(65, 'Allistair', 'McKenzie', 'ipsum.Suspendisse.non@tempus.edu', 'Austin', '26512'),
	(66, 'Jordan', 'Aretha', 'ac.eleifend.vitae@morbi.ca', 'Avalon', 'Q1B 4D6'),
	(67, 'Rooney', 'Evangeline', 'nec.tempus@facilisis.org', 'Apple Valley', '67822'),
	(68, 'Abel', 'Kane', 'senectus.et.netus@massa.edu', 'Hammond', 'E6T 3R1'),
	(69, 'Hadley', 'Eden', 'magnis.dis.parturient@nislMaecenasmalesuada.ca', 'McKeesport', '92571'),
	(70, 'Sage', 'Alexis', 'nec@Nuncmauriselit.org', 'Visalia', 'A1M 6T7'),
	(71, 'Eaton', 'Stephen', 'Vestibulum@eliteratvitae.org', 'College Park', '01727'),
	(72, 'Jesse', 'Haviva', 'risus.Donec@pedeet.com', 'Pascagoula', '29524'),
	(73, 'Calvin', 'Amal', 'risus@Nullamlobortisquam.edu', 'Plattsburgh', 'N9X 6A6'),
	(74, 'Serena', 'Porter', 'orci@augue.org', 'Coos Bay', '47142'),
	(75, 'Irene', 'Troy', 'orci.Ut@erat.com', 'Lubbock', '16395'),
	(76, 'Upton', 'Alfonso', 'nunc@Donecsollicitudinadipiscing.ca', 'Boise', '72810'),
	(77, 'Alma', 'Kitra', 'molestie@ridiculusmus.ca', 'Newport Beach', '31348'),
	(78, 'Olivia', 'Isaiah', 'parturient.montes@imperdietdictum.com', 'Effingham', '43816'),
	(79, 'Omar', 'Donna', 'feugiat.Sed@adipiscingfringillaporttitor.edu', 'Florence', '19150'),
	(80, 'Karen', 'Zoe', 'dolor.egestas.rhoncus@imperdietornare.ca', 'Vail', '31775'),
	(81, 'Malik', 'Sawyer', 'viverra@augue.edu', 'Visalia', '32351'),
	(82, 'Kennedy', 'Blossom', 'mollis@pellentesque.com', 'Mentor', 'E5G 5Q0'),
	(83, 'Charity', 'Cecilia', 'a.malesuada@malesuadaid.edu', 'Connellsville', 'B9N 3J0'),
	(84, 'Isabelle', 'Thaddeus', 'amet@enimsitamet.ca', 'Durant', '14349'),
	(85, 'Whoopi', 'Irene', 'non@odio.com', 'Buena Park', 'R3H 6U5'),
	(86, 'Ahmed', 'Silas', 'ac@in.ca', 'Grambling', 'D2Q 5N0'),
	(87, 'James', 'Jael', 'mattis.Cras@Nullamsuscipit.org', 'Beaumont', '97923'),
	(88, 'Quamar', 'Regan', 'dui.augue@Cumsociisnatoque.org', 'Malden', 'A1I 2Q8'),
	(89, 'Nissim', 'Noel', 'at@lectus.org', 'Santa Monica', '85455'),
	(90, 'Miranda', 'William', 'enim@liberoMorbi.com', 'Peekskill', '88582'),
	(91, 'Reagan', 'Jemima', 'urna@vehicula.org', 'Honolulu', 'K2W 3S3'),
	(92, 'Raymond', 'Danielle', 'velit@ipsumsodales.edu', 'Hutchinson', '79565'),
	(93, 'Hilel', 'Tashya', 'Suspendisse.commodo@sagittisaugueeu.edu', 'Hoover', '46965'),
	(94, 'Brynn', 'Haviva', 'Aliquam.tincidunt.nunc@lectuspede.org', 'Carbondale', 'U5D 6N7'),
	(95, 'Desirae', 'Astra', 'gravida@veliteget.edu', 'Edina', 'N7N 3R1'),
	(96, 'Rebecca', 'Rigel', 'Curabitur.vel@idantedictum.org', 'Honolulu', 'Y2W 1T3'),
	(97, 'Quail', 'Acton', 'nulla.Integer@cursus.ca', 'Fort Smith', 'Y8X 4B5'),
	(98, 'Lewis', 'Skyler', 'ut.cursus@enimnon.com', 'Boulder City', 'Q1Q 5B3'),
	(99, 'Steel', 'Scott', 'facilisis.eget@erosnonenim.edu', 'Morrison', '35719'),
	(100, 'Raya', 'Paula', 'montes.nascetur@Nunc.edu', 'Concord', 'H7Q 3I1'),
	(101, 'Jan', 'Kowalski', 'jan@onet.pl', 'Bydgoszcz', '85-100'),
	(102, 'Wiktor', 'Nowakowski', 'wiktor.n@oniet.pl', 'Warszawa', '85106'),
	(103, 'Kamil', 'Marciniak', 'kam.marciniak@wupe.pl', 'Opole', '77H65'),
	(104, 'Romuald', 'Nowakowski', 'romuald.nowk@owk.pl', 'Bydgoszcz', '85256');
/*!40000 ALTER TABLE `mytable` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
