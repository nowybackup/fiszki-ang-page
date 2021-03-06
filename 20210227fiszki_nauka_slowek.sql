-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 27 Lut 2021, 10:43
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `fiszki_nauka_slowek`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fiszki`
--

CREATE TABLE `fiszki` (
  `id` int(11) NOT NULL,
  `v1` varchar(70) CHARACTER SET utf8 NOT NULL,
  `v2` varchar(70) CHARACTER SET utf8 NOT NULL,
  `weight` int(11) NOT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `info_table`
--

CREATE TABLE `info_table` (
  `id` int(11) NOT NULL,
  `name_table` varchar(70) CHARACTER SET utf8 NOT NULL,
  `flaga` varchar(70) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `info_table`
--

INSERT INTO `info_table` (`id`, `name_table`, `flaga`) VALUES
(1, 'Unit_1', '0'),
(2, 'Unit_2', '0'),
(3, 'Unit_3', '0'),
(4, 'Unit_4', '0'),
(5, 'Unit_5', '0'),
(6, 'Unit_6', '0'),
(7, 'Unit_8', '0'),
(8, 'tedtalks', '0'),
(9, 'fiszki', '0'),
(10, 'Media_1', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Media_1`
--

CREATE TABLE `Media_1` (
  `id` int(10) NOT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Media_1`
--

INSERT INTO `Media_1` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'a morninig paper', 'poranna gazeta', 1, '(brak)', 0),
(2, 'an evening paper', 'wieczorna gazeta', 1, '(brak)', 0),
(3, 'a Sunday paper', 'niedzielna gazeta', 1, '(brak)', 0),
(4, 'a colour supplement', 'kolorowy dodatek', 1, '(brak)', 0),
(5, 'a quality paper', 'powa??na gazeta', 1, '(brak)', 0),
(6, 'a tabloit', 'brukowiec', 1, '(brak)', 0),
(7, 'the gutter press', 'prasa drukowana', 1, '(brak)', 0),
(8, 'a glossy magazine', 'ilustrowane luksusowe czasopismo', 1, '(brak)', 0),
(9, 'a specialist magazine', 'magazyn specialistyczny', 1, '(brak)', 0),
(10, 'a womens\'s magazine', 'magazyn dla kobiet', 1, '(brak)', 0),
(11, 'a motoring press', 'czasopisma motoryzacyjne', 1, '(brak)', 0),
(12, 'an evening paper', 'wieczorna gazeta', 1, '(brak)', 0),
(13, 'a Sunday paper', 'niedzielna gazeta', 1, '(brak)', 0),
(14, 'a colour supplement', 'kolorowy dodatek', 1, '(brak)', 0),
(15, 'a quality paper', 'powa??na gazeta', 1, '(brak)', 0),
(16, 'a tabloit', 'brukowiec', 1, '(brak)', 0),
(17, 'the sutter press', 'prasa drukowana', 1, '(brak)', 0),
(18, 'a glossy press', 'ilustrowane luksusowe czasopismo', 1, '(brak)', 0),
(19, 'a specialist magazine', 'magazyn specialistyczny', 1, '(brak)', 0),
(20, 'a womens\'s magazine', 'magazyn dla kobiet', 1, '(brak)', 0),
(21, 'the motorning press', 'czasopisma motoryzacyjne', 1, '(brak)', 0),
(22, 'the ecomomic press', 'czsopisma ekonomiczne', 1, '(brak)', 0),
(23, 'a journal', 'czasopismo fachowe', 1, '(brak)', 0),
(24, 'the front page', 'pierwsza strona', 1, '(brak)', 0),
(25, 'the cover', 'ok??adka', 1, '(brak)', 0),
(26, 'the headlines', 'nag????wki', 1, '(brak)', 0),
(27, 'a section', 'rubryka', 1, '(brak)', 0),
(28, 'an article', 'artyku?? prasowy', 1, '(brak)', 0),
(29, 'a column', 'szpalta/felieton', 1, '(brak)', 0),
(30, 'the gossip column', 'kronnika towarzyska', 1, '(brak)', 0),
(31, 'the cover', 'ok??adka', 1, '(brak)', 0),
(32, 'the agony column', 'porady sercowe', 1, '(brak)', 0),
(33, 'the obituaries', 'nekrologi', 1, '(brak)', 0),
(34, 'the classified ads', 'og??oszenia drobne', 1, '(brak)', 0),
(35, 'the credits', 'napisy podaj??ce autor??w', 1, '(brak)', 0),
(36, 'an issue', 'wydanie, numer', 1, '(brak)', 0),
(37, 'a copy', 'egzemnplarz', 1, '(brak)', 0),
(38, 'the circulation', 'nak??ad', 1, '(brak)', 0),
(39, 'a subsciption', 'prenumerata', 1, '(brak)', 0),
(40, 'a subscriber', 'prenumerator', 1, '(brak)', 0),
(41, 'print', 'drukowa??', 1, '(brak)', 0),
(42, 'issue', 'wydawa??', 1, '(brak)', 0),
(43, 'come out', 'ukazywa?? sie', 1, '(brak)', 0),
(44, 'subscribe', 'prenumerowa??', 1, '(brak)', 0),
(45, 'daily', 'dziennik', 1, '(brak)', 0),
(46, 'weekly', 'tygodnik', 1, '(brak)', 0),
(47, 'monthly', 'miesi??cznik', 1, '(brak)', 0),
(48, 'quarterly', 'kwartalnik', 1, '(brak)', 0),
(49, 'a feature film', 'film dokumentalny', 1, '(brak)', 0),
(50, 'a return, a repeat', 'powt??rka, ponowna emisja', 1, '(brak)', 0),
(51, 'a cartoon', 'kresk??wka', 1, '(brak)', 0),
(52, 'a trailer', 'zwiastun', 1, '(brak)', 0),
(53, 'a commercial, an adverb', 'reklama', 1, '(brak)', 0),
(54, 'a commercial break', 'przerwa na reklamy', 1, '(brak)', 0),
(55, 'programme, schedule', 'planowa??', 1, '(brak)', 0),
(56, 'produce a show', 'nagrywa?? program', 1, '(brak)', 0),
(57, 'entrain', 'dostarcza?? rozrywki', 1, '(brak)', 0),
(58, 'engross', 'przyciaga??, poch??ania?? uwag??', 1, '(brak)', 0),
(59, 'live', 'na zywo', 1, '(brak)', 0),
(60, 'pre-recorded', 'nagrany wcze??niej', 1, '(brak)', 0),
(61, 'educational', 'edukacyjny', 1, '(brak)', 0),
(62, 'stulifving', 'og??upiaj??cy', 1, '(brak)', 0),
(63, 'addictive', 'uzale??niaj??cy', 1, '(brak)', 0),
(64, 'a T.V. journalist', 'dziennikarz telewizyjny', 1, '(brak)', 0),
(65, 'an anchorman', 'prezenter dy??urny', 1, '(brak)', 0),
(66, 'an announcer', 'spiker', 1, '(brak)', 0),
(67, 'a newsreader', 'prezenter wiadomo??ci', 1, '(brak)', 0),
(68, 'a compere', 'gospoda??/ni programu', 1, '(brak)', 0),
(69, 'a broadcaster', 'prezenter', 1, '(brak)', 0),
(70, 'a sportcaster', 'dziennikarz sportowy', 1, '(brak)', 0),
(71, 'a quiz master', 'osoba prowadz??ca quiz', 1, '(brak)', 0),
(72, 'be on the screen', 'by?? na ekranie', 1, '(brak)', 0),
(73, 'present the news', 'przedstawia?? wiadomo??ci', 1, '(brak)', 0),
(74, 'hold the audience', 'przykuwa?? uwag?? publiczno??ci', 1, '(brak)', 0),
(75, 'host, compere', 'by?? gospodarzem programu', 1, '(brak)', 0),
(76, 'the fourth estate', 'czwarta w??adza', 1, '(brak)', 0),
(77, 'the freedom on the press', 'wolno???? prasy', 1, '(brak)', 0),
(78, 'press freedom', 'swoboda prasy', 1, '(brak)', 0),
(79, 'freedom of expression speech', 'wolno???? wypowidzi s??owa', 1, '(brak)', 0),
(80, 'the right to know', 'prawo do informacji', 1, '(brak)', 0),
(81, 'investigative journalism', 'dziennikarstwo dochodzeniowe', 1, '(brak)', 0),
(82, 'mesia coverage', 'zainteresowanie medi??w', 1, '(brak)', 0),
(83, 'a newsmaker', 'temat z pierwszych stron gazet', 1, '(brak)', 0),
(84, 'the right to privacy', 'prawo do prywatno??ci', 1, '(brak)', 0),
(85, 'a breach of ethics', 'naruszenie etyki', 1, '(brak)', 0),
(86, 'propaganda', 'propaganda', 1, '(brak)', 0),
(87, 'a muckraker', 'dziennikarz szukaj??cy sensacji', 1, '(brak)', 0),
(88, 'a rumour', 'plotka', 1, '(brak)', 0),
(89, 'a scandal', 'skandal', 1, '(brak)', 0),
(90, 'libel', 'znies??awienie', 1, '(brak)', 0),
(91, 'slander', 'oszczerstwo, pom??wienie', 1, '(brak)', 0),
(92, 'voyeurism', 'podgl??dactwo', 1, '(brak)', 0),
(93, 'investigate a case', 'bada?? spraw??', 1, '(brak)', 0),
(94, 'cover', 'robi?? reporta?? o', 1, '(brak)', 0),
(95, 'spy', 'szpiegowa??', 1, '(brak)', 0),
(96, 'pester, harass', 'm??czy??, n??ka??', 1, '(brak)', 0),
(97, 'stalk', '??ledzi??', 1, '(brak)', 0),
(98, 'unearth, dig out', 'wydobywa?? na ??wiat??o dzienne', 1, '(brak)', 0),
(99, 'disclose', 'ujawnia??', 1, '(brak)', 0),
(100, 'expose a scandal', 'demaskowa??, ujawnia?? skandal', 1, '(brak)', 0),
(101, 'libel, defame', 'znies??awia??', 1, '(brak)', 0),
(102, 'slander', 'rzuca?? oszczerstwa', 1, '(brak)', 0),
(103, 'manipulate', 'manipulowa??', 1, '(brak)', 0),
(104, 'make the news', 'trafia?? na czo????wki', 1, '(brak)', 0),
(105, 'inaccurate', 'nie dok??adny', 1, '(brak)', 0),
(106, 'unreliable', 'niewiarygodny', 1, '(brak)', 0),
(107, 'objective', 'obiektywny', 1, '(brak)', 0),
(108, 'biassed, prejudiced', 'stronniczny, tendencyjny', 1, '(brak)', 0),
(109, 'electronic surveillance', 'inwigilacja elektroniczna', 1, '(brak)', 0),
(110, 'closed-circuit television', 'telewizja przemys??owa', 1, '(brak)', 0),
(111, 'wiretapping', 'pods??uch telefoniczny', 1, '(brak)', 0),
(112, 'a phone pug', 'pluskwa telefoniczna', 1, '(brak)', 0),
(113, 'eavesdropping', 'pods??uchiwanie', 1, '(brak)', 0),
(114, 'watch', 'obserwowa??', 1, '(brak)', 0),
(115, 'tap/bug a phone', 'za??o??y?? pods??uch telefoniczny', 1, '(brak)', 0),
(116, 'eavesdrop on', 'pods??uchiwa??', 1, '(brak)', 0),
(117, 'self-censorship', 'autocenzura', 1, '(brak)', 0),
(118, 'right of search', 'prawo do przeszukania', 1, '(brak)', 0),
(119, 'a seizure', 'konfiskata', 1, '(brak)', 0),
(120, 'a ban', 'zakaz', 1, '(brak)', 0),
(121, 'news blackout', 'zakaz rozpowszechniania informacji', 1, '(brak)', 0),
(122, 'censor', 'cenzurowa??', 1, '(brak)', 0),
(123, 'suppress press freedom', 'znie???? wolno???? prasy', 1, '(brak)', 0),
(124, 'media coverage', 'sprawozdanie w mediach', 1, '(brak)', 0),
(125, 'a journalist', 'dziennikarz', 1, '(brak)', 0),
(126, 'reporter', 'reportarz', 1, '(brak)', 0),
(127, 'a columnist', 'feletonista', 1, '(brak)', 0),
(128, 'a freelance', 'niezale??ny', 1, '(brak)', 0),
(129, 'a foreign corresponder', 'koresponder zagraniczny', 1, '(brak)', 0),
(130, 'an editor', 'redaktor naczelny', 1, '(brak)', 0),
(131, 'a newspaper editor', 'redaktor pisma', 1, '(brak)', 0),
(132, 'publisher', 'wydawca', 1, '(brak)', 0),
(133, 'a press tycoon', 'magnat prasowy', 1, '(brak)', 0),
(134, 'news gatherning', 'zbieranie informacji', 1, '(brak)', 0),
(135, 'a news release (US)', 'o??wiadczenie prasowe', 1, '(brak)', 0),
(136, 'inform', 'informmowa??', 1, '(brak)', 0),
(137, 'report', 'relacionowa??', 1, '(brak)', 0),
(138, 'cover', 'robi?? reportarz', 1, '(brak)', 0),
(139, 'rewrite', 'napisa?? od nowa', 1, '(brak)', 0),
(140, 'edit', 'redagowa??', 1, '(brak)', 0),
(141, 'publish', 'publikowa??', 1, '(brak)', 0),
(142, 'scoop', 'opublikowa?? przed konkurencj??', 1, '(brak)', 0),
(143, 'hot the headlines', 'trafi?? na nag????wki', 1, '(brak)', 0),
(144, 'sensitize publish opinion', 'uczuli?? opini?? publiczn??', 1, '(brak)', 0),
(145, 'make people awarge', 'u??wiadomi?? ludziom', 1, '(brak)', 0),
(146, 'have news value', 'stanowi?? interesuj??c?? wiadomo????', 1, '(brak)', 0),
(147, 'a radio set, a transmistor', 'osbiornik radiowy', 1, '(brak)', 0),
(148, 'a car radio', 'radio samochodowe', 1, '(brak)', 0),
(149, 'an aearial', 'antena', 1, '(brak)', 0),
(150, 'wave', 'fala', 1, '(brak)', 0),
(151, 'short wave', 'fale kt??tkie', 1, '(brak)', 0),
(152, 'short wave', 'fale ??rednie', 1, '(brak)', 0),
(153, 'long wave', 'fale d??ugie', 1, '(brak)', 0),
(154, 'freqency modulation', 'modulacja cz??stotliwo??ci', 1, '(brak)', 0),
(155, 'static interference', 'zak??ucenia elektroniczne', 1, '(brak)', 0),
(156, 'a radio announcer', 'prezent radiowy', 1, '(brak)', 0),
(157, 'the audience', 's??uchacze', 1, '(brak)', 0),
(158, 'a news bulletin', 'serwic wiadomo??ci', 1, '(brak)', 0),
(159, 'a news flesh', 'skr??t wiadomo??ci', 1, '(brak)', 0),
(160, 'the audience', 's??uchacze', 1, '(brak)', 0),
(161, 'a news bulletin', 'serwis wiadmo??ci', 1, '(brak)', 0),
(162, 'pick up', 'skr??t wiadmo??ci', 1, '(brak)', 0),
(163, 'broadcaster', 'nadawa??', 1, '(brak)', 0),
(164, 'be on air', 'by?? na antenie', 1, '(brak)', 0),
(165, 'be off the air', 'nie by?? na antenie', 1, '(brak)', 0),
(166, 'a television set', 'odbiornik telewizyjny', 1, '(brak)', 0),
(167, 'a black an white tv', 'telewizja czarno-bia??a', 1, '(brak)', 0),
(168, 'a colour tv', 'kolorowa telewizja', 1, '(brak)', 0),
(169, 'the remote control, the zapper', 'zdalne sterowanie, pilotem', 1, '(brak)', 0),
(170, 'a screen', 'ekran', 1, '(brak)', 0),
(171, 'a channel', 'kana??', 1, '(brak)', 0),
(172, 'a network', 'sie??', 1, '(brak)', 0),
(173, 'cable tevision', 'telewizja kablowa', 1, '(brak)', 0),
(174, 'a dish aerial', 'telewizja satelitarna, talerz', 1, '(brak)', 0),
(175, 'pay-per-view television', 'p??atne programy w telewizji', 1, '(brak)', 0),
(176, 'toll channel', 'p??atny kana??', 1, '(brak)', 0),
(177, 'a tv decoder', 'dekoder telewizyjny', 1, '(brak)', 0),
(178, 'a video-cassete recorder', 'magnetowid', 1, '(brak)', 0),
(179, 'a videotape', 'ta??ma wideo', 1, '(brak)', 0),
(180, 'a viewer', 'telewidz', 1, '(brak)', 0),
(181, 'a channer jumper', 'osoba skacz??ca z kana??u na kana??', 1, '(brak)', 0),
(182, 'a tv addict', 'telemaniak, uzale??niony od tv', 1, '(brak)', 0),
(183, 'watch tv', 'ogl??da?? tv', 1, '(brak)', 0),
(184, 'turn the tv on/off', 'w????czy??, wy????czy?? tv', 1, '(brak)', 0),
(185, 'channel-flick, zap', 'skaka?? po kana??ach', 1, '(brak)', 0),
(186, 'videotape, record', 'nagrywa?? na ta??m??', 1, '(brak)', 0),
(187, 'duplicate', 'kopiowa??', 1, '(brak)', 0),
(188, 'a programme', 'program', 1, '(brak)', 0),
(189, 'a morning programme', 'program poranny', 1, '(brak)', 0),
(190, 'an evening programme', 'program wieczorny', 1, '(brak)', 0),
(191, 'air time', 'czas na antenie', 1, '(brak)', 0),
(192, 'the ratings', 'notowania', 1, '(brak)', 0),
(193, 'prime time', 'najlepszy czas antenowy', 1, '(brak)', 0),
(194, 'an audience share', 'ogl??dalno????', 1, '(brak)', 0),
(195, 'news', 'wiadomo??ci', 1, '(brak)', 0),
(196, 'a documentary', 'program dokumentalny', 1, '(brak)', 0),
(197, 'a sports broadcaster', 'transmisja sportowa', 1, '(brak)', 0),
(198, 'the weather forecast', 'prognoza pogody', 1, '(brak)', 0),
(199, 'a show', 'program rozrywkowy', 1, '(brak)', 0),
(200, 'a variety show', 'varietes', 1, '(brak)', 0),
(201, 'a quiz show', 'quiz, teleturniej', 1, '(brak)', 0),
(202, 'a talk show, a chat show', 'talk show', 1, '(brak)', 0),
(203, 'a serial', 'serial', 1, '(brak)', 0),
(204, 'a series', 'cykl, seria', 1, '(brak)', 0),
(205, 'a television film', 'film telewizyjny', 1, '(brak)', 0),
(206, 'be subject to censorship', 'podlega?? cenzurze', 1, '(brak)', 0),
(207, 'blue-pencil', 'wykre??la??, cenzurowa??', 1, '(brak)', 0),
(208, 'silence', 'uciszy??', 1, '(brak)', 0),
(209, 'gag', 'zakneblowa??', 1, '(brak)', 0),
(210, 'curtail access', 'ograniczy?? dost??p', 1, '(brak)', 0),
(211, 'confiscate, seize', 'konfiskowa??, zaj????', 1, '(brak)', 0),
(212, 'ban, suppress', 'zakaza??, zataja??', 1, '(brak)', 0),
(213, 'quality papers', 'ambitne pismo du??ego formatu', 1, '(brak)', 0),
(214, 'tabloids', 'popularne pisma ??redniego formatu', 1, '(brak)', 0),
(215, 'British Brodcaster Corporation', 'BBC', 1, '(brak)', 0),
(216, 'Independent Television', 'ITV', 1, '(brak)', 0),
(217, 'American Broadcasting Corporation', 'ABC', 1, '(brak)', 0),
(218, 'National Broadcasting Company', 'NBC', 1, '(brak)', 0),
(219, 'Columbia Broadcasting System', 'CBS', 1, '(brak)', 0),
(220, 'Cable News Network', 'CNN', 1, '(brak)', 0),
(221, 'Instructional TV', 'ITV', 1, '(brak)', 0),
(222, 'Music Tv', 'MTV', 1, '(brak)', 0),
(223, 'The Press Association', 'P.A', 1, '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tedtalks`
--

CREATE TABLE `tedtalks` (
  `id` int(2) DEFAULT NULL,
  `v1` varchar(28) DEFAULT NULL,
  `v2` varchar(27) DEFAULT NULL,
  `weight` int(1) DEFAULT NULL,
  `zdanie` varchar(124) DEFAULT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tedtalks`
--

INSERT INTO `tedtalks` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'civil war', 'wojna domowa', 1, 'There is a civil war going on in some countries', 0),
(2, 'eldest people', 'starszyzna', 1, 'There used to be an elders instead of a government', 0),
(3, 'medical care', 'opieka medyczna', 1, 'A lot of people needs medical care.', 0),
(4, 'fled abroad', 'ucieczka za granice', 1, 'Most people fled abroad when it is hard in the country.', 0),
(5, 'stand on our feet', 'staramy si?? pomaga??', 1, 'In time epidemic everyone stand on feet other people.', 0),
(6, 'victims', 'ofiary', 1, 'In the war everytime are victims.', 0),
(7, 'majority', 'wi??kszo????', 1, 'Majority world society don\'t know about bad situation in Africa.', 0),
(8, 'political division', 'podzia?? polityczny', 1, 'Poland goverment is politcal divison: right and left site.', 0),
(9, 'desire', 'pragnienie', 1, 'I have big desire that come back normal life.', 0),
(10, 'surgery', 'chirurgia', 1, 'My cousin studded surgery at University of Katowice.', 0),
(11, 'distinguished', 'wybitny', 1, 'He is an distinguished scientist in Poland.', 0),
(12, 'circumstances', 'okoliczno??ci', 1, 'What were the circumstances of the outbreak of civil war?', 0),
(13, 'respecting', 'dotycz??cy', 1, 'I found a document respecting my serious illness.', 0),
(14, 'essential', 'kluczowy', 1, 'Always when telling a story, you have to go through a essential moment.', 0),
(15, 'treating', 'leczenie', 1, 'They are treating a lot of children and women.', 0),
(16, 'camp', 'ob??z', 1, 'I went to camp on vacation.', 0),
(17, 'cesarean section', 'cesarskie ci??cie', 1, 'My neighbor had a caesarean section.', 0),
(18, 'elementary', 'podstaw??wka', 1, 'I had only good grades in elementary.', 0),
(19, 'rule', 'zasada', 1, 'The rules are there to break them.', 0),
(20, 'clan divisions', 'podzia??y klanowe', 1, 'There is a clan division in my village.', 0),
(21, 'cesarean section', 'cesarskie ci??cie', 1, 'We are doing caesarean section and diffrent operations.', 0),
(22, 'medical care', 'opieka medyczna', 1, 'You running a medical clinic,but much, much needed medical care to people', 0),
(23, 'circumstances', 'okoliczno??ci', 1, 'For you to become a doctor and to work with your mother in these circumstances.', 0),
(24, 'law and order', 'prawo i porz??dek', 1, 'It was we were having that time government- law and order', 0),
(25, 'gynecological complication', 'powik??ania ginekologicze', 1, 'My mother died in gynecological complication.', 0),
(26, 'war zone', 'strefa dzia??a?? wojennych', 1, 'and if you did you are forgiven for wondering how an nutt manage to end up in a war zone', 0),
(27, 'in war-torn', 'w ogarni??tej wojn??', 1, 'I actually was offered right out of medical school and actepted a volunteer contract to work with UNICEF in war-torn Somalia', 0),
(28, 'caused by the war', 'spowodowane wojn??', 1, '(brak)', 0),
(29, 'genocide', 'ludob??jstwo', 1, 'It was right on the heels of the Rwandan Genocide and ...', 0),
(30, 'malnutrition and dehydration', 'niedo??ywienie i odwodnienie', 1, 'She had died hours before an malnutrition and deyhydration.', 0),
(31, 'malnourished', 'niedo??ywienie', 1, 'Children became very malnourished', 0),
(32, 'backyard', 'podw??rko', 1, 'They are in our backyard', 0),
(33, 'severe', 'silny', 1, 'We take the severe ones, and we reschedule the other ones the next day.', 0),
(34, 'reschedule', 'zmieni?? termin', 1, 'We take the severe ones, and we reschedule the other ones the next day.', 0),
(35, 'majority', 'wi??kszo????', 1, 'The majority are women and girls.', 0),
(36, 'admission', 'wst??p, dost??p, pozwolenie', 1, 'Would you explain the rules for admission?', 0),
(37, 'distinguished', 'wybitny', 1, 'There is no clan distinguishes and political division in Somali sociaty.', 0),
(38, 'Whomever', 'wyrzucamy', 1, 'Whomever makes those things we throw out.', 0),
(39, 'surgeries', 'operacje', 1, 'You see 300 patients, 20 surgeries and 90,000 people to manage.', 0),
(40, 'backyard', 'podw??rko', 1, 'So our patients are women and children and they are in our backyard', 0),
(41, 'reschedule', 'zmiana terminu', 1, 'We reschedule the other ones the next day.', 0),
(42, 'Rules', 'zasady', 1, 'And the doctors have some very big rules about who can get treated at the clinic.', 0),
(43, 'dehydration', 'odwodnienie', 1, 'When you take on a lot of sport activities, remember about drinking water to avoid dehydration!', 0),
(44, 'Automatic rifle', 'karabin maszynowy', 1, 'Automatic rifles fire a series of shots each time you pull the trigger', 0),
(45, 'force', 'si??a', 1, 'Force is calculated as mass times accelaration.', 0),
(46, 'Invasion', 'inwazja', 1, 'In 1588 Spain has invaded England.', 0),
(47, 'various', 'r????ny', 1, 'Everybody have various views.', 0),
(48, 'Humanitarian catastrophe', 'Katastrofa humanitarna', 1, 'Africa is one of the most country where is a humanitarian catastrophe.', 0),
(49, 'Stiff', 'Sztywny', 1, 'My leg is stiff. My doctor gived me a iron splint after my breaking.', 0),
(50, 'Occupying', 'Zajmowanie', 1, 'In World War II the Nazist occupying western part Poland.', 0),
(51, 'Coercion', 'Przymus', 1, 'In times reigning Roma slaves were coercion to fight as gladiator.', 0),
(52, 'nutt', '??wir', 1, 'Everybody calls nutt people who eat bread with chips.', 0),
(53, 'nursery school', 'szko??a medyczna', 1, 'I am planning to go to nursery school.', 0),
(54, 'weapon', 'bro??', 1, 'In Poland it\'s difficult to get a permission for weapon.', 0),
(55, 'disclosure mechanisms', 'mechanizmy jawno??ci', 1, 'the government is working on introducing a disclosure mechanism.', 0),
(56, 'demand', 'popyt', 1, 'Demand for face masks has increased in the face of epidemics.', 0),
(57, 'treaty', 'traktat', 1, 'The president has signed a new treaty', 0),
(58, 'mostly', 'przewa??nie', 1, 'Mostly poor children die because they are malnourished.', 0),
(59, 'rifles', 'karabiny', 1, 'The rifles shouldn\'t be as accessible as they are now.', 0),
(60, 'favor', 'przys??uga', 1, 'The rich people should do favor children and help them.', 0),
(61, 'staggering', 'osza??amiaj??cy', 1, 'A lot of children are starving, it\'s staggering.', 0),
(62, 'displaced', 'przesiedlony', 1, 'Because of the war, most people are displaced to another place.', 0),
(63, 'combat', 'walka', 1, 'The combat between states is terrible.', 0),
(64, 'contributions', 'udzia??y', 1, 'Regular contributions like monthly contributions are a far more effective way to giving.', 0),
(65, 'Terryfing', 'Okropny', 1, 'I can tell you that it is a terryfing and agonizing fear', 0),
(66, 'Clockwork', 'Mechaniczna', 1, 'Can best be describe as \"Mad Max\" by way of \"a Clockwork Orange\"', 0),
(67, 'Infans', 'niemowl??', 1, 'They were clutchig their infants very close', 0),
(68, 'coercion', 'nacisk', 1, 'Not through force or coercion or invasion,but by simply looking at all', 0),
(69, 'civillians', 'Cywile', 1, 'The vast majority of civillians like that young baby who are dying in war zones around the world', 0),
(70, 'famine', 'g????d', 1, 'Mostly as results of war-related famine and disease.', 0),
(71, 'figure out', 'rozwi??za??', 1, 'I was part of a team that was tasked with trying figure out how best to respond to this humanitarian catastrope.', 0),
(72, 'scrutinzing', 'bada??', 1, 'This is a relationshio worth scrutinzing.', 0),
(73, 'increased', 'wzros??a', 1, 'Increased control mechanisms won\'t solve that problem.', 0),
(74, 'terrifining', 'przera??aj??ce', 1, 'I can tell you that it is a terryfing and agonizing fear', 0),
(75, 'beyond', 'poza', 1, 'What when if we go beyond small arms for a second?', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Unit_1`
--

CREATE TABLE `Unit_1` (
  `id` int(11) NOT NULL,
  `v1` varchar(70) CHARACTER SET utf8 NOT NULL,
  `v2` varchar(70) CHARACTER SET utf8 NOT NULL,
  `weight` int(11) NOT NULL,
  `zdanie` varchar(255) CHARACTER SET utf8 NOT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Unit_1`
--

INSERT INTO `Unit_1` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(6, 'extended family', 'dalsza rodzina, wielopokoleniowa rodzina', 1, '(brak)jjj', 1),
(10, 'great-grandparents', 'pradziadkowie', 1, '777', 1),
(11, 'my immediate family', 'moja najbli??sza rodzina', 1, '(brak)', 1),
(12, 'include', 'zawiera??', 1, '(brak)', 1),
(13, 'inherit', 'odziedziczy??', 1, '(brak)', 1),
(14, 'inherited', 'odziedziczony', 1, '(brak)', 1),
(15, 'medallist', 'medalista', 1, '(brak)', 1),
(16, 'relative', 'krewny', 1, '(brak)', 1),
(17, 'royal', 'kr??lewski', 1, '(brak)', 1),
(18, 'take after', 'upodabnia??, przypomina?? kogo??, by?? podobnym', 1, '(brak)', 1),
(19, 'aim', 'cel, d????enie', 1, '(brak)', 1),
(20, 'apply for a job', 'ubiega?? si?? o prac??', 1, '(brak)', 1),
(21, 'colleague', 'kolega', 1, '(brak)', 1),
(22, 'draft', 'projekt, szkic, wersja roboczac', 1, '(brak)cc', 1),
(23, 'publishing company', 'wydawnictwo', 1, '(brak)', 1),
(24, 'specialisation', 'specjalizacja', 1, '(brak)', 1),
(25, 'version', 'wersja', 1, '(brak)', 1),
(26, 'ability', 'zdolno????', 1, '(brak)', 1),
(27, '', '', 1, '', 1),
(28, 'be in charge', 'by?? u w??adzy, rz??dzi??', 1, '(brak)', 1),
(29, 'gene', 'gen', 1, '(brak)', 1),
(30, 'genetic', 'genetyczny', 1, '(brak)', 1),
(31, 'accurate', 'dok??adny, trafny', 1, '(brak)', 1),
(32, 'chain', '??a??cuch', 1, '(brak)', 1),
(33, 'classmate', 'kolega z klasy', 1, '(brak)', 1),
(34, 'handlebar', 'kierownica', 1, '(brak)', 1),
(35, 'pupil', 'ucze??', 1, '(brak)', 1),
(36, 'team-mate', 'kolega z dru??yny', 1, '(brak)', 1),
(37, 'according to', 'wed??ug, zgodnie z', 1, '(brak)', 1),
(38, 'balance', 'bilans', 1, '(brak)', 1),
(39, 'challenge', 'wyzwanie', 1, '(brak)', 1),
(40, 'do someone a favour', 'zrobi?? komu?? przys??ug??', 1, '(brak)', 1),
(41, 'get on with someone', 'dogadywa?? si?? z kim?? by?? z kim?? w dobrych stosunkach', 1, '(brak)', 1),
(42, 'go on a diet', 'przej???? na diet??', 1, '(brak)', 1),
(43, 'research agency', 'agencja badawcza', 1, '(brak)', 1),
(44, 'respond', 'odpowiada??', 1, '(brak)', 1),
(45, 'take part in', 'wzi???? udzia?? w', 1, '(brak)', 1),
(46, 'take responsibility for', 'wzi???? odpowiedzialno???? za', 1, '(brak)', 1),
(47, 'appropriately', 'odpowiednio', 1, '(brak)', 1),
(48, 'answer briefly', 'odpowiada?? kr??tko, zwi????le', 1, '(brak)', 1),
(49, 'dress smartly', 'ubra?? si?? elegancko', 1, '(brak)', 1),
(50, 'send references', 'wys??a?? referencje', 1, '(brak)', 1),
(51, 'arrive on time', 'przyby?? na czas', 1, '(brak)', 1),
(52, 'avoid eye contact', 'unika?? kontaktu wzrokowego', 1, '(brak)', 1),
(53, 'show enthusiasm', 'pokaza?? entuzjazm', 1, '(brak)', 1),
(54, 'be prepared', 'by?? przygotowany', 1, '(brak)', 1),
(55, 'face-to-face', 'twarz?? w twarz', 1, '(brak)', 1),
(56, 'placement', 'umieszczenie, ulokowanie', 1, '(brak)', 1),
(57, 'potential', 'potencja??', 1, '(brak)', 1),
(58, 'on the summer camp', 'na letnim obozie', 1, '(brak)', 1),
(59, 'according', 'stosownie, zale??nie', 1, '(brak)', 1),
(60, 'community', 'spo??eczno????, wsp??lnota', 1, '(brak)', 1),
(61, 'currency', 'waluta', 1, '(brak)', 1),
(62, 'yes, definitely', 'tak, zdecydowanie', 1, '(brak)', 1),
(63, 'of course!', 'oczywi??cie!', 1, '(brak)', 1),
(64, 'that\'s right!', 'racja!', 1, '(brak)', 1),
(65, 'you\'re correct', 'masz racj?? (ze s????wkiem correct)', 1, '(brak)', 1),
(66, 'I see', 'Rozumiem (ze s????wkiem see)', 1, '(brak)', 1),
(67, 'no problem', 'nie ma sprawy', 1, '(brak)', 1),
(68, 'you\'re welcome', 'nie ma za co, prosz?? bardzo', 1, '(brak)', 1),
(69, 'go ahead', '??mia??o (id?? dalej, naprz??d)', 1, '(brak)', 1),
(70, 'please continue', 'prosz?? kontynuowa??', 1, '(brak)', 1),
(71, 'reason', 'pow??d', 1, '(brak)', 1),
(72, 'plans for the future', 'plany na przysz??o????', 1, '(brak)', 1),
(73, 'work experience', 'do??wiadczenie w pracy', 1, '(brak)', 1),
(74, 'expectations', 'oczekiwania', 1, '(brak)', 1),
(75, 'could I ask the question?', 'm??g??bym zada?? pytanie?', 1, '(brak)', 1),
(76, 'there are a couple of things I\'d like to ask about', 'jest par?? rzeczy o kt??re chcia??bym zapyta??', 1, '(brak)', 1),
(77, 'can I ask you about that?', 'czy mog?? Ci?? zapyta?? o to?', 1, '(brak)', 1),
(78, 'do you have any questions?', 'czy masz jakie?? pytania?', 1, '(brak)', 1),
(79, 'any queries?', 'jakie?? zapytania?', 1, '(brak)', 1),
(80, 'so for me the most important thing is to', 'wi??c dla mnie najwa??niejsz?? rzecz?? jest to aby', 1, '(brak)', 1),
(81, 'I suppose', 'przypuszczam', 1, '(brak)', 1),
(82, 'one thing I\'d like to say', 'jedn?? rzecz chcia??bym powiedzie??', 1, '(brak)', 1),
(83, 'actually I have a query', 'w??a??ciwie mam zapytanie', 1, '(brak)', 1),
(84, 'opportunity', 'okazja sposobno????', 1, '(brak)', 1),
(85, 'involved', 'zaanga??owany', 1, '(brak)', 1),
(86, 'introduce myself', 'przedstawi?? si??', 1, '(brak)', 1),
(87, 'in these fields', 'w tych dziedzinach', 1, '(brak)', 1),
(88, 'instead', 'zamiast', 1, '(brak)', 1),
(89, 'more complex sentences', 'bardziej z??o??one zdania', 1, '(brak)', 1),
(90, 'polskie', 'polandkk', 1, 'zdanie', 1),
(92, 'polskie', 'jknjk', 1, 'to jest przykladowe zdanie', 1),
(93, 'polskie', 'polands', 1, 'zdanie', 1),
(94, 'v1', 'poland', 1, 'to jest przykladowe zdanie', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Unit_2`
--

CREATE TABLE `Unit_2` (
  `id` int(10) NOT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Unit_2`
--

INSERT INTO `Unit_2` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'partly true', 'cz????ciowo prawda', 1, '(brak)', 0),
(2, 'inaccurate', 'niedok??adny, nieprecyzyjny', 1, '(brak)', 0),
(3, 'exact words', 'dok??adne s??owa', 1, '(brak)', 0),
(4, 'biopic', 'film biograficzny', 1, '(brak)', 0),
(5, 'docudrama', 'dramat dokumentalny', 1, '(brak)', 0),
(6, 'characters battle with their minds', 'postacie walcz?? z my??lami, bij?? si?? z my??lami', 1, '(brak)', 0),
(7, 'imaginary world', 'wyimaginowany ??wiat', 1, '(brak)', 0),
(8, 'in the life of a real person', 'w ??yciu prawdziwej osoby', 1, '(brak)', 0),
(9, 'old-fashioned costume', 'staro??wiecki, staromodny kostium', 1, '(brak)', 0),
(10, 'survive', 'prze??y??, przetrwa??', 1, '(brak)', 0),
(11, 'stockbroker', 'makler gie??dowy', 1, '(brak)', 0),
(12, 'be on TV', 'by?? w TV', 1, '(brak)', 0),
(13, 'be in a newspaper', 'by?? w gazecie', 1, '(brak)', 0),
(14, 'do something embarrassing in public', 'robi?? co?? ??enuj??cego publicznie', 1, '(brak)', 0),
(15, 'write a poem', 'napisa?? wiersz', 1, '(brak)', 0),
(16, 'go to a country on a different continent', 'uda?? si?? do kraju na innym kontynencie', 1, '(brak)', 0),
(17, 'collect something as a hobby', 'zbiera?? co?? jako hobby', 1, '(brak)', 0),
(18, 'see someone commit a crime', 'zobaczy?? kogo?? pope??niaj??cego przest??pstwo', 1, '(brak)', 0),
(19, 'at 12', 'o 12', 1, '(brak)', 0),
(20, 'at night', 'w nocy', 1, '(brak)', 0),
(21, 'at the weekend', 'w weekend', 1, '(brak)', 0),
(22, 'in July', 'w lipcu', 1, '(brak)', 0),
(23, 'in 2010', 'w 2010 roku', 1, '(brak)', 0),
(24, 'on the 4th of February', 'czwartego lutego', 1, '(brak)', 0),
(25, 'in the morning', 'rano', 1, '(brak)', 0),
(26, 'on Thursday morning', 'w czwartek rano', 1, '(brak)', 0),
(27, 'at lunchtime', 'w porze lunchu', 1, '(brak)', 0),
(28, 'on Wednesday', 'w ??rod??', 1, '(brak)', 0),
(29, 'in the autumn', 'w jesieni, na jesie??', 1, '(brak)', 0),
(30, 'on New Year\'s Day', 'w Nowy Rok', 1, '(brak)', 0),
(31, 'in the twenty-first century', 'w dwudziestym pierwszym wieku', 1, '(brak)', 0),
(32, 'see on TV', 'widzie?? w telewizji', 1, '(brak)', 0),
(33, 'go for a walk', 'i???? na spacer', 1, '(brak)', 0),
(34, 'travel by boat', 'podr????owa?? ????dk??', 1, '(brak)', 0),
(35, 'go for a drive', 'uda?? si?? na przeja??d??k??', 1, '(brak)', 0),
(36, 'travel by plane', 'podr????owa?? samolotem', 1, '(brak)', 0),
(37, 'go for a run', 'i???? pobiega??, i???? na przebie??k??', 1, '(brak)', 0),
(38, 'travel by coach', 'podr????owa?? autokarem', 1, '(brak)', 0),
(39, 'speak on the phone', 'rozmawia?? przez telefon', 1, '(brak)', 0),
(40, 'travel by train', 'podr????owa?? poci??giem', 1, '(brak)', 0),
(41, 'hear on the radio', 's??ysze?? w radiu', 1, '(brak)', 0),
(42, 'on my own', 'na w??asn?? r??k??', 1, '(brak)', 0),
(43, 'by mistake', 'przez pomy??k??', 1, '(brak)', 0),
(44, 'on business', 'w interesach, s??u??bowo', 1, '(brak)', 0),
(45, 'by chance', 'przypadkowo, przez przypadek', 1, '(brak)', 0),
(46, 'by hand', 'r??cznie', 1, '(brak)', 0),
(47, 'in the end', 'na ko??cu', 1, '(brak)', 0),
(48, 'on purpose', 'specjalnie, celowo', 1, '(brak)', 0),
(49, 'arrive on time', 'przyby?? na czas', 1, '(brak)', 0),
(50, 'in a moment', 'za chwil??', 1, '(brak)', 0),
(51, 'in a hurry', 'w po??piechu', 1, '(brak)', 0),
(52, 'keep up-to-date', 'utrzyma?? si?? na bie????co', 1, '(brak)', 0),
(53, 'conspiracy theory', 'teoria spiskowa', 1, '(brak)', 0),
(54, 'involved', 'zaanga??owany, wpl??tany', 1, '(brak)', 0),
(55, 'suspects', 'podejrzani', 1, '(brak)', 0),
(56, 'shadow', 'cie??', 1, '(brak)', 0),
(57, 'love story', 'historia mi??osna', 1, '(brak)', 0),
(58, 'alcohol', 'alkohol', 1, '(brak)', 0),
(59, 'photograph / photographer', 'fotografia / fotograf', 1, '(brak)', 0),
(60, 'a man with a gun', 'cz??owiek z pistoletem', 1, '(brak)', 0),
(61, 'flag', 'flaga', 1, '(brak)', 0),
(62, 'Federal Bureau of Investigation', 'FBI', 1, '(brak)', 0),
(63, 'report', 'raport', 1, '(brak)', 0),
(64, 'surprisingly', 'zaskakuj??co', 1, '(brak)', 0),
(65, 'visible', 'widoczny, widzialny', 1, '(brak)', 0),
(66, 'apparently', 'pozornie', 1, '(brak)', 0),
(67, 'wave', 'falowa??, fala', 1, '(brak)', 0),
(68, 'however', 'jednak, jakkolwiek, wszak??e...', 1, '(brak)', 0),
(69, 'logically', 'logicznie', 1, '(brak)', 0),
(70, 'lighting conditions', 'warunki o??wietleniowe', 1, '(brak)', 0),
(71, 'doubts', 'w??tpliwo??ci', 1, '(brak)', 0),
(72, 'explain', 'wyja??nia??', 1, '(brak)', 0),
(73, 'on the thirty-first of August', '31 sierpnia', 1, '(brak)', 0),
(74, 'accident', 'wypadek', 1, '(brak)', 0),
(75, 'relationship', 'zwi??zek', 1, '(brak)', 0),
(76, 'drunken condition', 'stan pod wp??ywem alkoholu', 1, '(brak)', 0),
(77, 'be pregnant', 'by?? w ci????y', 1, '(brak)', 0),
(78, 'plan to marry', 'planowa?? wyj???? za m????', 1, '(brak)', 0),
(79, 'assassination', 'zamach', 1, '(brak)', 0),
(80, 'leader', 'przyw??dca, lider', 1, '(brak)', 0),
(81, 'crowd / crowds / crowded', 't??um / t??umy / zat??oczony', 1, '(brak)', 0),
(82, 'was arrested', 'zosta?? aresztowany', 1, '(brak)', 0),
(83, 'immediately', 'natychmiast', 1, '(brak)', 0),
(84, 'almost', 'prawie', 1, '(brak)', 0),
(85, 'conclude', 'wyci??gn???? wniosek', 1, '(brak)', 0),
(86, 'he acted alone', 'on dzia??a?? sam', 1, '(brak)', 0),
(87, 'investigation', '??ledztwo', 1, '(brak)', 0),
(88, 'criticise', 'krytykowa??', 1, '(brak)', 0),
(89, 'agree', 'zgadza?? si??', 1, '(brak)', 0),
(90, 'summary', 'podsumowanie, streszczenie', 1, '(brak)', 0),
(91, 'claim', 'twierdzi??, deklarowa??', 1, '(brak)', 0),
(92, 'he was drunk', 'on by?? pijany', 1, '(brak)', 0),
(93, 'prison', 'wi??zienie', 1, '(brak)', 0),
(94, 'calm', 'spok??j, spokojny', 1, '(brak)', 0),
(95, 'they were talking to each other', 'rozmawiali ze sob??', 1, '(brak)', 0),
(96, 'in the middle of the...', 'na ??rodku..., w ??rodku... (czego?? tam)', 1, '(brak)', 0),
(97, 'better view', 'lepszy widok', 1, '(brak)', 0),
(98, 'miss the chance of seeing somebady', 'przegapi?? szans?? zobaczenia kogo??', 1, '(brak)', 0),
(99, 'for the first time', 'po raz pierwszy', 1, '(brak)', 0),
(100, 'it was difficult to hear', 'by??o trudno us??ysze??', 1, '(brak)', 0),
(101, 'die in crash', 'zgin???? w wypadku/katastrofie', 1, '(brak)', 0),
(102, 'attack', 'atak, atakowa??', 1, '(brak)', 0),
(103, 'violent', 'gwa??towny, pe??en przemocy', 1, '(brak)', 0),
(104, 'violence', 'przemoc', 1, '(brak)', 0),
(105, 'workers threaten strikes', 'pracownicy gro???? strajkami', 1, '(brak)', 0),
(106, 'massive earthquake hits Los Angeles', 'masywne trz??sienie ziemi uderza w Los Angeles', 1, '(brak)', 0),
(107, 'floods destroy crops', 'powodzie niszcz?? uprawy', 1, '(brak)', 0),
(108, 'hostages released', 'zak??adnicy zwolnieni (wypuszczeni)', 1, '(brak)', 0),
(109, 'rebels', 'rebelianci', 1, '(brak)', 0),
(110, 'collapse of banks', 'upadek (krach) bank??w', 1, '(brak)', 0),
(111, 'damage and destroy', 'uszkodzi?? i zniszczy??', 1, '(brak)', 0),
(112, 'hostages were allowed to go free', 'zak??adnicy zostali puszczeni wolno', 1, '(brak)', 0),
(113, 'serious crime', 'powa??ne przest??pstwo', 1, '(brak)', 0),
(114, 'disaster', 'karastrofa', 1, '(brak)', 0),
(115, 'economic crisis affects business', 'kryzys ekonomiczny wp??ywa na biznes', 1, '(brak)', 0),
(116, 'a lot of farmland is under water', 'du??o p??l uprawnych jest pod wod?? (zalane)', 1, '(brak)', 0),
(117, 'people refuse to go to work', 'ludzie odmawiaj?? p??j??cia do pracy', 1, '(brak)', 0),
(118, 'begin to fight', 'zaczyna?? walczy??', 1, '(brak)', 0),
(119, 'who were you with?', 'z kim by??e???', 1, '(brak)', 0),
(120, 'who is the story about?', 'o kim jest ta historia?', 1, '(brak)', 0),
(121, 'what happened?', 'co si?? sta??o?', 1, '(brak)', 0),
(122, 'why did it happen?', 'dlaczego to si?? sta??o?', 1, '(brak)', 0),
(123, 'where did it happen?', 'gdzie to si?? sta??o?', 1, '(brak)', 0),
(124, 'when did it happen?', 'kiedy to si?? sta??o?', 1, '(brak)', 0),
(125, 'falsely obtain', 'fa??szywie uzyska??', 1, '(brak)', 0),
(126, 'former', 'by??y (np. prezydent)', 1, '(brak)', 0),
(127, 'discover', 'odkry??', 1, '(brak)', 0),
(128, 'currently', 'obecnie', 1, '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Unit_3`
--

CREATE TABLE `Unit_3` (
  `id` int(10) NOT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Unit_3`
--

INSERT INTO `Unit_3` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'nominated for an award', 'nominowany do nagrody', 1, '(brak)', 0),
(2, 'you\'re going where?', 'wybierasz si?? gdzie???', 1, '(brak)', 0),
(3, 'mention', 'wspomnie??', 1, '(brak)', 0),
(4, 'cope with', 'radzi?? sobie z', 1, '(brak)', 0),
(5, 'unless', 'chyba ??e', 1, '(brak)', 0),
(6, 'nosy', 'w??cibski', 1, '(brak)', 0),
(7, 'noisy', 'ha??a??liwy, g??o??ny', 1, '(brak)', 0),
(8, 'flexible', 'elastyczny', 1, '(brak)', 0),
(9, 'freedom', 'wolno????', 1, '(brak)', 0),
(10, 'beat', 'pokona??, bi??, b??bni??', 1, '(brak)', 0),
(11, 'follow your lead', 'pod????a?? twoim ??ladem', 1, '(brak)', 0),
(12, 'object', 'sprzeciwia?? si??, obiekt', 1, '(brak)', 0),
(13, 'arrangements', 'plany, ustalenia', 1, '(brak)', 0),
(14, 'tend to', 'mie?? sk??onno???? do', 1, '(brak)', 0),
(15, 'what are you two doing?', 'co wy dwoje robicie?', 1, '(brak)', 0),
(16, 'change mind about', 'zmieni?? zdanie na temat', 1, '(brak)', 0),
(17, 'to be nosy', 'by?? w??cibskim', 1, '(brak)', 0),
(18, 'panic', 'panika', 1, '(brak)', 0),
(19, 'last minute arrangements', 'plany, ustalenia w ostatniej chwili', 1, '(brak)', 0),
(20, 'if you can\'t beat them join them', 'je??li nie mo??esz ich pokona?? do nich do????czy??', 1, '(brak)', 0),
(21, 'related to', 'powi??zany z', 1, '(brak)', 0),
(22, 'gossip', 'plotka', 1, '(brak)', 0),
(23, 'compliment', 'komplement', 1, '(brak)', 0),
(24, 'moan', 'narzeka??, j??cze??', 1, '(brak)', 0),
(25, 'boast', 'chwali?? si??', 1, '(brak)', 0),
(26, 'argue', 'k????ci?? si??', 1, '(brak)', 0),
(27, 'warn', 'ostrzega??', 1, '(brak)', 0),
(28, 'chat', 'pogaw??dzi??', 1, '(brak)', 0),
(29, 'apologise', 'przeprasza??', 1, '(brak)', 0),
(30, 'to water the plants', 'podlewa?? ro??liny', 1, '(brak)', 0),
(31, 'talk to somebody', 'm??wi?? do kogo??', 1, '(brak)', 0),
(32, 'maintain', 'utrzymanie', 1, '(brak)', 0),
(33, 'ink', 'atrament, tusz', 1, '(brak)', 0),
(34, 'fountain pen', 'wieczne pi??ro', 1, '(brak)', 0),
(35, 'store', 'przechowa??', 1, '(brak)', 0),
(36, 'handwriting', 'pismo r??czne', 1, '(brak)', 0),
(37, 'thumb', 'kciuk', 1, '(brak)', 0),
(38, 'thumbprint', 'odcisk kciuka', 1, '(brak)', 0),
(39, 'digital', 'cyfrowy', 1, '(brak)', 0),
(40, 'digital signature', 'podpis cyfrowy', 1, '(brak)', 0),
(41, 'on demand', 'na ????danie', 1, '(brak)', 0),
(42, 'in the long term', 'w d??u??szej perspektywie', 1, '(brak)', 0),
(43, 'claim', 'stwierdza??', 1, '(brak)', 0),
(44, 'artificial', 'sztuczny', 1, '(brak)', 0),
(45, 'artificial intelligence', 'sztuczna inteligencja', 1, '(brak)', 0),
(46, 'development', 'rozw??j', 1, '(brak)', 0),
(47, 'intermediate', 'po??redni', 1, '(brak)', 0),
(48, 'an intermediary', 'po??rednik', 1, '(brak)', 0),
(49, 'will stop barriers', 'bariery przestan?? istnie??', 1, '(brak)', 0),
(50, 'retina', 'siatk??wka oka', 1, '(brak)', 0),
(51, 'retina scan', 'skan siatk??wki oka', 1, '(brak)', 0),
(52, 'the most straightforward way to do something', 'najprostszy spos??b aby co?? zrobi??', 1, '(brak)', 0),
(53, 'method of delivery', 'spos??b dostawy', 1, '(brak)', 0),
(54, 'in the near future', 'w najbli??szej przysz??o??ci', 1, '(brak)', 0),
(55, 'in the next ten years', 'w ci??gu najbli??szych dziesi??ciu lat', 1, '(brak)', 0),
(56, 'in a month or two', 'w ci??gu miesi??ca lub dw??ch', 1, '(brak)', 0),
(57, 'in the short term', 'w kr??tkim terminie', 1, '(brak)', 0),
(58, 'in ten years\' time', 'w dziesi???? lat', 1, '(brak)', 0),
(59, 'shortly', 'nied??ugo', 1, '(brak)', 0),
(60, 'predictions', 'przewidywania, przepowiednia, prognoza', 1, '(brak)', 0),
(61, 'certain', 'pewny', 1, '(brak)', 0),
(62, 'turning point', 'punkt zwrotny', 1, '(brak)', 0),
(63, 'possible', 'mo??liwy', 1, '(brak)', 0),
(64, 'work habits', 'uniform roboczy', 1, '(brak)', 0),
(65, 'small talk', 'pogaw??dka', 1, '(brak)', 0),
(66, 'against', 'przeciwko', 1, '(brak)', 0),
(67, 'work against the clock', '\"walczy?? z czasem\" (idiom)', 1, '(brak)', 0),
(68, 'on our mind', 'w naszych my??lach', 1, '(brak)', 0),
(69, 'it\'s not my cup of tea', '\"to nie w moim stylu\" (idiom)', 1, '(brak)', 0),
(70, 'close to my heart', 'bli??szy memu sercu', 1, '(brak)', 0),
(71, 'be in hot water', '\"mie?? k??opoty\" (idiom)', 1, '(brak)', 0),
(72, 'put my foot in it', '\"strzeli?? gaf??\" (idiom)', 1, '(brak)', 0),
(73, 'running out of time', '\"ko??czy si?? czas\" (idiom)', 1, '(brak)', 0),
(74, 'keep an eye on', 'mie?? na kogo?? oko', 1, '(brak)', 0),
(75, 'give a hand', 'poda?? pomocn?? d??o??, pom??c', 1, '(brak)', 0),
(76, 'a piece of cake', '\"bu??ka z mas??em\" (idiom)', 1, '(brak)', 0),
(77, 'dark horse', 'czarny ko??', 1, '(brak)', 0),
(78, 'the rat race', 'wy??cig szczur??w', 1, '(brak)', 0),
(79, 'award', 'nagroda, wyr????nienie', 1, '(brak)', 0),
(80, 'celebrate', '??wi??towa??, obchodzi??', 1, '(brak)', 0),
(81, 'misunderstanding', 'nieporozumienie', 1, '(brak)', 0),
(82, 'confirm', 'potwierdzi??', 1, '(brak)', 0),
(83, 'host', 'gospodarz', 1, '(brak)', 0),
(84, 'generous', 'hojny', 1, '(brak)', 0),
(85, 'recognise', 'rozpoznawa??', 1, '(brak)', 0),
(86, 'generous', 'hojny, szczodry', 1, '(brak)', 0),
(87, 'at the table', 'przy stole', 1, '(brak)', 0),
(88, 'the thousand dollars', 'tysi??c dolar??w', 1, '(brak)', 0),
(89, 'do you mean', 'masz na my??li', 1, '(brak)', 0),
(90, 'again', 'ponownie, znowu', 1, '(brak)', 0),
(91, 'I didn\'t catch any of that.', 'Nie za??apa??em nic z tego.', 1, '(brak)', 0),
(92, 'You\'ve lost me.', '\"Pogubi??e?? si?? w tym co m??wi??\" {idiom u??ywany podczas dialogu gdy kto?? przesta?? nad??rza?? za tym co m??wisz}', 1, 'Other words: You can\'t follow what i\'m saying?', 0),
(93, 'I\'ve lost you.', '\"Pogubi??em si?? w tym co m??wisz\" {idiom u??ywany podczas dialogu gdy przesta??e?? nad??rza?? za tym co kto?? m??wi}', 1, 'Other words:I can\'t follow what you\'re saying.', 0),
(94, 'Could you repeat that?', 'M??g??by?? to powt??rzy???', 1, '(brak)', 0),
(95, 'Can you say that again?', 'Czy mo??esz powiedzie?? to poownie?', 1, '(brak)', 0),
(96, 'What exactly do you mean?', 'Co dok??adnie masz na my??li?', 1, '(brak)', 0),
(97, 'I don\'t get what you\'re saying', 'Nie ??apie co m??wisz.', 1, '(brak)', 0),
(98, 'I mean...', 'To znaczy...', 1, '(brak)', 0),
(99, 'What does it mean?', 'Co to znaczy/oznacza?', 1, '(brak)', 0),
(100, 'Do you mean to tell me...?', 'Chcesz mi przez to powiedzie??...?', 1, '(brak)', 0),
(101, 'In other words...', 'Innymi s??owy...', 1, '(brak)', 0),
(102, 'other', 'inny', 1, '(brak)', 0),
(103, 'break the ice', '\"prze??ama?? lody\" (idiom)', 1, 'Everyone was nervous, so Jackie told a few jokes to break the ice.', 0),
(104, 'learn something by heart', '\"uczy?? si?? na pami????\" (idiom)', 1, 'Tomorrow there\'s a test on this poem. I have to learn it by heart.', 0),
(105, 'go window shopping', '\"i???? na spacer z ogl??daniem wystaw sklepowych {nie mie?? w zamiarze niczego kupi??} \" (idiom)', 1, 'I\'ve got no money at the moment but we can go window shopping if you want.', 0),
(106, 'travel light', '\"podr????owa?? z niewielkim baga??em\" (idiom)', 1, 'He always travels light. He only takes one suitcase even for long trips.', 0),
(107, 'let your hair down', '\"p??j???? w tango\" (idiom)', 1, 'You\'ve been working non-stop. Why don\'t you go out and let your hair down?', 0),
(108, 'be in two minds', '\"waha?? si??\" (idiom)', 1, 'I\'m in two minds. I don\'t know if I want the black one or the red one.', 0),
(109, 'arrange', 'zorganizowa??', 1, '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Unit_4`
--

CREATE TABLE `Unit_4` (
  `id` int(10) NOT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Unit_4`
--

INSERT INTO `Unit_4` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'entrepreneur', 'przedsi??biorca', 1, '(brak)', 0),
(2, 'effort', 'wysi??ek', 1, '(brak)', 0),
(3, 'qualities', 'cechy', 1, '(brak)', 0),
(4, 'quality', 'jako????', 1, '(brak)', 0),
(5, 'manage', 'pokierowa?? czym??, kim??', 1, '(brak)', 0),
(6, 'express', 'wyra??i??, okaza??', 1, '(brak)', 0),
(7, 'remember', 'przypomina?? sobie', 1, '(brak)', 0),
(8, 'remind', 'przypomina?? komu??', 1, '(brak)', 0),
(9, 'forget', 'zapomnie??', 1, '(brak)', 0),
(10, 'leave', 'zostawi??', 1, '(brak)', 0),
(11, 'hear', 's??ysze??, us??ysze??', 1, '(brak)', 0),
(12, 'listen', 's??ucha??, pos??ucha??', 1, '(brak)', 0),
(13, 'I wasn\'t listening.', 'Nie s??ucha??em.', 1, '(brak)', 0),
(14, 'I wasn\'t hearing.', 'Nie us??ysza??em.', 1, '(brak)', 0),
(15, 'fun', 'zabawa, uciecha', 1, '(brak)', 0),
(16, 'funny', 'zabawny, ??mieszny', 1, '(brak)', 0),
(17, 'borrow from', 'po??yczy?? od', 1, '(brak)', 0),
(18, 'lend to', 'po??ycza?? komu??', 1, '(brak)', 0),
(19, 'miss', 'przegapi??, t??ski??', 1, '(brak)', 0),
(20, 'lose', 'straci??, przegra??', 1, '(brak)', 0),
(21, 'critic', 'krytyk', 1, '(brak)', 0),
(22, 'winemaker', 'winiarz (osoba robi??ca wino)', 1, '(brak)', 0),
(23, 'paradise', 'raj', 1, '(brak)', 0),
(24, 'willing', 'sk??onny, ch??tny', 1, '(brak)', 0),
(25, 'snorkel', 'nurkowanie z rurk??', 1, '(brak)', 0),
(26, 'dive', 'nurkowa?? g????binowo', 1, '(brak)', 0),
(27, 'duty', 'obowi??zek, c??o', 1, '(brak)', 0),
(28, 'diary', 'pami??tnik, dziennik', 1, '(brak)', 0),
(29, 'covering letter', 'list motywacyjny', 1, '(brak)', 0),
(30, 'apprentice', 'praktykant, ucze??', 1, '(brak)', 0),
(31, 'compete', 'rywalizowa??, konkurowa??', 1, '(brak)', 0),
(32, 'compete for a job', 'konkurowa?? o prac??', 1, '(brak)', 0),
(33, 'hell', 'piek??o', 1, '(brak)', 0),
(34, 'bloody hell', 'jasna cholera (mo??na u??ywa?? zamiennie z k... ma?? ;)', 1, '(brak)', 0),
(35, 'get fired', 'zosta?? zwolnionym', 1, '(brak)', 0),
(36, 'empire', 'imperium', 1, '(brak)', 0),
(37, 'kingdom', 'kr??lestwo', 1, '(brak)', 0),
(38, 'review', 'recenzja', 1, '(brak)', 0),
(39, 'survey', 'badanie, przegl??d', 1, '(brak)', 0),
(40, 'contest = competition', 'konkurs', 1, '(brak)', 0),
(41, 'be not easy to please', 'by?? trudnym do zadowolenia', 1, '(brak)', 0),
(42, 'either', 'albo', 1, '(brak)', 0),
(43, 'from my point of view', 'z mojego punktu widzenia', 1, '(brak)', 0),
(44, 'Have you got what it takes?', 'Czy masz to czego potrzeba?', 1, 'Have you got what it takes to be a millionaire?', 0),
(45, 'moderately', 'umiarkowanie', 1, '(brak)', 0),
(46, 'spender', '\"rozrzutnik pieni??dzy\"', 1, '(brak)', 0),
(47, 'effort', 'wysi??ek', 1, '(brak)', 0),
(48, 'competitive', 'konkurencyjny', 1, '(brak)', 0),
(49, 'indecisive', 'niezdecydowany', 1, '(brak)', 0),
(50, 'decided', 'zdecydowany', 1, '(brak)', 0),
(51, 'think outside the box', 'my??le?? poza schematem', 1, '(brak)', 0),
(52, 'risk', 'ryzyko', 1, '(brak)', 0),
(53, 'motivate', 'motywowa??', 1, '(brak)', 0),
(54, 'work with a lot of effort', 'pracowa?? w du??ym wysi??ku', 1, '(brak)', 0),
(55, 'have problems making decision', 'mie?? problemy w podejmowaniu decyzji', 1, '(brak)', 0),
(56, 'think differently or in a new way', 'my??le?? inaczej lub w nowy spos??b', 1, '(brak)', 0),
(57, 'want to be more successful than others', 'chcie?? by?? bardziej skutecznym ni?? inni', 1, '(brak)', 0),
(58, 'want to achieve something', 'chcie?? co?? osi??gn????', 1, '(brak)', 0),
(59, 'a risk taker', 'osoba podejmuj??ca ryzyko', 1, '(brak)', 0),
(60, 'to be rejected', 'by?? odrzuconym', 1, '(brak)', 0),
(61, 'reject', 'odrzuca??', 1, '(brak)', 0),
(62, 'miserable', 'beznadziejny', 1, '(brak)', 0),
(63, 'in stock', 'w magazynie, na stanie', 1, '(brak)', 0),
(64, 'particular', 'konkretny, szczeg??lny', 1, '(brak)', 0),
(65, 'put on a lot of weight', 'przybra?? du??o na wadze', 1, '(brak)', 0),
(66, 'wonderful', 'wspania??y, cudowny', 1, '(brak)', 0),
(67, 'brilliant', 'znakomity', 1, '(brak)', 0),
(68, 'awful', 'okropny', 1, '(brak)', 0),
(69, 'enormous', 'ogromny', 1, '(brak)', 0),
(70, 'exhaust', 'wyczerpa??, wydechowy', 1, '(brak)', 0),
(71, 'boiling', 'wrzenie', 1, '(brak)', 0),
(72, 'freezing', 'lodowaty', 1, '(brak)', 0),
(73, 'delicious', 'pyszne', 1, '(brak)', 0),
(74, 'furious', 'w??ciek??y', 1, '(brak)', 0),
(75, 'impossible', 'niemo??liwe', 1, '(brak)', 0),
(76, 'crew', 'za??oga, ekipa', 1, '(brak)', 0),
(77, 'blast off', 'wystrzeli??, odpali??', 1, 'Blast off into space.', 0),
(78, 'a jar', 's??oik', 1, '(brak)', 0),
(79, 'regarding', 'w sprawie', 1, '(brak)', 0),
(80, 'I am writing to you regarding your advertisement for... with i saw on...', 'Pisz?? do Ciebie w sprawie Twojego og??oszenia dla... kt??re widzia??em na...', 1, '(brak)', 0),
(81, 'I would like to submit an application for the post.', 'Chcia??bym z??o??y?? wniosek do urz??du.', 1, '(brak)', 0),
(82, 'submit', 'zg??asza??', 1, '(brak)', 0),
(83, 'Please find my CV attached.', 'Prosz?? znale???? moje CV w za????czeniu.', 1, '(brak)', 0),
(84, 'I believe that I meet all the requirements you outline in your advertisement.', 'Wie????, ??e spe??niam wszystkie wymagania kt??re zaznaczyli??cie w og??oszeniu.', 1, '(brak)', 0),
(85, 'advertisement', 'reklama, og??oszenie', 1, '(brak)', 0),
(86, 'requirements', 'wymagania', 1, '(brak)', 0),
(87, 'outline', 'zarys, kontur, szkic', 1, '(brak)', 0),
(88, 'I had hands-on experience of...', 'Mam praktyczne do??wiadczenie w...', 1, '(brak)', 0),
(89, 'experience', 'do??wiadczenie', 1, '(brak)', 0),
(90, 'prove', 'udowodni??', 1, '(brak)', 0),
(91, 'proven ability in...', 'Sprawdzona zdolno???? w...', 1, '(brak)', 0),
(92, 'ability', 'zdolno????', 1, '(brak)', 0),
(93, 'require', 'wymaga??', 1, '(brak)', 0),
(94, 'If you require any further information, or would like to arrange an interview, please call me on...', 'Je??li potrzebujesz dodatkowych informacji, lub chcesz um??wi?? si?? na spotkanie, prosz?? zadzwoni?? do mnie na ...', 1, '(brak)', 0),
(95, 'I look forward to hearing from you at your earliest convenience.', 'Czekam na kontakt z Pa??stwem jak najszybciej.', 1, '(brak)', 0),
(96, 'how earliest convenience', 'jak najszybciej', 1, '(brak)', 0),
(97, 'caretaker', 'dozorca, str????', 1, '(brak)', 0),
(98, 'protector', 'opiekun', 1, '(brak)', 0),
(99, 'Yours sincerely', 'Z powa??aniem', 1, '(brak)', 0),
(100, 'interview', 'rozmowa kwalifikacyjna, wywiad', 1, '(brak)', 0),
(101, 'appointment, meeting', 'spotkanie', 1, '(brak)', 0),
(102, 'fired', 'zwolniony', 1, '(brak)', 0),
(103, 'Set up a catering company', 'Za??o??y?? firm?? cateringow??', 1, '(brak)', 0),
(104, 'mediterranean', '??r??dziemnomorski', 1, '(brak)', 0),
(105, 'reaching agreement', 'osi??gni??cie porozumienia', 1, '(brak)', 0),
(106, 'What about...?', 'Co powiesz na...?', 1, '(brak)', 0),
(107, 'I suggest we focus on...', 'Proponuj?? skupi?? si?? na...', 1, '(brak)', 0),
(108, 'currently', 'aktualnie, obecnie, bie????co', 1, '(brak)', 0),
(109, 'actually', 'faktycznie, rzeczywi??cie', 1, '(brak)', 0),
(110, 'career', 'kariera', 1, '(brak)', 0),
(111, 'course', 'kurs, przebieg,', 1, '(brak)', 0),
(112, 'direction', 'kierunek', 1, '(brak)', 0),
(113, 'argument', 'sp??r, argument', 1, '(brak)', 0),
(114, 'discussion', 'dyskusja', 1, '(brak)', 0),
(115, 'reliable', 'niezawodny', 1, '(brak)', 0),
(116, 'sensible', 'rozs??dny, sensowny', 1, '(brak)', 0),
(117, 'easy-going', '\"luzak\"', 1, '(brak)', 0),
(118, 'aggressive', 'agresywny, napastliwy', 1, '(brak)', 0),
(119, 'clever', 'sprytny', 1, '(brak)', 0),
(120, 'bright', 'jasny, bystry', 1, '(brak)', 0),
(121, 'honest', 'uczciwy, szczery', 1, '(brak)', 0),
(122, 'lazy', 'leniwy', 1, '(brak)', 0),
(123, 'punctual', 'punktualny', 1, '(brak)', 0),
(124, 'moody', 'humorzasty, nastrojowy', 1, '(brak)', 0),
(125, 'independent', 'niezale??ny', 1, '(brak)', 0),
(126, 'I\'m impressed', 'Jestem pod wra??eniem', 1, '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Unit_5`
--

CREATE TABLE `Unit_5` (
  `id` int(10) NOT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Unit_5`
--

INSERT INTO `Unit_5` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'machine', 'maszyna', 1, '(brak)', 0),
(2, 'electricity', 'elektryczno????', 1, '(brak)', 0),
(3, 'nuclear power', 'energia nulkearna', 1, '(brak)', 0),
(4, 'antibiotics', 'antybiotyki', 1, '(brak)', 0),
(5, 'vaccinations', 'szczepienia', 1, '(brak)', 0),
(6, 'computer networks', 'sieci komputerowe', 1, '(brak)', 0),
(7, 'motorbikes', 'motocykle', 1, '(brak)', 0),
(8, 'genetic engineering', 'in??ynieria genetyczna', 1, '(brak)', 0),
(9, 'washing machine', 'pralka', 1, '(brak)', 0),
(10, 'vacuum cleaner', 'odkurzacz', 1, '(brak)', 0),
(11, 'space travel', 'podr???? kosmiczna', 1, '(brak)', 0),
(12, 'commercial aeroplanes', 'samoloty komercyjne', 1, '(brak)', 0),
(13, 'solar power', 'energia s??oneczna', 1, '(brak)', 0),
(14, 'communications satellites', 'satelity telekomunikacyjne', 1, '(brak)', 0),
(15, 'plug it in', 'w????cza?? to do kontaktu (do pr??du)', 1, '(brak)', 0),
(16, 'press the button', 'nacisn???? przycisk', 1, '(brak)', 0),
(17, 'have an injection', 'mie?? zastrzyk', 1, '(brak)', 0),
(18, 'have an operation', 'mie?? operacj??', 1, '(brak)', 0),
(19, 'run out of petrol', 'zabrakn???? benzyny', 1, '(brak)', 0),
(20, 'break down', 'zepsu?? si??', 1, '(brak)', 0),
(21, 'get a connection', 'uzyska?? po????czenie', 1, '(brak)', 0),
(22, 'restart / reboot the computer', 'zresrartowa?? komputer', 1, '(brak)', 0),
(23, 'do an experiment', 'robi?? eksperyment', 1, '(brak)', 0),
(24, 'switch it on / switch it off', 'w????czy?? to / wy????czy?? to', 1, 'switch the light on - w????cz ??wiat??oswitch the light off - wy????cz ??wiat??o', 0),
(25, 'influential', 'wp??ywowy', 1, '(brak)', 0),
(26, 'advance, progress', 'post??p', 1, '(brak)', 0),
(27, 'at the beginning of the twentieth century', 'na pocz??tku 20 wieku', 1, '(brak)', 0),
(28, 'affordable', 'niedrogi, przyst??pny cenowo', 1, '(brak)', 0),
(29, 'shrink', 'kurczy?? si??', 1, '(brak)', 0),
(30, 'for the first time in history,', 'po raz pierwszy w historii', 1, '(brak)', 0),
(31, 'somewhere', 'gdzie??', 1, '(brak)', 0),
(32, 'anywhere', 'gdziekolwiek', 1, '(brak)', 0),
(33, 'introduce', 'wprowadza??', 1, '(brak)', 0),
(34, 'fabric', 'materia??, tkanina', 1, '(brak)', 0),
(35, 'nylon', 'nylon, nylonowy', 1, '(brak)', 0),
(36, 'allow', 'pozwoli?? komu?? na co??', 1, '(brak)', 0),
(37, 'travel further away from home', 'podr????owa?? dalej od domu', 1, '(brak)', 0),
(38, 'amplifier', 'wzmacniacz', 1, '(brak)', 0),
(39, 'rock music', 'muzyka rockowa', 1, '(brak)', 0),
(40, 'electric guitar', 'gitara elektryczna', 1, '(brak)', 0),
(41, 'a lot / much / far more', 'gdy chcemy powiedzie??, ??e co?? jest du??o bardziej lub znacznie bardziej \"jakie??\" (np. pi??kniejsze, bardziej s??oneczne)', 1, 'I\'m a lot fatter than Sue.Kate is much more beautiful than Mary.The journey took far more longer than we expected.', 0),
(42, 'a little / a little bit / slighty', 'troch??, troszeczk?? - gdy chcemy powiedzie??, ??e co?? jest tylko troch?? bardziej \"jakie??\" (np. pi??kniejsze, bardziej s??oneczne)', 1, 'She is a little older than he.My car is a little bit more comfortable than yours.', 0),
(43, 'by far', 'jak dot??d', 1, 'by far + st. najwy??szy przymiotnikaIt\'s by far the best pizza I have ever eaten.', 0),
(44, 'one of', 'jeden z', 1, 'one of + st. najwy??szy przymiotnika + rzeczownikIt\'s one of the tallest mountains I have ever climbed.', 0),
(45, 'advantage', 'zaleta', 1, '(brak)', 0),
(46, 'disadvantage', 'wada', 1, '(brak)', 0),
(47, 'however,', 'jednak', 1, '(brak)', 0),
(48, 'one of the main advantages', 'jedn?? z g????wnych zalet', 1, '(brak)', 0),
(49, 'in addition to this,', 'w dodatku do tego, opr??cz tego', 1, '(brak)', 0),
(50, 'on the other hand,', 'z drugiej strony, z innej strony', 1, '(brak)', 0),
(51, 'another disadvantage', 'inn?? wad??, kolejn?? wad??', 1, 'another disadvantage of modern technology is...', 0),
(52, 'in my opinion', 'moim zdaniem', 1, '(brak)', 0),
(53, 'the problem is that', 'problemem jest to, ??e', 1, '(brak)', 0),
(54, 'benefit', 'korzy????, po??ytek', 1, '(brak)', 0),
(55, 'harmful', 'szkodliwy', 1, '(brak)', 0),
(56, 'conclusion', 'wniosek', 1, '(brak)', 0),
(57, 'introduction', 'wst??p', 1, '(brak)', 0),
(58, 'the most important advantage is', 'najwa??niejsz?? zalet?? jest', 1, '(brak)', 0),
(59, 'the main disadvantage is', 'g????wn?? wad?? jest', 1, '(brak)', 0),
(60, 'although,', 'chocia??, aczkolwiek', 1, '(brak)', 0),
(61, 'as well as that,', 'opr??cz tego', 1, '(brak)', 0),
(62, 'and another thing,', 'i kolejn?? rzecz??...', 1, '(brak)', 0),
(63, 'In general,', 'og??lnie rzecz bior??c (generalnie)', 1, '(brak)', 0),
(64, 'as far as I\'m concerned', 'o ile mi wiadomo, je??li o mnie chodzi to jestem przekonany', 1, '(brak)', 0),
(65, 'tidal wave', 'p??ywowa fala', 1, '(brak)', 0),
(66, 'nightmare', 'koszmar', 1, '(brak)', 0),
(67, 'wrestler', 'zapa??nik', 1, '(brak)', 0),
(68, 'wasp', 'osa', 1, '(brak)', 0),
(69, 'prove', 'udowodni??', 1, '(brak)', 0),
(70, 'exactly the same as', 'dok??adnie tak samo jak', 1, '(brak)', 0),
(71, 'very similar to', 'bardzo podobny do', 1, '(brak)', 0),
(72, 'he\'s not as tall as...', 'on nie jest tak wysoki jak...', 1, '(brak)', 0),
(73, 'question', 'pytanie; kwestionowa??', 1, '(brak)', 0),
(74, 'wonder', 'cud; zastanawia?? si??', 1, '(brak)', 0),
(75, 'discuss', 'dyskutowa??', 1, '(brak)', 0),
(76, 'debate', 'debata; debatowa??', 1, '(brak)', 0),
(77, 'responde, reply', 'odpowiada?? (np. na list)', 1, '(brak)', 0),
(78, 'answer, reply, response', 'odpowied??', 1, '(brak)', 0),
(79, 'research', 'badania; prowadzi?? prace badawcze', 1, '(brak)', 0),
(80, 'investigate', 'prowadzi?? dochodzenie', 1, '(brak)', 0),
(81, 'inquire, ask', 'zapyta??', 1, '(brak)', 0),
(82, 'look into', 'przyjrze?? si?? czemu??', 1, '(brak)', 0),
(83, 'thesis', 'praca dyplomowa', 1, '(brak)', 0),
(84, 'death penalty', 'kara ??mierci', 1, '(brak)', 0),
(85, 'round windows', 'okr??g??e okna', 1, '(brak)', 0),
(86, 'inquiry', 'zapytanie', 1, '(brak)', 0),
(87, 'we ran out of coffee', 'sko??czy??a nam si?? kawa', 1, '(brak)', 0),
(88, 'jellyfish', 'meduza', 1, '(brak)', 0),
(89, 'doughnut', 'p??czek', 1, '(brak)', 0),
(90, 'break up', 'rozpa???? si??', 1, '(brak)', 0),
(91, 'over a volcano', 'nad wulkanem', 1, '(brak)', 0),
(92, 'number of hairs on a head', 'liczba w??os??w na g??owie', 1, '(brak)', 0),
(93, 'mess / messy', 'ba??agan / ba??aganiarski', 1, '(brak)', 0),
(94, 'hair / hairy', 'w??osy / ow??osiony', 1, '(brak)', 0),
(95, 'redponse / responsible', 'odpowied?? / odpowiedzialny', 1, '(brak)', 0),
(96, 'love / lovable', 'mi??o???? / kochaniutki, mi??y', 1, '(brak)', 0),
(97, 'profit / profitable', 'zysk / zyskowny, dochodowy', 1, '(brak)', 0),
(98, 'thank / thankful', 'dzi??kowa?? / wdzi??czny', 1, '(brak)', 0),
(99, 'pain / painful', 'b??l / bolesny', 1, '(brak)', 0),
(100, 'peace / peaceful', 'pok??j (spok??j) / pokojowy (spokojny)', 1, '(brak)', 0),
(101, 'explosion / explosive', 'wybuch, eksplozja / wybuchowy', 1, '(brak)', 0),
(102, 'creativity / creative', 'kreatywno???? / kreatywny', 1, '(brak)', 0),
(103, 'effect / effective', 'skutek (efekt) / skuteczny', 1, '(brak)', 0),
(104, 'use / useless / useful', 'u??ytek / bezu??yteczny / u??yteczny', 1, '(brak)', 0),
(105, 'home / homeless', 'dom / bezdomny', 1, '(brak)', 0),
(106, 'hope / hopeless', 'nadzieja / beznadziejny', 1, '(brak)', 0),
(107, 'biology / biological', 'biologia / biologiczny', 1, '(brak)', 0),
(108, 'poet / poetic', 'poeta / poetycki', 1, '(brak)', 0),
(109, 'value / valuable', 'warto???? / warto??ciowy', 1, '(brak)', 0),
(110, 'ease / easy', '??atwo???? / ??atwy', 1, '(brak)', 0),
(111, 'even', 'nawet', 1, '(brak)', 0),
(112, 'educate / education', 'kszta??ci?? / edukacja', 1, '(brak)', 0),
(113, 'relax / relaxation', 'relaksowa?? si?? / relaks', 1, '(brak)', 0),
(114, 'imagine / imagination', 'wyobrazi?? / wyobra??nia', 1, '(brak)', 0),
(115, 'immigrate / immigration', 'imigrowa?? / imigracja', 1, '(brak)', 0),
(116, 'pollute / pollution', 'zanieczy??ci?? / zanieczyszczenie', 1, '(brak)', 0),
(117, 'instruct / instruction', 'instruowa?? / instrukcja', 1, '(brak)', 0),
(118, 'depress / depression', 'deprymowa??, przygn??bia?? / depresja', 1, '(brak)', 0),
(119, 'compete / competition', 'rywalizowa?? / konkurs', 1, '(brak)', 0),
(120, 'entertiain / entertainment', 'zabawia?? / rozrywka', 1, '(brak)', 0),
(121, 'improve / improvement', 'poprawia??, ulepsza?? / poprawa, ulepszenie', 1, '(brak)', 0),
(122, 'employ / employment', 'zatrudnia?? / zatrudnienie', 1, '(brak)', 0),
(123, 'agree / agreement', 'zgodzi?? si?? / umowa', 1, '(brak)', 0),
(124, 'run / running', 'biega?? / bieganie', 1, '(brak)', 0),
(125, 'smoke / smoking', 'pali?? / palenie (papierosy)', 1, '(brak)', 0),
(126, 'laugh / laughing', '??mia?? si?? / roze??miany', 1, '(brak)', 0),
(127, 'eat / eating', 'je???? / zjadanie', 1, '(brak)', 0),
(128, 'weak / weakness', 's??aby / s??abo????', 1, '(brak)', 0),
(129, 'lonely / loneliness', 'samotny / samotno????', 1, '(brak)', 0),
(130, 'happy / happiness', 'szcz????liwy / szcz????cie', 1, '(brak)', 0),
(131, 'kind / kindness', 'uprzejmy / uprzejmo????', 1, '(brak)', 0),
(132, 'stupid / stupidity', 'g??upi / g??upota', 1, '(brak)', 0),
(133, 'sensitive / sensitivity', 'wra??liwy / wra??liwo????', 1, '(brak)', 0),
(134, 'responsible / responsibility', 'odpowiedzialny / odpowiedzialno????', 1, '(brak)', 0),
(135, 'it\'s broken down', 'to si?? zepsu??o', 1, '(brak)', 0),
(136, 'it needs recharging', 'to potrzebuje ponownego za??adowania', 1, '(brak)', 0),
(137, 'it\'s out of order', 'to nie jest w porz??dku', 1, '(brak)', 0),
(138, 'it needs fixing', 'trzeba to naprawi??, to potrzebuje naprawy', 1, '(brak)', 0),
(139, 'there is no reception', 'nie ma zasi??gu', 1, '(brak)', 0),
(140, 'try switching it off', 'spr??buj wy????czenia tego', 1, '(brak)', 0),
(141, 'it keeps making this strange noise', 'to wydaje dziwny d??wi??k', 1, '(brak)', 0),
(142, 'it\'s crashed', 'to jest rozbite (po wypadku)', 1, '(brak)', 0),
(143, 'it\'s frozen', 'zawiesi?? si??', 1, '(brak)', 0),
(144, 'it doesn\'t work', 'to nie dzia??a', 1, '(brak)', 0),
(145, 'we have to sort it out', 'musimy to rozwi??za??', 1, '(brak)', 0),
(146, 'save it onto a memory stick', 'zapisa?? to na pami??ci (np. pendrive)', 1, '(brak)', 0),
(147, 'shall I print it for you?', 'czy wydrukowa?? to dla ciebie?', 1, '(brak)', 0),
(148, 'try to solve the problem', 'pr??bowa?? rozwi??za?? problem', 1, '(brak)', 0),
(149, 'shout at colleagues', 'krzycze?? na koleg??w', 1, '(brak)', 0),
(150, 'hit the PC', 'uderza?? w komputer', 1, '(brak)', 0),
(151, 'throw parts of the computer', 'rzuca?? cz????ciami komputerowymi', 1, '(brak)', 0),
(152, 'frustration', 'frustracja', 1, '(brak)', 0),
(153, 'anger', 'z??o????, gniew', 1, '(brak)', 0),
(154, 'could you hold the line, please?', 'm??g??by?? poczeka?? na lini, prosz???', 1, '(brak)', 0),
(155, 'coulg you give me a refund?', 'm??g??by?? mi zwr??ci?? pieni??dze', 1, '(brak)', 0),
(156, 'could you tell me who I should speak to?', 'm??g??by?? mi powiedzie?? z kim powinienem rozmawia???', 1, '(brak)', 0),
(157, 'could you tell me what the problem is?', 'm??g??by?? mi powiedzie?? jaki jest problem?', 1, '(brak)', 0),
(158, 'do you know what the problem is?', 'wiesz w czym problem?', 1, '(brak)', 0),
(159, 'would you mind booking us a table?', 'czy mia??by?? co?? przeciwko ??eby?? zarezerwowa?? nam stolik?', 1, '(brak)', 0),
(160, 'would you mind coming a little bit earlier?', 'czy mia??by?? co?? przeciwko ??eby?? przyszed?? troch?? wcze??niej?', 1, '(brak)', 0),
(161, 'could you tell me what time it is?', 'm??g??by?? mi powiedzie?? kt??ra jest godzina?', 1, '(brak)', 0),
(162, 'do you know how to get there?', 'czy wiesz jak si?? tam dosta???', 1, '(brak)', 0),
(163, 'do you know what time the shops open?', 'czy wiesz o kt??rej otwieraj?? sklepy?', 1, '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Unit_6`
--

CREATE TABLE `Unit_6` (
  `id` int(10) NOT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Unit_6`
--

INSERT INTO `Unit_6` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'fear', 'strach', 1, '(brak)', 0),
(2, 'anger', 'z??o????', 1, '(brak)', 0),
(3, 'distress', 'b??l, cierpienie', 1, '(brak)', 0),
(4, 'joy', 'rado????', 1, '(brak)', 0),
(5, 'surprise', 'niespodzianka, zaskoczenie', 1, '(brak)', 0),
(6, 'disgust', 'obrzydzenie', 1, '(brak)', 0),
(7, 'annoy / annoyed / annoying', 'irytowa?? / zirytowany / irytuj??cy', 1, '(brak)', 0),
(8, 'relaxed / relaxing', 'zrelaksowany / relaksuj??cy', 1, '(brak)', 0),
(9, 'bored / boring', 'znudzony / nudny', 1, '(brak)', 0),
(10, 'frightened / frightening', 'przera??ony / przera??aj??cy', 1, '(brak)', 0),
(11, 'worried / worrying', 'zmartwiony / niepokoj??cy', 1, '(brak)', 0),
(12, 'embarrassed / embarrassing', 'zak??opotany, za??enowany / ??enuj??cy', 1, '(brak)', 0),
(13, 'exhausted / exhausting', 'wyczerpany / wyczerpuj??cy', 1, '(brak)', 0),
(14, 'confused / confusing', 'zmieszany / myl??cy', 1, '(brak)', 0),
(15, 'shocked / shocking', 'zszokowany / szokuj??cy', 1, '(brak)', 0),
(16, 'satisfied / satisfying', 'zadowolony / satysfakcjonuj??cy', 1, '(brak)', 0),
(17, 'do you find your job satisfying?', 'czy uwa??asz swoj?? prac?? za satysfakcjonuj??c???', 1, '(brak)', 0),
(18, 'cause = prompt', 'powodowa??', 1, '(brak)', 0),
(19, 'induce = evoke', 'wywo??a??', 1, '(brak)', 0),
(20, 'rotten', 'zepsute (o jedzeniu)', 1, '(brak)', 0),
(21, 'excited / exciting', 'podekscytowany / ekscytuj??cy', 1, '(brak)', 0),
(22, 'terrified / terrifing', 'przera??ony / przera??aj??cy', 1, '(brak)', 0),
(23, 'astonished / astonishing', 'zdumiony / zdumiewaj??cy', 1, '(brak)', 0),
(24, 'tiring / tired', 'm??cz??cy / zm??czony', 1, '(brak)', 0),
(25, 'laughter therapy', 'terapia ??miechu', 1, '(brak)', 0),
(26, 'click on', 'klikn????', 1, '(brak)', 0),
(27, 'try on', 'przymierzy??', 1, '(brak)', 0),
(28, 'get on', 'dogadywa?? si?? z kim??', 1, '(brak)', 0),
(29, 'go off', 'zerwa?? znajomo????', 1, '(brak)', 0),
(30, 'take off', 'zdj????', 1, '(brak)', 0),
(31, 'log off', 'wylogowa?? si??', 1, '(brak)', 0),
(32, 'chat sb up', 'zagada?? do kogo??', 1, '(brak)', 0),
(33, 'scroll up', 'przewija??', 1, '(brak)', 0),
(34, 'dress down', 'ubra?? si?? nieodpowiednio', 1, '(brak)', 0),
(35, 'calm life', 'spokojne ??ycie', 1, '(brak)', 0),
(36, 'settle down', 'ustatkowa?? si??', 1, '(brak)', 0),
(37, 'shut down', 'wy????czy??', 1, '(brak)', 0),
(38, 'cut off', 'odci????, uci????', 1, '(brak)', 0),
(39, 'call off', 'odwo??a??', 1, '(brak)', 0),
(40, 'put off', 'odk??ada??, odwleka??, prze??o??y??', 1, '(brak)', 0),
(41, 'check out', 'sprawdzi?? (tak??e wymeldowa??)', 1, '(brak)', 0),
(42, 'stand out', 'wyr????nia?? si??', 1, '(brak)', 0),
(43, 'work out', 'wymy??li??, rozpracowa??, rozgry????', 1, '(brak)', 0),
(44, 'look after', 'opiekowa??, zadba??, pilnowa??', 1, '(brak)', 0),
(45, 'take after', 'przypomina??, by?? podobnym', 1, '(brak)', 0),
(46, 'fill in', 'wype??ni??, uzupe??ni??', 1, '(brak)', 0),
(47, 'let ... in', 'wpu??ci??, wpuszcza??', 1, '(brak)', 0),
(48, 'persuade', 'przekona??, nam??wi??', 1, '(brak)', 0),
(49, 'dress up', 'wystroi??', 1, '(brak)', 0),
(50, 'raise money', 'kwestowa??, zbiera?? pieni??dze', 1, '(brak)', 0),
(51, 'hold a sale', 'robi?? wyprzeda??', 1, '(brak)', 0),
(52, 'do experiments', 'robi?? eksperymenty', 1, '(brak)', 0),
(53, 'get a seat / take a seat', 'usi??????', 1, '(brak)', 0),
(54, 'jump a queue', 'wpycha?? si?? w kolejk??', 1, '(brak)', 0),
(55, 'cut hair', 'obcina?? w??osy', 1, '(brak)', 0),
(56, 'watch a programme', 'ogl??da?? program', 1, '(brak)', 0),
(57, 'obtain', 'uzyska??', 1, '(brak)', 0),
(58, 'involve', 'anga??owa??', 1, '(brak)', 0),
(59, 'think creatively', 'my??le?? kreatywnie', 1, '(brak)', 0),
(60, 'get someone to do you a favour', 'sprawi?? by kto?? wy??wiadczy?? ci przys??ug??', 1, '(brak)', 0),
(61, 'bargain', 'okazja, promocja', 1, '(brak)', 0),
(62, 'instead', 'natomiast, za to, w zamian', 1, '(brak)', 0),
(63, 'ask for a favour', 'poprosi?? o przys??ug??', 1, '(brak)', 0),
(64, 'pass yours exams', 'zda?? twoje egzaminy', 1, '(brak)', 0),
(65, 'get a place at university', 'dosta?? si?? na uniwersytet', 1, '(brak)', 0),
(66, 'get engaged /get married', 'zar??czy?? si?? / pobra?? si??', 1, '(brak)', 0),
(67, 'lose your job, money', 'straci?? prac??, pieni??dze', 1, '(brak)', 0),
(68, 'fail a test', 'obla?? test', 1, '(brak)', 0),
(69, 'win a competition, match', 'wygra?? zawody, mecz', 1, '(brak)', 0),
(70, 'get promoted', 'awansowa??, dosta?? awans', 1, '(brak)', 0),
(71, 'get a degree', 'uzyska?? tytu?? naukowy', 1, '(brak)', 0),
(72, 'give a reason', 'poda?? pow??d', 1, '(brak)', 0),
(73, 'tone of voice', 'ton g??osu', 1, '(brak)', 0),
(74, 'prepare your listener', 'przygotuj swojego s??uchacza', 1, '(brak)', 0),
(75, 'making people too upset', 'zbytnie martwienie ludzi', 1, '(brak)', 0),
(76, 'give someone good / bad news', 'przekaza?? komu?? dobr?? / z???? wiadomo????', 1, '(brak)', 0),
(77, 'arrangement', 'uk??ad, porozumienie', 1, '(brak)', 0),
(78, 'I\'ve got some good news for you.', 'mam dobr?? wiadomo???? dla ciebie', 1, '(brak)', 0),
(79, 'I\'m really pleased to tell you...', 'Jestem naprawd?? zadowolony ??eby ci powiedzie??...', 1, '(brak)', 0),
(80, 'Bad news, I\'m afraid.', 'Z??e wie??ci, obawiam si??.', 1, NULL, 0),
(81, 'I\'m sorry to have to tell you, but', 'Przykro mi, ??e musz?? ci powiedzie??, ale', 1, '(brak)', 0),
(82, 'I\'m afraid I\'ve got some bad news', 'Obawiam si??, ??e mam z???? wiadomo????', 1, '(brak)', 0),
(83, 'There\'s something I\'ve got to tell you', 'Jest co?? co mam ci do powiedzenia', 1, '(brak)', 0),
(84, 'We\'ve got something to tell you', 'Mamy ci co?? do powiedzenia', 1, '(brak)', 0),
(85, 'Congratulations!', 'Gratulacje!', 1, '(brak)', 0),
(86, 'That\'s a shame.', 'Jaka szkoda.', 1, '(brak)', 0),
(87, 'You\'re joking?', '??artujesz?', 1, '(brak)', 0),
(88, 'You lucky thing.', 'Ty szcz????ciarzu.', 1, '(brak)', 0),
(89, 'That\'s terrible', 'To okropne', 1, '(brak)', 0),
(90, 'Well done!', 'Dobra robota!', 1, '(brak)', 0),
(91, 'I\'m so pleased for you.', 'Jestem z ciebie bardzo zadowolony.', 1, '(brak)', 0),
(92, 'I\'m really sorry to hear that.', 'Naprawd?? przyro mi to s??ysze??.', 1, '(brak)', 0),
(93, 'That\'s really annoying.', 'To jest naprawd?? denerwuj??ce.', 1, '(brak)', 0),
(94, 'exaggerate', 'wyolbrzymia??', 1, '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Unit_8`
--

CREATE TABLE `Unit_8` (
  `id` int(10) NOT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Unit_8`
--

INSERT INTO `Unit_8` (`id`, `v1`, `v2`, `weight`, `zdanie`, `flaga`) VALUES
(1, 'get on well with', 'dobrze dogadywa?? si?? z sb', 1, 'I get on well with my neighbour', 0),
(2, 'mind my own business', 'zajmowa?? si?? w??asnymi sprawami', 1, 'I prefer to mind my own business so I don\'t ask the neighbours personal question.', 0),
(3, 'over for coffee', 'na kaw??', 1, 'I sometimes invite my neighbour over for coffee', 0),
(4, 'nuisance', 'uci????liwy', 1, 'My neighbour\'s dog is a nuisance - he\'s always barking early in the morning (zawsze szczeka wcze??nie rano)', 0),
(5, 'get to know', 'pozna??', 1, 'We didn\'t get to know our neighbours for years.', 0),
(6, 'disturb', 'przeszkadza??, zaburza??, niepokoi??', 1, 'My neighbour has pets but they never disturb me', 0),
(7, 'get on my nerves', 'dzia??aj?? mi na nerwy', 1, 'My neighbours get on my nerves - he\'s always complaining', 0),
(8, 'we made friends', 'stali??my si?? przyjaci????mi', 1, 'We made friends with our neighbours immediately. (natychmiast)', 0),
(9, 'I like to keep myself to myself', 'lubi?? by?? sob??', 1, 'I like to keep myself to myself so my neighbours hasn\'t been in my house. (kiedy moich s??siad??w nie ma w domu)', 0),
(10, 'be quite noisy', 'by?? do???? ha??a??liwym', 1, 'I can be quite noisy so I often ask my neighbors about their lives.', 0),
(11, 'put your feet up', 'mo??esz odpocz????, wyci??gn???? nogi', 1, 'You can sit on this chair.', 0),
(12, 'make yourself at home', 'mo??esz poczu?? si?? jak u siebie w domu', 1, 'Please you can make oneself at your home.', 0),
(13, 'be my guest', 'poczuj si?? moim go??ciem', 1, 'I can expose you permission to use it.', 0),
(14, 'have a seat', 'mo??esz usi??????', 1, 'Let is just sit down and relax.', 0),
(15, 'help yourself', 'cz??stuj si??', 1, 'I will prepare something to food if you want.', 0);

--
-- Indeksy dla zrzut??w tabel
--

--
-- Indeksy dla tabeli `fiszki`
--
ALTER TABLE `fiszki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `info_table`
--
ALTER TABLE `info_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Media_1`
--
ALTER TABLE `Media_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Unit_1`
--
ALTER TABLE `Unit_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Unit_2`
--
ALTER TABLE `Unit_2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Unit_3`
--
ALTER TABLE `Unit_3`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Unit_4`
--
ALTER TABLE `Unit_4`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Unit_5`
--
ALTER TABLE `Unit_5`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Unit_6`
--
ALTER TABLE `Unit_6`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Unit_8`
--
ALTER TABLE `Unit_8`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `fiszki`
--
ALTER TABLE `fiszki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `info_table`
--
ALTER TABLE `info_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `Unit_1`
--
ALTER TABLE `Unit_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
