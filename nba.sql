-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2025 at 05:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nba`
--

-- --------------------------------------------------------

--
-- Table structure for table `dvorana`
--

CREATE TABLE `dvorana` (
  `dvoranaID` smallint(6) NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `kapacitet` smallint(6) DEFAULT NULL CHECK (`kapacitet` <= 25000),
  `gradID` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_ci;

--
-- Dumping data for table `dvorana`
--

INSERT INTO `dvorana` (`dvoranaID`, `naziv`, `kapacitet`, `gradID`) VALUES
(20001, 'American Airlines Center', 19200, 10011),
(20002, 'Ball Arena', 19520, 10012),
(20003, 'Barclays Center', 19000, 10005),
(20004, 'Capital One Arena', 20356, 10046),
(20005, 'Chase Center', 18064, 10039),
(20006, 'Crypto.com Arena', 19060, 10019),
(20007, 'Delta Center', 20000, 10036),
(20008, 'FedEx Forum', 18119, 10020),
(20009, 'Fiserv Forum', 17500, 10022),
(20010, 'Footprint Center', 17071, 10030),
(20011, 'Frost Bank Center', 19000, 10037),
(20012, 'Gainbridge Fieldhouse', 18345, 10016),
(20013, 'Golden 1 Center', 17500, 10035),
(20014, 'Intuit Dome', 18300, 10019),
(20015, 'Kaseya Center', 19600, 10021),
(20016, 'Kia Center', 20000, 10028),
(20017, 'Little Caesars Arena', 20332, 10013),
(20018, 'Madison Square Garden', 19500, 10026),
(20019, 'Moda Center', 19980, 10032),
(20020, 'Paycom Center', 18203, 10027),
(20021, 'Rocket Arena', 19432, 10010),
(20022, 'Scotiabank Arena', 19800, 10044),
(20023, 'Smoothie King Center', 17791, 10025),
(20024, 'Spectrum Center', 17500, 10007),
(20025, 'State Farm Arena', 18729, 10002),
(20026, 'Target Center', 19356, 10023),
(20027, 'TD Garden', 19580, 10004),
(20028, 'Toyota Center', 18104, 10015),
(20029, 'United Center', 21711, 10008),
(20030, 'Wells Fargo Center', 20301, 10029);

-- --------------------------------------------------------

--
-- Table structure for table `faza`
--

CREATE TABLE `faza` (
  `fazaID` smallint(6) NOT NULL,
  `naziv` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_ci;

--
-- Dumping data for table `faza`
--

INSERT INTO `faza` (`fazaID`, `naziv`) VALUES
(101, 'Regularna sezona'),
(102, 'Razigravanje');

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `gradID` smallint(6) NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `savezna_drzava` varchar(50) DEFAULT NULL,
  `kratica_drzave` char(2) DEFAULT NULL,
  `zemlja` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_ci;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`gradID`, `naziv`, `savezna_drzava`, `kratica_drzave`, `zemlja`) VALUES
(10001, 'Anderson', 'Indiana', 'IN', 'SAD'),
(10002, 'Atlanta', 'Georgia', 'GA', 'SAD'),
(10003, 'Baltimore', 'Maryland', 'MD', 'SAD'),
(10004, 'Boston', 'Massachusetts', 'MA', 'SAD'),
(10005, 'Brooklyn', 'New York', 'NY', 'SAD'),
(10006, 'Buffalo', 'New York', 'NY', 'SAD'),
(10007, 'Charlotte', 'North Carolina', 'NC', 'SAD'),
(10008, 'Chicago', 'Illinois', 'IL', 'SAD'),
(10009, 'Cincinnati', 'Ohio', 'OH', 'SAD'),
(10010, 'Cleveland', 'Ohio', 'OH', 'SAD'),
(10011, 'Dallas', 'Texas', 'TX', 'SAD'),
(10012, 'Denver', 'Colorado', 'CO', 'SAD'),
(10013, 'Detroit', 'Michigan', 'MI', 'SAD'),
(10014, 'Fort Wayne', 'Indiana', 'IN', 'SAD'),
(10015, 'Houston', 'Texas', 'TX', 'SAD'),
(10016, 'Indianapolis', 'Indiana', 'IN', 'SAD'),
(10017, 'Jersey City', 'New Jersey', 'NJ', 'SAD'),
(10018, 'Kansas City', 'Missouri', 'MO', 'SAD'),
(10019, 'Los Angeles', 'California', 'CA', 'SAD'),
(10020, 'Memphis', 'Tennessee', 'TN', 'SAD'),
(10021, 'Miami', 'Florida', 'FL', 'SAD'),
(10022, 'Milwaukee', 'Wisconsin', 'WI', 'SAD'),
(10023, 'Minneapolis', 'Minnesota', 'MN', 'SAD'),
(10024, 'Moline', 'Illinois', 'IL', 'SAD'),
(10025, 'New Orleans', 'Louisiana', 'LA', 'SAD'),
(10026, 'New York', 'New York', 'NY', 'SAD'),
(10027, 'Oklahoma City', 'Oklahoma', 'OK', 'SAD'),
(10028, 'Orlando', 'Florida', 'FL', 'SAD'),
(10029, 'Philadelphia', 'Pennsylvania', 'PA', 'SAD'),
(10030, 'Phoenix', 'Arizona', 'AZ', 'SAD'),
(10031, 'Pittsburgh', 'Pennsylvania', 'PA', 'SAD'),
(10032, 'Portland', 'Oregon', 'OR', 'SAD'),
(10033, 'Providence', 'Rhode Island', 'RI', 'SAD'),
(10034, 'Rochester', 'New York', 'NY', 'SAD'),
(10035, 'Sacramento', 'California', 'CA', 'SAD'),
(10036, 'Salt Lake City', 'Utah', 'UT', 'SAD'),
(10037, 'San Antonio', 'Texas', 'TX', 'SAD'),
(10038, 'San Diego', 'California', 'CA', 'SAD'),
(10039, 'San Francisco', 'California', 'CA', 'SAD'),
(10040, 'Seattle', 'Washington', 'WA', 'SAD'),
(10041, 'Sheboygan', 'Wisconsin', 'WI', 'SAD'),
(10042, 'St. Louis', 'Missouri', 'MO', 'SAD'),
(10043, 'Syracuse', 'New York', 'NY', 'SAD'),
(10044, 'Toronto', 'Ontario', 'ON', 'Kanada'),
(10045, 'Vancouver', 'British Columbia', 'BC', 'Kanada'),
(10046, 'Washington, DC', NULL, NULL, 'SAD'),
(10047, 'Waterloo', 'Iowa', 'IA', 'SAD');

-- --------------------------------------------------------

--
-- Table structure for table `igra`
--

CREATE TABLE `igra` (
  `utakmicaID` int(11) NOT NULL,
  `momcadID` char(3) NOT NULL,
  `domacin` tinyint(1) DEFAULT NULL,
  `pobjednik` tinyint(1) DEFAULT NULL,
  `p2m` smallint(6) DEFAULT NULL,
  `p2a` smallint(6) DEFAULT NULL,
  `p3m` smallint(6) DEFAULT NULL,
  `p3a` smallint(6) DEFAULT NULL,
  `ftm` smallint(6) DEFAULT NULL,
  `fta` smallint(6) DEFAULT NULL,
  `oreb` smallint(6) DEFAULT NULL,
  `dreb` smallint(6) DEFAULT NULL,
  `reb` smallint(6) DEFAULT NULL,
  `ast` smallint(6) DEFAULT NULL,
  `stl` smallint(6) DEFAULT NULL,
  `blk` smallint(6) DEFAULT NULL,
  `tov` smallint(6) DEFAULT NULL,
  `pf` smallint(6) DEFAULT NULL,
  `rezultat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `igrac`
--

CREATE TABLE `igrac` (
  `igracID` smallint(6) NOT NULL,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `godina_rodjenja` smallint(6) NOT NULL,
  `zemlja` varchar(16) NOT NULL,
  `visina` smallint(6) NOT NULL,
  `tezina` smallint(6) NOT NULL,
  `pozicija` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `je_nasljednik`
--

CREATE TABLE `je_nasljednik` (
  `nasljednikID` char(3) NOT NULL,
  `prethodnikID` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `je_nasljednik`
--

INSERT INTO `je_nasljednik` (`nasljednikID`, `prethodnikID`) VALUES
('ATL', 'STL'),
('BKN', 'NJN'),
('BLT', 'CHZ'),
('CAP', 'BLT'),
('CHB', 'CHR'),
('CHH', 'CHB'),
('CHZ', 'CHP'),
('CIN', 'ROC'),
('DET', 'FTW'),
('GSW', 'SFW'),
('HOU', 'SDR'),
('KCK', 'CIN'),
('LAC', 'SDC'),
('LAL', 'MNL'),
('MEM', 'VAN'),
('MIH', 'TCB'),
('NOP', 'NOH'),
('NJN', 'NYN'),
('OKC', 'SEA'),
('PHL', 'SYR'),
('SAC', 'KCK'),
('SDC', 'BUF'),
('SFW', 'PHW'),
('STL', 'MIH'),
('UTH', 'NOJ'),
('WAB', 'CAP'),
('WAW', 'WAB');

-- --------------------------------------------------------

--
-- Table structure for table `momcad`
--

CREATE TABLE `momcad` (
  `kratica` char(3) NOT NULL,
  `puni_naziv` varchar(50) NOT NULL,
  `nadimak` varchar(30) DEFAULT NULL,
  `prva_sezona` smallint(6) DEFAULT NULL CHECK (`prva_sezona` <= 2025),
  `aktivna_do` smallint(6) DEFAULT NULL CHECK (`aktivna_do` <= 2025),
  `gradID` smallint(6) DEFAULT NULL,
  `dvoranaID` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `momcad`
--

INSERT INTO `momcad` (`kratica`, `puni_naziv`, `nadimak`, `prva_sezona`, `aktivna_do`, `gradID`, `dvoranaID`) VALUES
('AND', 'Anderson Packers', 'Packers', 1949, 1949, 10001, NULL),
('ATL', 'Atlanta Hawks', 'Hawks', 1968, NULL, 10002, 20025),
('BKN', 'Brooklyn Nets', 'Nets', 2012, NULL, 10005, 20003),
('BLT', 'Baltimore Bullets', 'Bullets', 1963, 1972, 10003, NULL),
('BOM', 'St. Louis Bombers', 'Bombers', 1946, 1949, 10042, NULL),
('BOS', 'Boston Celtics', 'Celtics', 1946, NULL, 10004, 20027),
('BUF', 'Buffalo Braves', 'Braves', 1970, 1977, 10006, NULL),
('CAP', 'Capital Bullets', 'Bullets', 1973, 1973, 10046, NULL),
('CHB', 'Charlotte Bobcats', 'Bobcats', 2004, 2013, 10007, NULL),
('CHH', 'Charlotte Hornets', 'Hornets', 2014, NULL, 10007, 20024),
('CHI', 'Chicago Bulls', 'Bulls', 1966, NULL, 10008, 20029),
('CHP', 'Chicago Packers', 'Packers', 1961, 1961, 10008, NULL),
('CHR', 'Charlotte Hornets', 'Hornets', 1988, 2001, 10007, NULL),
('CHS', 'Chicago Stags', 'Stags', 1946, 1949, 10008, NULL),
('CHZ', 'Chicago Zephyrs', 'Zephyrs', 1962, 1962, 10008, NULL),
('CIN', 'Cincinnati Royals', 'Royals', 1957, 1971, 10009, NULL),
('CLE', 'Cleveland Cavaliers', 'Cavaliers', 1970, NULL, 10010, 20021),
('CLR', 'Cleveland Rebels', 'Rebels', 1946, 1946, 10010, NULL),
('DAL', 'Dallas Mavericks', 'Mavericks', 1980, NULL, 10011, 20001),
('DEF', 'Detroit Falcons', 'Falcons', 1946, 1946, 10013, NULL),
('DEN', 'Denver Nuggets', 'Nuggets', 1976, NULL, 10012, 20002),
('DET', 'Detroit Pistons', 'Pistons', 1957, NULL, 10013, 20017),
('FTW', 'Fort Wayne Zollner Pistons', 'Zollner Pistons', 1948, 1956, 10014, NULL),
('GSW', 'Golden State Warriors', 'State Warriors', 1971, NULL, 10039, 20005),
('HOU', 'Houston Rockets', 'Rockets', 1971, NULL, 10015, 20028),
('HUS', 'Toronto Huskies', 'Huskies', 1946, 1946, 10044, NULL),
('IND', 'Indiana Pacers', 'Pacers', 1976, NULL, 10016, 20012),
('INO', 'Indianapolis Olympians', 'Olympians', 1949, 1952, 10016, NULL),
('JET', 'Indianapolis Jets', 'Jets', 1948, 1948, 10016, NULL),
('KCK', 'Kansas City Kings', 'Kings', 1972, 1984, 10018, NULL),
('LAC', 'Los Angeles Clippers', 'Angeles Clippers', 1984, NULL, 10019, 20014),
('LAL', 'Los Angeles Lakers', 'Angeles Lakers', 1960, NULL, 10019, 20006),
('MEM', 'Memphis Grizzlies', 'Grizzlies', 2001, NULL, 10020, 20008),
('MIA', 'Miami Heat', 'Heat', 1988, NULL, 10021, 20015),
('MIH', 'Milwaukee Hawks', 'Hawks', 1951, 1954, 10022, NULL),
('MIL', 'Milwaukee Bucks', 'Bucks', 1968, NULL, 10022, 20009),
('MIN', 'Minnesota Timberwolves', 'Timberwolves', 1989, NULL, 10023, 20026),
('MNL', 'Minneapolis Lakers', 'Lakers', 1948, 1959, 10023, NULL),
('NOH', 'New Orleans Hornets', 'Hornets', 2002, 2012, 10025, NULL),
('NOJ', 'New Orleans Jazz', 'Jazz', 1974, 1978, 10025, NULL),
('NOP', 'New Orleans Pelicans', 'Pelicans', 2013, NULL, 10025, 20023),
('NYK', 'New York Knicks', 'York Knicks', 1946, NULL, 10026, 20018),
('NYN', 'New York Nets', 'Nets', 1976, 1976, 10026, NULL),
('NJN', 'New Jersey Nets', 'Nets', 1977, 2011, 10017, NULL),
('OKC', 'Oklahoma City Thunder', 'City Thunder', 2008, NULL, 10027, 20020),
('ORL', 'Orlando Magic', 'Magic', 1989, NULL, 10028, 20016),
('PHL', 'Philadelphia 76ers', '76ers', 1963, NULL, 10029, 20030),
('PHW', 'Philadelphia Warriors', 'Warriors', 1946, 1961, 10029, NULL),
('PHX', 'Phoenix Suns', 'Suns', 1968, NULL, 10030, 20010),
('PIT', 'Pittsburgh Ironmen', 'Ironmen', 1946, 1946, 10031, NULL),
('POR', 'Portland Trail Blazers', 'Trail Blazers', 1970, NULL, 10032, 20019),
('PRO', 'Providence Steamrollers', 'Steamrollers', 1946, 1948, 10033, NULL),
('ROC', 'Rochester Royals', 'Royals', 1948, 1956, 10034, NULL),
('SAC', 'Sacramento Kings', 'Kings', 1985, NULL, 10035, 20013),
('SAS', 'San Antonio Spurs', 'Spurs', 1976, NULL, 10037, 20011),
('SDC', 'San Diego Clippers', 'Clippers', 1978, 1983, 10038, NULL),
('SDR', 'San Diego Rockets', 'Rockets', 1967, 1970, 10038, NULL),
('SEA', 'Seattle SuperSonics', 'SuperSonics', 1967, 2007, 10040, NULL),
('SFW', 'San Francisco Warriors', 'Warriors', 1962, 1970, 10039, NULL),
('SHE', 'Sheboygan Red Skins', 'Red Skins', 1949, 1949, 10041, NULL),
('STL', 'St. Louis Hawks', 'Hawks', 1955, 1967, 10042, NULL),
('SYR', 'Syracuse Nationals', 'Nationals', 1949, 1962, 10043, NULL),
('TCB', 'Tri-Cities Blackhawks', 'Blackhawks', 1949, 1950, 10024, NULL),
('TOR', 'Toronto Raptors', 'Raptors', 1995, NULL, 10044, 20022),
('UTH', 'Utah Jazz', 'Jazz', 1979, NULL, 10036, 20007),
('VAN', 'Vancouver Grizzlies', 'Grizzlies', 1995, 2000, 10045, NULL),
('WAB', 'Washington Bullets', 'Bullets', 1974, 1996, 10046, NULL),
('WAC', 'Washington Capitols', 'Capitols', 1946, 1950, 10046, NULL),
('WAT', 'Waterloo Hawks', 'Hawks', 1949, 1949, 10047, NULL),
('WAW', 'Washington Wizards', 'Wizards', 1997, NULL, 10046, 20004);

-- --------------------------------------------------------

--
-- Table structure for table `trener`
--

CREATE TABLE `trener` (
  `trenerID` smallint(6) NOT NULL,
  `ime` varchar(16) NOT NULL,
  `prezime` varchar(16) NOT NULL,
  `ukupno_sezona` smallint(6) DEFAULT NULL,
  `ukupno_utakmica` smallint(6) DEFAULT NULL,
  `ukupno_pobjeda` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_ci;

--
-- Dumping data for table `trener`
--

INSERT INTO `trener` (`trenerID`, `ime`, `prezime`, `ukupno_sezona`, `ukupno_utakmica`, `ukupno_pobjeda`) VALUES
(30001, 'David', 'Adelman', 1, 17, 10),
(30002, 'Kenny', 'Atkinson', 5, 404, 188),
(30003, 'J.B.', 'Bickerstaff', 9, 655, 308),
(30004, 'Chauncey', 'Billups', 4, 328, 117),
(30005, 'Mike', 'Budenholzer', 11, 987, 576),
(30006, 'Rick', 'Carlisle', 23, 2026, 1079),
(30007, 'Doug', 'Christie', 1, 51, 27),
(30008, 'Mark', 'Daigneault', 5, 433, 233),
(30009, 'Billy', 'Donovan', 10, 846, 457),
(30010, 'Jordi', 'Fernandez', 1, 82, 26),
(30011, 'Chris', 'Finch', 5, 411, 230),
(30012, 'Willie', 'Green', 4, 338, 150),
(30013, 'Will', 'Hardy', 3, 246, 85),
(30014, 'Tuomas', 'Iisalo', 1, 13, 4),
(30015, 'Mitch', 'Johnson', 1, 77, 32),
(30016, 'Brian', 'Keefe', 2, 121, 26),
(30017, 'Steve', 'Kerr', 11, 1027, 671),
(30018, 'Jason', 'Kidd', 9, 765, 393),
(30019, 'Charles', 'Lee', 1, 82, 19),
(30020, 'Tyronn', 'Lue', 9, 709, 419),
(30021, 'Joe', 'Mazzulla', 3, 296, 215),
(30022, 'Jamahl', 'Mosley', 4, 340, 148),
(30023, 'Nick', 'Nurse', 7, 601, 325),
(30024, 'Darko', 'Rajakovic', 2, 164, 55),
(30025, 'JJ', 'Redick', 1, 87, 51),
(30026, 'Doc', 'Rivers', 26, 2204, 1276),
(30027, 'Quin', 'Snyder', 11, 878, 481),
(30028, 'Erik', 'Spoelstra', 17, 1552, 897),
(30029, 'Tom', 'Thibodeau', 13, 1101, 626),
(30030, 'Ime', 'Udoka', 3, 277, 161);

-- --------------------------------------------------------

--
-- Table structure for table `trenira`
--

CREATE TABLE `trenira` (
  `trenerID` smallint(6) NOT NULL,
  `momcadID` char(3) NOT NULL,
  `sezona_s_momcadi` smallint(6) DEFAULT 1,
  `utakmica_s_momcadi` smallint(6) DEFAULT 1,
  `pobjeda_s_momcadi` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `trenira`
--

INSERT INTO `trenira` (`trenerID`, `momcadID`, `sezona_s_momcadi`, `utakmica_s_momcadi`, `pobjeda_s_momcadi`) VALUES
(30001, 'DEN', 1, 17, 10),
(30002, 'CLE', 1, 91, 69),
(30003, 'DET', 1, 88, 46),
(30004, 'POR', 4, 328, 117),
(30005, 'PHX', 1, 82, 36),
(30006, 'IND', 8, 731, 379),
(30007, 'SAC', 1, 51, 27),
(30008, 'OKC', 5, 433, 233),
(30009, 'CHI', 5, 405, 196),
(30010, 'BKN', 1, 82, 26),
(30011, 'MIN', 5, 411, 230),
(30012, 'NOP', 4, 338, 150),
(30013, 'UTH', 3, 246, 85),
(30014, 'MEM', 1, 13, 4),
(30015, 'SAS', 1, 77, 32),
(30016, 'WAW', 2, 121, 26),
(30017, 'GSW', 11, 1027, 671),
(30018, 'DAL', 4, 368, 201),
(30019, 'CHH', 1, 82, 19),
(30020, 'LAC', 5, 437, 250),
(30021, 'BOS', 3, 296, 215),
(30022, 'ORL', 4, 340, 148),
(30023, 'PHL', 2, 170, 73),
(30024, 'TOR', 2, 164, 55),
(30025, 'LAL', 1, 87, 51),
(30026, 'MIL', 2, 129, 68),
(30027, 'ATL', 3, 191, 88),
(30028, 'MIA', 17, 1552, 897),
(30029, 'NYK', 5, 447, 250),
(30030, 'HOU', 2, 171, 96);

-- --------------------------------------------------------

--
-- Table structure for table `utakmica`
--

CREATE TABLE `utakmica` (
  `utakmicaID` int(11) NOT NULL,
  `sezona` smallint(6) NOT NULL,
  `fazaID` smallint(6) DEFAULT NULL,
  `datum_odigravanja` datetime DEFAULT NULL,
  `posjecenost` smallint(6) DEFAULT NULL CHECK (`posjecenost` <= 25000),
  `trajanje` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dvorana`
--
ALTER TABLE `dvorana`
  ADD PRIMARY KEY (`dvoranaID`),
  ADD KEY `gradID` (`gradID`);

--
-- Indexes for table `faza`
--
ALTER TABLE `faza`
  ADD PRIMARY KEY (`fazaID`);

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`gradID`);

--
-- Indexes for table `igra`
--
ALTER TABLE `igra`
  ADD PRIMARY KEY (`utakmicaID`,`momcadID`),
  ADD KEY `momcadID` (`momcadID`);

--
-- Indexes for table `igrac`
--
ALTER TABLE `igrac`
  ADD PRIMARY KEY (`igracID`);

--
-- Indexes for table `je_nasljednik`
--
ALTER TABLE `je_nasljednik`
  ADD PRIMARY KEY (`nasljednikID`,`prethodnikID`),
  ADD KEY `prethodnikID` (`prethodnikID`);

--
-- Indexes for table `momcad`
--
ALTER TABLE `momcad`
  ADD PRIMARY KEY (`kratica`),
  ADD KEY `gradID` (`gradID`),
  ADD KEY `dvoranaID` (`dvoranaID`);

--
-- Indexes for table `trener`
--
ALTER TABLE `trener`
  ADD PRIMARY KEY (`trenerID`);

--
-- Indexes for table `trenira`
--
ALTER TABLE `trenira`
  ADD PRIMARY KEY (`trenerID`,`momcadID`),
  ADD KEY `momcadID` (`momcadID`);

--
-- Indexes for table `utakmica`
--
ALTER TABLE `utakmica`
  ADD PRIMARY KEY (`utakmicaID`),
  ADD KEY `fazaID` (`fazaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faza`
--
ALTER TABLE `faza`
  MODIFY `fazaID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dvorana`
--
ALTER TABLE `dvorana`
  ADD CONSTRAINT `dvorana_ibfk_1` FOREIGN KEY (`gradID`) REFERENCES `grad` (`gradID`);

--
-- Constraints for table `igra`
--
ALTER TABLE `igra`
  ADD CONSTRAINT `igra_ibfk_1` FOREIGN KEY (`utakmicaID`) REFERENCES `utakmica` (`utakmicaID`),
  ADD CONSTRAINT `igra_ibfk_2` FOREIGN KEY (`momcadID`) REFERENCES `momcad` (`kratica`);

--
-- Constraints for table `je_nasljednik`
--
ALTER TABLE `je_nasljednik`
  ADD CONSTRAINT `je_nasljednik_ibfk_1` FOREIGN KEY (`nasljednikID`) REFERENCES `momcad` (`kratica`),
  ADD CONSTRAINT `je_nasljednik_ibfk_2` FOREIGN KEY (`prethodnikID`) REFERENCES `momcad` (`kratica`);

--
-- Constraints for table `momcad`
--
ALTER TABLE `momcad`
  ADD CONSTRAINT `momcad_ibfk_1` FOREIGN KEY (`gradID`) REFERENCES `grad` (`gradID`),
  ADD CONSTRAINT `momcad_ibfk_2` FOREIGN KEY (`dvoranaID`) REFERENCES `dvorana` (`dvoranaID`);

--
-- Constraints for table `trenira`
--
ALTER TABLE `trenira`
  ADD CONSTRAINT `trenira_ibfk_1` FOREIGN KEY (`trenerID`) REFERENCES `trener` (`trenerID`),
  ADD CONSTRAINT `trenira_ibfk_2` FOREIGN KEY (`momcadID`) REFERENCES `momcad` (`kratica`);

--
-- Constraints for table `utakmica`
--
ALTER TABLE `utakmica`
  ADD CONSTRAINT `utakmica_ibfk_1` FOREIGN KEY (`fazaID`) REFERENCES `faza` (`fazaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
