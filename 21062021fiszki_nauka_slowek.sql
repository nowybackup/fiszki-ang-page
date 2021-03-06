-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Cze 2021, 22:54
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.2

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
  `angielskie` varchar(70) CHARACTER SET utf8 NOT NULL,
  `polskie` varchar(70) CHARACTER SET utf8 NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(8, 'tedtalks', '1'),
(10, 'Media_1', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `media_1`
--

CREATE TABLE `media_1` (
  `id` int(10) NOT NULL,
  `angielskie` varchar(255) DEFAULT NULL,
  `polskie` varchar(255) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `media_1`
--

INSERT INTO `media_1` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(1, 'a morninig paper', 'poranna gazeta', '(brak)', 1),
(2, 'an evening paper', 'wieczorna gazeta', '(brak)', 1),
(3, 'a Sunday paper', 'niedzielna gazeta', '(brak)', 1),
(4, 'a colour supplement', 'kolorowy dodatek', '(brak)', 1),
(5, 'a quality paper', 'powa??na gazeta', '(brak)', 1),
(6, 'a tabloit', 'brukowiec', '(brak)', 1),
(7, 'the gutter press', 'prasa drukowana', '(brak)', 1),
(8, 'a glossy magazine', 'ilustrowane luksusowe czasopismo', '(brak)', 1),
(9, 'a specialist magazine', 'magazyn specialistyczny', '(brak)', 1),
(10, 'a womens\'s magazine', 'magazyn dla kobiet', '(brak)', 1),
(11, 'a motoring press', 'czasopisma motoryzacyjne', '(brak)', 1),
(12, 'an evening paper', 'wieczorna gazeta', '(brak)', 1),
(13, 'a Sunday paper', 'niedzielna gazeta', '(brak)', 1),
(14, 'a colour supplement', 'kolorowy dodatek', '(brak)', 1),
(15, 'a quality paper', 'powa??na gazeta', '(brak)', 1),
(16, 'a tabloit', 'brukowiec', '(brak)', 1),
(17, 'the sutter press', 'prasa drukowana', '(brak)', 1),
(18, 'a glossy press', 'ilustrowane luksusowe czasopismo', '(brak)', 1),
(19, 'a specialist magazine', 'magazyn specialistyczny', '(brak)', 1),
(20, 'a womens\'s magazine', 'magazyn dla kobiet', '(brak)', 1),
(21, 'the motorning press', 'czasopisma motoryzacyjne', '(brak)', 1),
(22, 'the ecomomic press', 'czsopisma ekonomiczne', '(brak)', 1),
(23, 'a journal', 'czasopismo fachowe', '(brak)', 1),
(24, 'the front page', 'pierwsza strona', '(brak)', 1),
(25, 'the cover', 'ok??adka', '(brak)', 1),
(26, 'the headlines', 'nag????wki', '(brak)', 1),
(27, 'a section', 'rubryka', '(brak)', 1),
(28, 'an article', 'artyku?? prasowy', '(brak)', 1),
(29, 'a column', 'szpalta/felieton', '(brak)', 1),
(30, 'the gossip column', 'kronnika towarzyska', '(brak)', 1),
(31, 'the cover', 'ok??adka', '(brak)', 1),
(32, 'the agony column', 'porady sercowe', '(brak)', 1),
(33, 'the obituaries', 'nekrologi', '(brak)', 1),
(34, 'the classified ads', 'og??oszenia drobne', '(brak)', 1),
(35, 'the credits', 'napisy podaj??ce autor??w', '(brak)', 1),
(36, 'an issue', 'wydanie, numer', '(brak)', 1),
(37, 'a copy', 'egzemnplarz', '(brak)', 1),
(38, 'the circulation', 'nak??ad', '(brak)', 1),
(39, 'a subsciption', 'prenumerata', '(brak)', 1),
(40, 'a subscriber', 'prenumerator', '(brak)', 1),
(41, 'print', 'drukowa??', '(brak)', 1),
(42, 'issue', 'wydawa??', '(brak)', 1),
(43, 'come out', 'ukazywa?? sie', '(brak)', 1),
(44, 'subscribe', 'prenumerowa??', '(brak)', 1),
(45, 'daily', 'dziennik', '(brak)', 1),
(46, 'weekly', 'tygodnik', '(brak)', 1),
(47, 'monthly', 'miesi??cznik', '(brak)', 1),
(48, 'quarterly', 'kwartalnik', '(brak)', 1),
(49, 'a feature film', 'film dokumentalny', '(brak)', 1),
(50, 'a return, a repeat', 'powt??rka, ponowna emisja', '(brak)', 1),
(51, 'a cartoon', 'kresk??wka', '(brak)', 1),
(52, 'a trailer', 'zwiastun', '(brak)', 1),
(53, 'a commercial, an adverb', 'reklama', '(brak)', 1),
(54, 'a commercial break', 'przerwa na reklamy', '(brak)', 1),
(55, 'programme, schedule', 'planowa??', '(brak)', 1),
(56, 'produce a show', 'nagrywa?? program', '(brak)', 1),
(57, 'entrain', 'dostarcza?? rozrywki', '(brak)', 1),
(58, 'engross', 'przyciaga??, poch??ania?? uwag??', '(brak)', 1),
(59, 'live', 'na zywo', '(brak)', 1),
(60, 'pre-recorded', 'nagrany wcze??niej', '(brak)', 1),
(61, 'educational', 'edukacyjny', '(brak)', 1),
(62, 'stulifving', 'og??upiaj??cy', '(brak)', 1),
(63, 'addictive', 'uzale??niaj??cy', '(brak)', 1),
(64, 'a T.V. journalist', 'dziennikarz telewizyjny', '(brak)', 1),
(65, 'an anchorman', 'prezenter dy??urny', '(brak)', 1),
(66, 'an announcer', 'spiker', '(brak)', 1),
(67, 'a newsreader', 'prezenter wiadomo??ci', '(brak)', 1),
(68, 'a compere', 'gospoda??/ni programu', '(brak)', 1),
(69, 'a broadcaster', 'prezenter', '(brak)', 1),
(70, 'a sportcaster', 'dziennikarz sportowy', '(brak)', 1),
(71, 'a quiz master', 'osoba prowadz??ca quiz', '(brak)', 1),
(72, 'be on the screen', 'by?? na ekranie', '(brak)', 1),
(73, 'present the news', 'przedstawia?? wiadomo??ci', '(brak)', 1),
(74, 'hold the audience', 'przykuwa?? uwag?? publiczno??ci', '(brak)', 1),
(75, 'host, compere', 'by?? gospodarzem programu', '(brak)', 1),
(76, 'the fourth estate', 'czwarta w??adza', '(brak)', 1),
(77, 'the freedom on the press', 'wolno???? prasy', '(brak)', 1),
(78, 'press freedom', 'swoboda prasy', '(brak)', 1),
(79, 'freedom of expression speech', 'wolno???? wypowidzi s??owa', '(brak)', 1),
(80, 'the right to know', 'prawo do informacji', '(brak)', 1),
(81, 'investigative journalism', 'dziennikarstwo dochodzeniowe', '(brak)', 1),
(82, 'mesia coverage', 'zainteresowanie medi??w', '(brak)', 1),
(83, 'a newsmaker', 'temat z pierwszych stron gazet', '(brak)', 1),
(84, 'the right to privacy', 'prawo do prywatno??ci', '(brak)', 1),
(85, 'a breach of ethics', 'naruszenie etyki', '(brak)', 1),
(86, 'propaganda', 'propaganda', '(brak)', 1),
(87, 'a muckraker', 'dziennikarz szukaj??cy sensacji', '(brak)', 1),
(88, 'a rumour', 'plotka', '(brak)', 1),
(89, 'a scandal', 'skandal', '(brak)', 1),
(90, 'libel', 'znies??awienie', '(brak)', 1),
(91, 'slander', 'oszczerstwo, pom??wienie', '(brak)', 1),
(92, 'voyeurism', 'podgl??dactwo', '(brak)', 1),
(93, 'investigate a case', 'bada?? spraw??', '(brak)', 1),
(94, 'cover', 'robi?? reporta?? o', '(brak)', 1),
(95, 'spy', 'szpiegowa??', '(brak)', 1),
(96, 'pester, harass', 'm??czy??, n??ka??', '(brak)', 1),
(97, 'stalk', '??ledzi??', '(brak)', 1),
(98, 'unearth, dig out', 'wydobywa?? na ??wiat??o dzienne', '(brak)', 1),
(99, 'disclose', 'ujawnia??', '(brak)', 1),
(100, 'expose a scandal', 'demaskowa??, ujawnia?? skandal', '(brak)', 1),
(101, 'libel, defame', 'znies??awia??', '(brak)', 1),
(102, 'slander', 'rzuca?? oszczerstwa', '(brak)', 1),
(103, 'manipulate', 'manipulowa??', '(brak)', 1),
(104, 'make the news', 'trafia?? na czo????wki', '(brak)', 1),
(105, 'inaccurate', 'nie dok??adny', '(brak)', 1),
(106, 'unreliable', 'niewiarygodny', '(brak)', 1),
(107, 'objective', 'obiektywny', '(brak)', 1),
(108, 'biassed, prejudiced', 'stronniczny, tendencyjny', '(brak)', 1),
(109, 'electronic surveillance', 'inwigilacja elektroniczna', '(brak)', 1),
(110, 'closed-circuit television', 'telewizja przemys??owa', '(brak)', 1),
(111, 'wiretapping', 'pods??uch telefoniczny', '(brak)', 1),
(112, 'a phone pug', 'pluskwa telefoniczna', '(brak)', 1),
(113, 'eavesdropping', 'pods??uchiwanie', '(brak)', 1),
(114, 'watch', 'obserwowa??', '(brak)', 1),
(115, 'tap/bug a phone', 'za??o??y?? pods??uch telefoniczny', '(brak)', 1),
(116, 'eavesdrop on', 'pods??uchiwa??', '(brak)', 1),
(117, 'self-censorship', 'autocenzura', '(brak)', 1),
(118, 'right of search', 'prawo do przeszukania', '(brak)', 1),
(119, 'a seizure', 'konfiskata', '(brak)', 1),
(120, 'a ban', 'zakaz', '(brak)', 1),
(121, 'news blackout', 'zakaz rozpowszechniania informacji', '(brak)', 1),
(122, 'censor', 'cenzurowa??', '(brak)', 1),
(123, 'suppress press freedom', 'znie???? wolno???? prasy', '(brak)', 1),
(124, 'media coverage', 'sprawozdanie w mediach', '(brak)', 1),
(125, 'a journalist', 'dziennikarz', '(brak)', 1),
(126, 'reporter', 'reportarz', '(brak)', 1),
(127, 'a columnist', 'feletonista', '(brak)', 1),
(128, 'a freelance', 'niezale??ny', '(brak)', 1),
(129, 'a foreign corresponder', 'koresponder zagraniczny', '(brak)', 1),
(130, 'an editor', 'redaktor naczelny', '(brak)', 1),
(131, 'a newspaper editor', 'redaktor pisma', '(brak)', 1),
(132, 'publisher', 'wydawca', '(brak)', 1),
(133, 'a press tycoon', 'magnat prasowy', '(brak)', 1),
(134, 'news gatherning', 'zbieranie informacji', '(brak)', 1),
(135, 'a news release (US)', 'o??wiadczenie prasowe', '(brak)', 1),
(136, 'inform', 'informmowa??', '(brak)', 1),
(137, 'report', 'relacionowa??', '(brak)', 1),
(138, 'cover', 'robi?? reportarz', '(brak)', 1),
(139, 'rewrite', 'napisa?? od nowa', '(brak)', 1),
(140, 'edit', 'redagowa??', '(brak)', 1),
(141, 'publish', 'publikowa??', '(brak)', 1),
(142, 'scoop', 'opublikowa?? przed konkurencj??', '(brak)', 1),
(143, 'hot the headlines', 'trafi?? na nag????wki', '(brak)', 1),
(144, 'sensitize publish opinion', 'uczuli?? opini?? publiczn??', '(brak)', 1),
(145, 'make people awarge', 'u??wiadomi?? ludziom', '(brak)', 1),
(146, 'have news value', 'stanowi?? interesuj??c?? wiadomo????', '(brak)', 1),
(147, 'a radio set, a transmistor', 'osbiornik radiowy', '(brak)', 1),
(148, 'a car radio', 'radio samochodowe', '(brak)', 1),
(149, 'an aearial', 'antena', '(brak)', 1),
(150, 'wave', 'fala', '(brak)', 1),
(151, 'short wave', 'fale kt??tkie', '(brak)', 1),
(152, 'short wave', 'fale ??rednie', '(brak)', 1),
(153, 'long wave', 'fale d??ugie', '(brak)', 1),
(154, 'freqency modulation', 'modulacja cz??stotliwo??ci', '(brak)', 1),
(155, 'static interference', 'zak??ucenia elektroniczne', '(brak)', 1),
(156, 'a radio announcer', 'prezent radiowy', '(brak)', 1),
(157, 'the audience', 's??uchacze', '(brak)', 1),
(158, 'a news bulletin', 'serwic wiadomo??ci', '(brak)', 1),
(159, 'a news flesh', 'skr??t wiadomo??ci', '(brak)', 1),
(160, 'the audience', 's??uchacze', '(brak)', 1),
(161, 'a news bulletin', 'serwis wiadmo??ci', '(brak)', 1),
(162, 'pick up', 'skr??t wiadmo??ci', '(brak)', 1),
(163, 'broadcaster', 'nadawa??', '(brak)', 1),
(164, 'be on air', 'by?? na antenie', '(brak)', 1),
(165, 'be off the air', 'nie by?? na antenie', '(brak)', 1),
(166, 'a television set', 'odbiornik telewizyjny', '(brak)', 1),
(167, 'a black an white tv', 'telewizja czarno-bia??a', '(brak)', 1),
(168, 'a colour tv', 'kolorowa telewizja', '(brak)', 1),
(169, 'the remote control, the zapper', 'zdalne sterowanie, pilotem', '(brak)', 1),
(170, 'a screen', 'ekran', '(brak)', 1),
(171, 'a channel', 'kana??', '(brak)', 1),
(172, 'a network', 'sie??', '(brak)', 1),
(173, 'cable tevision', 'telewizja kablowa', '(brak)', 1),
(174, 'a dish aerial', 'telewizja satelitarna, talerz', '(brak)', 1),
(175, 'pay-per-view television', 'p??atne programy w telewizji', '(brak)', 1),
(176, 'toll channel', 'p??atny kana??', '(brak)', 1),
(177, 'a tv decoder', 'dekoder telewizyjny', '(brak)', 1),
(178, 'a video-cassete recorder', 'magnetowid', '(brak)', 1),
(179, 'a videotape', 'ta??ma wideo', '(brak)', 1),
(180, 'a viewer', 'telewidz', '(brak)', 1),
(181, 'a channer jumper', 'osoba skacz??ca z kana??u na kana??', '(brak)', 1),
(182, 'a tv addict', 'telemaniak, uzale??niony od tv', '(brak)', 1),
(183, 'watch tv', 'ogl??da?? tv', '(brak)', 1),
(184, 'turn the tv on/off', 'w????czy??, wy????czy?? tv', '(brak)', 1),
(185, 'channel-flick, zap', 'skaka?? po kana??ach', '(brak)', 1),
(186, 'videotape, record', 'nagrywa?? na ta??m??', '(brak)', 1),
(187, 'duplicate', 'kopiowa??', '(brak)', 1),
(188, 'a programme', 'program', '(brak)', 1),
(189, 'a morning programme', 'program poranny', '(brak)', 1),
(190, 'an evening programme', 'program wieczorny', '(brak)', 1),
(191, 'air time', 'czas na antenie', '(brak)', 1),
(192, 'the ratings', 'notowania', '(brak)', 1),
(193, 'prime time', 'najlepszy czas antenowy', '(brak)', 1),
(194, 'an audience share', 'ogl??dalno????', '(brak)', 1),
(195, 'news', 'wiadomo??ci', '(brak)', 1),
(196, 'a documentary', 'program dokumentalny', '(brak)', 1),
(197, 'a sports broadcaster', 'transmisja sportowa', '(brak)', 1),
(198, 'the weather forecast', 'prognoza pogody', '(brak)', 1),
(199, 'a show', 'program rozrywkowy', '(brak)', 1),
(200, 'a variety show', 'varietes', '(brak)', 1),
(201, 'a quiz show', 'quiz, teleturniej', '(brak)', 1),
(202, 'a talk show, a chat show', 'talk show', '(brak)', 1),
(203, 'a serial', 'serial', '(brak)', 1),
(204, 'a series', 'cykl, seria', '(brak)', 1),
(205, 'a television film', 'film telewizyjny', '(brak)', 1),
(206, 'be subject to censorship', 'podlega?? cenzurze', '(brak)', 1),
(207, 'blue-pencil', 'wykre??la??, cenzurowa??', '(brak)', 1),
(208, 'silence', 'uciszy??', '(brak)', 1),
(209, 'gag', 'zakneblowa??', '(brak)', 1),
(210, 'curtail access', 'ograniczy?? dost??p', '(brak)', 1),
(211, 'confiscate, seize', 'konfiskowa??, zaj????', '(brak)', 1),
(212, 'ban, suppress', 'zakaza??, zataja??', '(brak)', 1),
(213, 'quality papers', 'ambitne pismo du??ego formatu', '(brak)', 1),
(214, 'tabloids', 'popularne pisma ??redniego formatu', '(brak)', 1),
(215, 'British Brodcaster Corporation', 'BBC', '(brak)', 1),
(216, 'Independent Television', 'ITV', '(brak)', 1),
(217, 'American Broadcasting Corporation', 'ABC', '(brak)', 1),
(218, 'National Broadcasting Company', 'NBC', '(brak)', 1),
(219, 'Columbia Broadcasting System', 'CBS', '(brak)', 1),
(220, 'Cable News Network', 'CNN', '(brak)', 1),
(221, 'Instructional TV', 'ITV', '(brak)', 1),
(222, 'Music Tv', 'MTV', '(brak)', 1),
(223, 'The Press Association', 'P.A', '(brak)', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tedtalks`
--

CREATE TABLE `tedtalks` (
  `id` int(2) DEFAULT NULL,
  `angielskie` varchar(28) DEFAULT NULL,
  `polskie` varchar(27) DEFAULT NULL,
  `zdanie` varchar(124) DEFAULT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tedtalks`
--

INSERT INTO `tedtalks` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(2, 'eldest people', 'starszyzna', 'There used to be an elders instead of a government', 1),
(3, 'medical care', 'opieka medyczna', 'A lot of people needs medical care.', 1),
(4, 'fled abroad', 'ucieczka za granice', 'Most people fled abroad when it is hard in the country.', 1),
(5, 'stand on our feet', 'staramy si?? pomaga??', 'In time epidemic everyone stand on feet other people.', 1),
(6, 'victims', 'ofiary', 'In the war everytime are victims.', 1),
(7, 'majority', 'wi??kszo????', 'Majority world society don\'t know about bad situation in Africa.', 1),
(8, 'political division', 'podzia?? polityczny', 'Poland goverment is politcal divison: right and left site.', 1),
(9, 'desire', 'pragnienie', 'I have big desire that come back normal life.', 1),
(10, 'surgery', 'chirurgia', 'My cousin studded surgery at University of Katowice.', 1),
(11, 'distinguished', 'wybitny', 'He is an distinguished scientist in Poland.', 1),
(12, 'circumstances', 'okoliczno??ci', 'What were the circumstances of the outbreak of civil war?', 1),
(13, 'respecting', 'dotycz??cy', 'I found a document respecting my serious illness.', 1),
(14, 'essential', 'kluczowy', 'Always when telling a story, you have to go through a essential moment.', 1),
(15, 'treating', 'leczenie', 'They are treating a lot of children and women.', 1),
(16, 'camp', 'ob??z', 'I went to camp on vacation.', 1),
(17, 'cesarean section', 'cesarskie ci??cie', 'My neighbor had a caesarean section.', 1),
(18, 'elementary', 'podstaw??wka', 'I had only good grades in elementary.', 1),
(19, 'rule', 'zasada', 'The rules are there to break them.', 1),
(20, 'clan divisions', 'podzia??y klanowe', 'There is a clan division in my village.', 1),
(21, 'cesarean section', 'cesarskie ci??cie', 'We are doing caesarean section and diffrent operations.', 1),
(22, 'medical care', 'opieka medyczna', 'You running a medical clinic,but much, much needed medical care to people', 1),
(23, 'circumstances', 'okoliczno??ci', 'For you to become a doctor and to work with your mother in these circumstances.', 1),
(24, 'law and order', 'prawo i porz??dek', 'It was we were having that time government- law and order', 1),
(25, 'gynecological complication', 'powik??ania ginekologicze', 'My mother died in gynecological complication.', 1),
(26, 'war zone', 'strefa dzia??a?? wojennych', 'and if you did you are forgiven for wondering how an nutt manage to end up in a war zone', 1),
(27, 'in war-torn', 'w ogarni??tej wojn??', 'I actually was offered right out of medical school and actepted a volunteer contract to work with UNICEF in war-torn Somalia', 1),
(28, 'caused by the war', 'spowodowane wojn??', '(brak)', 1),
(29, 'genocide', 'ludob??jstwo', 'It was right on the heels of the Rwandan Genocide and ...', 1),
(30, 'malnutrition and dehydration', 'niedo??ywienie i odwodnienie', 'She had died hours before an malnutrition and deyhydration.', 1),
(31, 'malnourished', 'niedo??ywienie', 'Children became very malnourished', 1),
(32, 'backyard', 'podw??rko', 'They are in our backyard', 1),
(33, 'severe', 'silny', 'We take the severe ones, and we reschedule the other ones the next day.', 1),
(34, 'reschedule', 'zmieni?? termin', 'We take the severe ones, and we reschedule the other ones the next day.', 1),
(35, 'majority', 'wi??kszo????', 'The majority are women and girls.', 1),
(36, 'admission', 'wst??p, dost??p, pozwolenie', 'Would you explain the rules for admission?', 1),
(37, 'distinguished', 'wybitny', 'There is no clan distinguishes and political division in Somali sociaty.', 0),
(38, 'Whomever', 'wyrzucamy', 'Whomever makes those things we throw out.', 1),
(39, 'surgeries', 'operacje', 'You see 300 patients, 20 surgeries and 90,000 people to manage.', 1),
(40, 'backyard', 'podw??rko', 'So our patients are women and children and they are in our backyard', 1),
(41, 'reschedule', 'zmiana terminu', 'We reschedule the other ones the next day.', 1),
(42, 'Rules', 'zasady', 'And the doctors have some very big rules about who can get treated at the clinic.', 1),
(43, 'dehydration', 'odwodnienie', 'When you take on a lot of sport activities, remember about drinking water to avoid dehydration!', 1),
(44, 'Automatic rifle', 'karabin maszynowy', 'Automatic rifles fire a series of shots each time you pull the trigger', 1),
(45, 'force', 'si??a', 'Force is calculated as mass times accelaration.', 1),
(46, 'Invasion', 'inwazja', 'In 1588 Spain has invaded England.', 1),
(47, 'various', 'r????ny', 'Everybody have various views.', 1),
(48, 'Humanitarian catastrophe', 'Katastrofa humanitarna', 'Africa is one of the most country where is a humanitarian catastrophe.', 1),
(49, 'Stiff', 'Sztywny', 'My leg is stiff. My doctor gived me a iron splint after my breaking.', 1),
(50, 'Occupying', 'Zajmowanie', 'In World War II the Nazist occupying western part Poland.', 1),
(51, 'Coercion', 'Przymus', 'In times reigning Roma slaves were coercion to fight as gladiator.', 1),
(52, 'nutt', '??wir', 'Everybody calls nutt people who eat bread with chips.', 1),
(53, 'nursery school', 'szko??a medyczna', 'I am planning to go to nursery school.', 1),
(54, 'weapon', 'bro??', 'In Poland it\'s difficult to get a permission for weapon.', 1),
(55, 'disclosure mechanisms', 'mechanizmy jawno??ci', 'the government is working on introducing a disclosure mechanism.', 1),
(56, 'demand', 'popyt', 'Demand for face masks has increased in the face of epidemics.', 1),
(57, 'treaty', 'traktat', 'The president has signed a new treaty', 1),
(58, 'mostly', 'przewa??nie', 'Mostly poor children die because they are malnourished.', 1),
(59, 'rifles', 'karabiny', 'The rifles shouldn\'t be as accessible as they are now.', 1),
(60, 'favor', 'przys??uga', 'The rich people should do favor children and help them.', 1),
(61, 'staggering', 'osza??amiaj??cy', 'A lot of children are starving, it\'s staggering.', 1),
(62, 'displaced', 'przesiedlony', 'Because of the war, most people are displaced to another place.', 1),
(63, 'combat', 'walka', 'The combat between states is terrible.', 1),
(64, 'contributions', 'udzia??y', 'Regular contributions like monthly contributions are a far more effective way to giving.', 1),
(65, 'Terryfing', 'Okropny', 'I can tell you that it is a terryfing and agonizing fear', 1),
(66, 'Clockwork', 'Mechaniczna', 'Can best be describe as \"Mad Max\" by way of \"a Clockwork Orange\"', 1),
(67, 'Infans', 'niemowl??', 'They were clutchig their infants very close', 1),
(68, 'coercion', 'nacisk', 'Not through force or coercion or invasion,but by simply looking at all', 1),
(69, 'civillians', 'Cywile', 'The vast majority of civillians like that young baby who are dying in war zones around the world', 1),
(70, 'famine', 'g????d', 'Mostly as results of war-related famine and disease.', 1),
(71, 'figure out', 'rozwi??za??', 'I was part of a team that was tasked with trying figure out how best to respond to this humanitarian catastrope.', 1),
(72, 'scrutinzing', 'bada??', 'This is a relationshio worth scrutinzing.', 1),
(73, 'increased', 'wzros??a', 'Increased control mechanisms won\'t solve that problem.', 1),
(74, 'terrifining', 'przera??aj??ce', 'I can tell you that it is a terryfing and agonizing fear', 1),
(75, 'beyond', 'poza', 'What when if we go beyond small arms for a second?', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unit_1`
--

CREATE TABLE `unit_1` (
  `id` int(11) NOT NULL,
  `angielskie` varchar(70) CHARACTER SET utf8 NOT NULL,
  `polskie` varchar(70) CHARACTER SET utf8 NOT NULL,
  `zdanie` varchar(255) CHARACTER SET utf8 NOT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `unit_1`
--

INSERT INTO `unit_1` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(6, 'extended family', 'dalsza rodzina, wielopokoleniowa rodzina', '(brak)jjj', 1),
(10, 'great-grandparents', 'pradziadkowie', '777', 1),
(11, 'my immediate family', 'moja najbli??sza rodzina', '(brak)', 1),
(12, 'include', 'zawiera??', '(brak)', 1),
(13, 'inherit', 'odziedziczy??', '(brak)', 1),
(14, 'inherited', 'odziedziczony', '(brak)', 1),
(15, 'medallist', 'medalista', '(brak)', 1),
(16, 'relative', 'krewny', '(brak)', 1),
(17, 'royal', 'kr??lewski', '(brak)', 1),
(18, 'take after', 'upodabnia??, przypomina?? kogo??, by?? podobnym', '(brak)', 1),
(19, 'aim', 'cel, d????enie', '(brak)', 1),
(20, 'apply for a job', 'ubiega?? si?? o prac??', '(brak)', 1),
(21, 'colleague', 'kolega', '(brak)', 1),
(22, 'draft', 'projekt, szkic, wersja roboczac', '(brak)cc', 1),
(23, 'publishing company', 'wydawnictwo', '(brak)', 1),
(24, 'specialisation', 'specjalizacja', '(brak)', 1),
(25, 'version', 'wersja', '(brak)', 1),
(26, 'ability', 'zdolno????', '(brak)', 1),
(27, '', '', '', 1),
(28, 'be in charge', 'by?? u w??adzy, rz??dzi??', '(brak)', 1),
(29, 'gene', 'gen', '(brak)', 1),
(30, 'genetic', 'genetyczny', '(brak)', 1),
(31, 'accurate', 'dok??adny, trafny', '(brak)', 1),
(32, 'chain', '??a??cuch', '(brak)', 1),
(33, 'classmate', 'kolega z klasy', '(brak)', 1),
(34, 'handlebar', 'kierownica', '(brak)', 1),
(35, 'pupil', 'ucze??', '(brak)', 1),
(36, 'team-mate', 'kolega z dru??yny', '(brak)', 1),
(37, 'according to', 'wed??ug, zgodnie z', '(brak)', 1),
(38, 'balance', 'bilans', '(brak)', 1),
(39, 'challenge', 'wyzwanie', '(brak)', 1),
(40, 'do someone a favour', 'zrobi?? komu?? przys??ug??', '(brak)', 1),
(41, 'get on with someone', 'dogadywa?? si?? z kim?? by?? z kim?? w dobrych stosunkach', '(brak)', 1),
(42, 'go on a diet', 'przej???? na diet??', '(brak)', 1),
(43, 'research agency', 'agencja badawcza', '(brak)', 1),
(44, 'respond', 'odpowiada??', '(brak)', 1),
(45, 'take part in', 'wzi???? udzia?? w', '(brak)', 1),
(46, 'take responsibility for', 'wzi???? odpowiedzialno???? za', '(brak)', 1),
(47, 'appropriately', 'odpowiednio', '(brak)', 1),
(48, 'answer briefly', 'odpowiada?? kr??tko, zwi????le', '(brak)', 1),
(49, 'dress smartly', 'ubra?? si?? elegancko', '(brak)', 1),
(50, 'send references', 'wys??a?? referencje', '(brak)', 1),
(51, 'arrive on time', 'przyby?? na czas', '(brak)', 1),
(52, 'avoid eye contact', 'unika?? kontaktu wzrokowego', '(brak)', 1),
(53, 'show enthusiasm', 'pokaza?? entuzjazm', '(brak)', 1),
(54, 'be prepared', 'by?? przygotowany', '(brak)', 1),
(55, 'face-to-face', 'twarz?? w twarz', '(brak)', 1),
(56, 'placement', 'umieszczenie, ulokowanie', '(brak)', 1),
(57, 'potential', 'potencja??', '(brak)', 1),
(58, 'on the summer camp', 'na letnim obozie', '(brak)', 1),
(59, 'according', 'stosownie, zale??nie', '(brak)', 1),
(60, 'community', 'spo??eczno????, wsp??lnota', '(brak)', 1),
(61, 'currency', 'waluta', '(brak)', 1),
(62, 'yes, definitely', 'tak, zdecydowanie', '(brak)', 1),
(63, 'of course!', 'oczywi??cie!', '(brak)', 1),
(64, 'that\'s right!', 'racja!', '(brak)', 1),
(65, 'you\'re correct', 'masz racj?? (ze s????wkiem correct)', '(brak)', 1),
(66, 'I see', 'Rozumiem (ze s????wkiem see)', '(brak)', 1),
(67, 'no problem', 'nie ma sprawy', '(brak)', 1),
(68, 'you\'re welcome', 'nie ma za co, prosz?? bardzo', '(brak)', 1),
(69, 'go ahead', '??mia??o (id?? dalej, naprz??d)', '(brak)', 1),
(70, 'please continue', 'prosz?? kontynuowa??', '(brak)', 1),
(71, 'reason', 'pow??d', '(brak)', 1),
(72, 'plans for the future', 'plany na przysz??o????', '(brak)', 1),
(73, 'work experience', 'do??wiadczenie w pracy', '(brak)', 1),
(74, 'expectations', 'oczekiwania', '(brak)', 1),
(75, 'could I ask the question?', 'm??g??bym zada?? pytanie?', '(brak)', 1),
(76, 'there are a couple of things I\'d like to ask about', 'jest par?? rzeczy o kt??re chcia??bym zapyta??', '(brak)', 1),
(77, 'can I ask you about that?', 'czy mog?? Ci?? zapyta?? o to?', '(brak)', 1),
(78, 'do you have any questions?', 'czy masz jakie?? pytania?', '(brak)', 1),
(79, 'any queries?', 'jakie?? zapytania?', '(brak)', 1),
(80, 'so for me the most important thing is to', 'wi??c dla mnie najwa??niejsz?? rzecz?? jest to aby', '(brak)', 1),
(81, 'I suppose', 'przypuszczam', '(brak)', 1),
(82, 'one thing I\'d like to say', 'jedn?? rzecz chcia??bym powiedzie??', '(brak)', 1),
(83, 'actually I have a query', 'w??a??ciwie mam zapytanie', '(brak)', 1),
(84, 'opportunity', 'okazja sposobno????', '(brak)', 1),
(85, 'involved', 'zaanga??owany', '(brak)', 1),
(86, 'introduce myself', 'przedstawi?? si??', '(brak)', 1),
(87, 'in these fields', 'w tych dziedzinach', '(brak)', 1),
(88, 'instead', 'zamiast', '(brak)', 1),
(89, 'more complex sentences', 'bardziej z??o??one zdania', '(brak)', 1),
(90, 'polskie', 'polandkk', 'zdanie', 1),
(92, 'polskie', 'jknjk', 'to jest przykladowe zdanie', 1),
(93, 'polskie', 'polands', 'zdanie', 1),
(94, 'v1', 'poland', 'to jest przykladowe zdanie', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unit_2`
--

CREATE TABLE `unit_2` (
  `id` int(10) NOT NULL,
  `angielskie` varchar(255) DEFAULT NULL,
  `polskie` varchar(255) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `unit_2`
--

INSERT INTO `unit_2` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(2, 'inaccurate', 'niedok?adny, nieprecyzyjny', '(brak)', 1),
(3, 'exact words', 'dok??adne s??owa', '(brak)', 0),
(4, 'biopic', 'film biograficzny', '(brak)', 0),
(5, 'docudrama', 'dramat dokumentalny', '(brak)', 0),
(6, 'characters battle with their minds', 'postacie walcz?? z my??lami, bij?? si?? z my??lami', '(brak)', 0),
(7, 'imaginary world', 'wyimaginowany ??wiat', '(brak)', 0),
(8, 'in the life of a real person', 'w ??yciu prawdziwej osoby', '(brak)', 0),
(9, 'old-fashioned costume', 'staro??wiecki, staromodny kostium', '(brak)', 0),
(10, 'survive', 'prze??y??, przetrwa??', '(brak)', 0),
(11, 'stockbroker', 'makler gie??dowy', '(brak)', 0),
(12, 'be on TV', 'by?? w TV', '(brak)', 0),
(13, 'be in a newspaper', 'by?? w gazecie', '(brak)', 0),
(14, 'do something embarrassing in public', 'robi?? co?? ??enuj??cego publicznie', '(brak)', 0),
(15, 'write a poem', 'napisa?? wiersz', '(brak)', 0),
(16, 'go to a country on a different continent', 'uda?? si?? do kraju na innym kontynencie', '(brak)', 0),
(17, 'collect something as a hobby', 'zbiera?? co?? jako hobby', '(brak)', 0),
(18, 'see someone commit a crime', 'zobaczy?? kogo?? pope??niaj??cego przest??pstwo', '(brak)', 0),
(19, 'at 12', 'o 12', '(brak)', 0),
(20, 'at night', 'w nocy', '(brak)', 0),
(21, 'at the weekend', 'w weekend', '(brak)', 0),
(22, 'in July', 'w lipcu', '(brak)', 0),
(23, 'in 2010', 'w 2010 roku', '(brak)', 0),
(24, 'on the 4th of February', 'czwartego lutego', '(brak)', 0),
(25, 'in the morning', 'rano', '(brak)', 0),
(26, 'on Thursday morning', 'w czwartek rano', '(brak)', 0),
(27, 'at lunchtime', 'w porze lunchu', '(brak)', 0),
(28, 'on Wednesday', 'w ??rod??', '(brak)', 0),
(29, 'in the autumn', 'w jesieni, na jesie??', '(brak)', 0),
(30, 'on New Year\'s Day', 'w Nowy Rok', '(brak)', 0),
(31, 'in the twenty-first century', 'w dwudziestym pierwszym wieku', '(brak)', 0),
(32, 'see on TV', 'widzie?? w telewizji', '(brak)', 0),
(33, 'go for a walk', 'i???? na spacer', '(brak)', 0),
(34, 'travel by boat', 'podr????owa?? ????dk??', '(brak)', 0),
(35, 'go for a drive', 'uda?? si?? na przeja??d??k??', '(brak)', 0),
(36, 'travel by plane', 'podr????owa?? samolotem', '(brak)', 0),
(37, 'go for a run', 'i???? pobiega??, i???? na przebie??k??', '(brak)', 0),
(38, 'travel by coach', 'podr????owa?? autokarem', '(brak)', 0),
(39, 'speak on the phone', 'rozmawia?? przez telefon', '(brak)', 0),
(40, 'travel by train', 'podr????owa?? poci??giem', '(brak)', 0),
(41, 'hear on the radio', 's??ysze?? w radiu', '(brak)', 0),
(42, 'on my own', 'na w??asn?? r??k??', '(brak)', 0),
(43, 'by mistake', 'przez pomy??k??', '(brak)', 0),
(44, 'on business', 'w interesach, s??u??bowo', '(brak)', 0),
(45, 'by chance', 'przypadkowo, przez przypadek', '(brak)', 0),
(46, 'by hand', 'r??cznie', '(brak)', 0),
(47, 'in the end', 'na ko??cu', '(brak)', 0),
(48, 'on purpose', 'specjalnie, celowo', '(brak)', 0),
(49, 'arrive on time', 'przyby?? na czas', '(brak)', 0),
(50, 'in a moment', 'za chwil??', '(brak)', 0),
(51, 'in a hurry', 'w po??piechu', '(brak)', 0),
(52, 'keep up-to-date', 'utrzyma?? si?? na bie????co', '(brak)', 0),
(53, 'conspiracy theory', 'teoria spiskowa', '(brak)', 0),
(54, 'involved', 'zaanga??owany, wpl??tany', '(brak)', 0),
(55, 'suspects', 'podejrzani', '(brak)', 0),
(56, 'shadow', 'cie??', '(brak)', 0),
(57, 'love story', 'historia mi??osna', '(brak)', 0),
(58, 'alcohol', 'alkohol', '(brak)', 0),
(59, 'photograph / photographer', 'fotografia / fotograf', '(brak)', 0),
(60, 'a man with a gun', 'cz??owiek z pistoletem', '(brak)', 0),
(61, 'flag', 'flaga', '(brak)', 0),
(62, 'Federal Bureau of Investigation', 'FBI', '(brak)', 0),
(63, 'report', 'raport', '(brak)', 0),
(64, 'surprisingly', 'zaskakuj??co', '(brak)', 0),
(65, 'visible', 'widoczny, widzialny', '(brak)', 0),
(66, 'apparently', 'pozornie', '(brak)', 0),
(67, 'wave', 'falowa??, fala', '(brak)', 0),
(68, 'however', 'jednak, jakkolwiek, wszak??e...', '(brak)', 0),
(69, 'logically', 'logicznie', '(brak)', 0),
(70, 'lighting conditions', 'warunki o??wietleniowe', '(brak)', 0),
(71, 'doubts', 'w??tpliwo??ci', '(brak)', 0),
(72, 'explain', 'wyja??nia??', '(brak)', 0),
(73, 'on the thirty-first of August', '31 sierpnia', '(brak)', 0),
(74, 'accident', 'wypadek', '(brak)', 0),
(75, 'relationship', 'zwi??zek', '(brak)', 0),
(76, 'drunken condition', 'stan pod wp??ywem alkoholu', '(brak)', 0),
(77, 'be pregnant', 'by?? w ci????y', '(brak)', 0),
(78, 'plan to marry', 'planowa?? wyj???? za m????', '(brak)', 0),
(79, 'assassination', 'zamach', '(brak)', 0),
(80, 'leader', 'przyw??dca, lider', '(brak)', 0),
(81, 'crowd / crowds / crowded', 't??um / t??umy / zat??oczony', '(brak)', 0),
(82, 'was arrested', 'zosta?? aresztowany', '(brak)', 0),
(83, 'immediately', 'natychmiast', '(brak)', 0),
(84, 'almost', 'prawie', '(brak)', 0),
(85, 'conclude', 'wyci??gn???? wniosek', '(brak)', 0),
(86, 'he acted alone', 'on dzia??a?? sam', '(brak)', 0),
(87, 'investigation', '??ledztwo', '(brak)', 0),
(88, 'criticise', 'krytykowa??', '(brak)', 0),
(89, 'agree', 'zgadza?? si??', '(brak)', 0),
(90, 'summary', 'podsumowanie, streszczenie', '(brak)', 0),
(91, 'claim', 'twierdzi??, deklarowa??', '(brak)', 0),
(92, 'he was drunk', 'on by?? pijany', '(brak)', 0),
(93, 'prison', 'wi??zienie', '(brak)', 0),
(94, 'calm', 'spok??j, spokojny', '(brak)', 0),
(95, 'they were talking to each other', 'rozmawiali ze sob??', '(brak)', 0),
(96, 'in the middle of the...', 'na ??rodku..., w ??rodku... (czego?? tam)', '(brak)', 0),
(97, 'better view', 'lepszy widok', '(brak)', 0),
(98, 'miss the chance of seeing somebady', 'przegapi?? szans?? zobaczenia kogo??', '(brak)', 0),
(99, 'for the first time', 'po raz pierwszy', '(brak)', 0),
(100, 'it was difficult to hear', 'by??o trudno us??ysze??', '(brak)', 0),
(101, 'die in crash', 'zgin???? w wypadku/katastrofie', '(brak)', 0),
(102, 'attack', 'atak, atakowa??', '(brak)', 0),
(103, 'violent', 'gwa??towny, pe??en przemocy', '(brak)', 0),
(104, 'violence', 'przemoc', '(brak)', 0),
(105, 'workers threaten strikes', 'pracownicy gro???? strajkami', '(brak)', 0),
(106, 'massive earthquake hits Los Angeles', 'masywne trz??sienie ziemi uderza w Los Angeles', '(brak)', 0),
(107, 'floods destroy crops', 'powodzie niszcz?? uprawy', '(brak)', 0),
(108, 'hostages released', 'zak??adnicy zwolnieni (wypuszczeni)', '(brak)', 0),
(109, 'rebels', 'rebelianci', '(brak)', 0),
(110, 'collapse of banks', 'upadek (krach) bank??w', '(brak)', 0),
(111, 'damage and destroy', 'uszkodzi?? i zniszczy??', '(brak)', 0),
(112, 'hostages were allowed to go free', 'zak??adnicy zostali puszczeni wolno', '(brak)', 0),
(113, 'serious crime', 'powa??ne przest??pstwo', '(brak)', 0),
(114, 'disaster', 'karastrofa', '(brak)', 0),
(115, 'economic crisis affects business', 'kryzys ekonomiczny wp??ywa na biznes', '(brak)', 0),
(116, 'a lot of farmland is under water', 'du??o p??l uprawnych jest pod wod?? (zalane)', '(brak)', 0),
(117, 'people refuse to go to work', 'ludzie odmawiaj?? p??j??cia do pracy', '(brak)', 0),
(118, 'begin to fight', 'zaczyna?? walczy??', '(brak)', 0),
(119, 'who were you with?', 'z kim by??e???', '(brak)', 0),
(120, 'who is the story about?', 'o kim jest ta historia?', '(brak)', 0),
(121, 'what happened?', 'co si?? sta??o?', '(brak)', 0),
(122, 'why did it happen?', 'dlaczego to si?? sta??o?', '(brak)', 0),
(123, 'where did it happen?', 'gdzie to si?? sta??o?', '(brak)', 0),
(124, 'when did it happen?', 'kiedy to si?? sta??o?', '(brak)', 0),
(125, 'falsely obtain', 'fa??szywie uzyska??', '(brak)', 0),
(126, 'former', 'by??y (np. prezydent)', '(brak)', 0),
(127, 'discover', 'odkry??', '(brak)', 0),
(128, 'currently', 'obecnie', '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unit_3`
--

CREATE TABLE `unit_3` (
  `id` int(10) NOT NULL,
  `angielskie` varchar(255) DEFAULT NULL,
  `polskie` varchar(255) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `unit_3`
--

INSERT INTO `unit_3` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(1, 'nominated for an award', 'nominowany do nagrody', '(brak)', 0),
(2, 'you\'re going where?', 'wybierasz si?? gdzie???', '(brak)', 0),
(3, 'mention', 'wspomnie??', '(brak)', 0),
(4, 'cope with', 'radzi?? sobie z', '(brak)', 0),
(5, 'unless', 'chyba ??e', '(brak)', 0),
(6, 'nosy', 'w??cibski', '(brak)', 0),
(7, 'noisy', 'ha??a??liwy, g??o??ny', '(brak)', 0),
(8, 'flexible', 'elastyczny', '(brak)', 0),
(9, 'freedom', 'wolno????', '(brak)', 0),
(10, 'beat', 'pokona??, bi??, b??bni??', '(brak)', 0),
(11, 'follow your lead', 'pod????a?? twoim ??ladem', '(brak)', 0),
(12, 'object', 'sprzeciwia?? si??, obiekt', '(brak)', 0),
(13, 'arrangements', 'plany, ustalenia', '(brak)', 0),
(14, 'tend to', 'mie?? sk??onno???? do', '(brak)', 0),
(15, 'what are you two doing?', 'co wy dwoje robicie?', '(brak)', 0),
(16, 'change mind about', 'zmieni?? zdanie na temat', '(brak)', 0),
(17, 'to be nosy', 'by?? w??cibskim', '(brak)', 0),
(18, 'panic', 'panika', '(brak)', 0),
(19, 'last minute arrangements', 'plany, ustalenia w ostatniej chwili', '(brak)', 0),
(20, 'if you can\'t beat them join them', 'je??li nie mo??esz ich pokona?? do nich do????czy??', '(brak)', 0),
(21, 'related to', 'powi??zany z', '(brak)', 0),
(22, 'gossip', 'plotka', '(brak)', 0),
(23, 'compliment', 'komplement', '(brak)', 0),
(24, 'moan', 'narzeka??, j??cze??', '(brak)', 0),
(25, 'boast', 'chwali?? si??', '(brak)', 0),
(26, 'argue', 'k????ci?? si??', '(brak)', 0),
(27, 'warn', 'ostrzega??', '(brak)', 0),
(28, 'chat', 'pogaw??dzi??', '(brak)', 0),
(29, 'apologise', 'przeprasza??', '(brak)', 0),
(30, 'to water the plants', 'podlewa?? ro??liny', '(brak)', 0),
(31, 'talk to somebody', 'm??wi?? do kogo??', '(brak)', 0),
(32, 'maintain', 'utrzymanie', '(brak)', 0),
(33, 'ink', 'atrament, tusz', '(brak)', 0),
(34, 'fountain pen', 'wieczne pi??ro', '(brak)', 0),
(35, 'store', 'przechowa??', '(brak)', 0),
(36, 'handwriting', 'pismo r??czne', '(brak)', 0),
(37, 'thumb', 'kciuk', '(brak)', 0),
(38, 'thumbprint', 'odcisk kciuka', '(brak)', 0),
(39, 'digital', 'cyfrowy', '(brak)', 0),
(40, 'digital signature', 'podpis cyfrowy', '(brak)', 0),
(41, 'on demand', 'na ????danie', '(brak)', 0),
(42, 'in the long term', 'w d??u??szej perspektywie', '(brak)', 0),
(43, 'claim', 'stwierdza??', '(brak)', 0),
(44, 'artificial', 'sztuczny', '(brak)', 0),
(45, 'artificial intelligence', 'sztuczna inteligencja', '(brak)', 0),
(46, 'development', 'rozw??j', '(brak)', 0),
(47, 'intermediate', 'po??redni', '(brak)', 0),
(48, 'an intermediary', 'po??rednik', '(brak)', 0),
(49, 'will stop barriers', 'bariery przestan?? istnie??', '(brak)', 0),
(50, 'retina', 'siatk??wka oka', '(brak)', 0),
(51, 'retina scan', 'skan siatk??wki oka', '(brak)', 0),
(52, 'the most straightforward way to do something', 'najprostszy spos??b aby co?? zrobi??', '(brak)', 0),
(53, 'method of delivery', 'spos??b dostawy', '(brak)', 0),
(54, 'in the near future', 'w najbli??szej przysz??o??ci', '(brak)', 0),
(55, 'in the next ten years', 'w ci??gu najbli??szych dziesi??ciu lat', '(brak)', 0),
(56, 'in a month or two', 'w ci??gu miesi??ca lub dw??ch', '(brak)', 0),
(57, 'in the short term', 'w kr??tkim terminie', '(brak)', 0),
(58, 'in ten years\' time', 'w dziesi???? lat', '(brak)', 0),
(59, 'shortly', 'nied??ugo', '(brak)', 0),
(60, 'predictions', 'przewidywania, przepowiednia, prognoza', '(brak)', 0),
(61, 'certain', 'pewny', '(brak)', 0),
(62, 'turning point', 'punkt zwrotny', '(brak)', 0),
(63, 'possible', 'mo??liwy', '(brak)', 0),
(64, 'work habits', 'uniform roboczy', '(brak)', 0),
(65, 'small talk', 'pogaw??dka', '(brak)', 0),
(66, 'against', 'przeciwko', '(brak)', 0),
(67, 'work against the clock', '\"walczy?? z czasem\" (idiom)', '(brak)', 0),
(68, 'on our mind', 'w naszych my??lach', '(brak)', 0),
(69, 'it\'s not my cup of tea', '\"to nie w moim stylu\" (idiom)', '(brak)', 0),
(70, 'close to my heart', 'bli??szy memu sercu', '(brak)', 0),
(71, 'be in hot water', '\"mie?? k??opoty\" (idiom)', '(brak)', 0),
(72, 'put my foot in it', '\"strzeli?? gaf??\" (idiom)', '(brak)', 0),
(73, 'running out of time', '\"ko??czy si?? czas\" (idiom)', '(brak)', 0),
(74, 'keep an eye on', 'mie?? na kogo?? oko', '(brak)', 0),
(75, 'give a hand', 'poda?? pomocn?? d??o??, pom??c', '(brak)', 0),
(76, 'a piece of cake', '\"bu??ka z mas??em\" (idiom)', '(brak)', 0),
(77, 'dark horse', 'czarny ko??', '(brak)', 0),
(78, 'the rat race', 'wy??cig szczur??w', '(brak)', 0),
(79, 'award', 'nagroda, wyr????nienie', '(brak)', 0),
(80, 'celebrate', '??wi??towa??, obchodzi??', '(brak)', 0),
(81, 'misunderstanding', 'nieporozumienie', '(brak)', 0),
(82, 'confirm', 'potwierdzi??', '(brak)', 0),
(83, 'host', 'gospodarz', '(brak)', 0),
(84, 'generous', 'hojny', '(brak)', 0),
(85, 'recognise', 'rozpoznawa??', '(brak)', 0),
(86, 'generous', 'hojny, szczodry', '(brak)', 0),
(87, 'at the table', 'przy stole', '(brak)', 0),
(88, 'the thousand dollars', 'tysi??c dolar??w', '(brak)', 0),
(89, 'do you mean', 'masz na my??li', '(brak)', 0),
(90, 'again', 'ponownie, znowu', '(brak)', 0),
(91, 'I didn\'t catch any of that.', 'Nie za??apa??em nic z tego.', '(brak)', 0),
(92, 'You\'ve lost me.', '\"Pogubi??e?? si?? w tym co m??wi??\" {idiom u??ywany podczas dialogu gdy kto?? przesta?? nad??rza?? za tym co m??wisz}', 'Other words: You can\'t follow what i\'m saying?', 0),
(93, 'I\'ve lost you.', '\"Pogubi??em si?? w tym co m??wisz\" {idiom u??ywany podczas dialogu gdy przesta??e?? nad??rza?? za tym co kto?? m??wi}', 'Other words:I can\'t follow what you\'re saying.', 0),
(94, 'Could you repeat that?', 'M??g??by?? to powt??rzy???', '(brak)', 0),
(95, 'Can you say that again?', 'Czy mo??esz powiedzie?? to poownie?', '(brak)', 0),
(96, 'What exactly do you mean?', 'Co dok??adnie masz na my??li?', '(brak)', 0),
(97, 'I don\'t get what you\'re saying', 'Nie ??apie co m??wisz.', '(brak)', 0),
(98, 'I mean...', 'To znaczy...', '(brak)', 0),
(99, 'What does it mean?', 'Co to znaczy/oznacza?', '(brak)', 0),
(100, 'Do you mean to tell me...?', 'Chcesz mi przez to powiedzie??...?', '(brak)', 0),
(101, 'In other words...', 'Innymi s??owy...', '(brak)', 0),
(102, 'other', 'inny', '(brak)', 0),
(103, 'break the ice', '\"prze??ama?? lody\" (idiom)', 'Everyone was nervous, so Jackie told a few jokes to break the ice.', 0),
(104, 'learn something by heart', '\"uczy?? si?? na pami????\" (idiom)', 'Tomorrow there\'s a test on this poem. I have to learn it by heart.', 0),
(105, 'go window shopping', '\"i???? na spacer z ogl??daniem wystaw sklepowych {nie mie?? w zamiarze niczego kupi??} \" (idiom)', 'I\'ve got no money at the moment but we can go window shopping if you want.', 0),
(106, 'travel light', '\"podr????owa?? z niewielkim baga??em\" (idiom)', 'He always travels light. He only takes one suitcase even for long trips.', 0),
(107, 'let your hair down', '\"p??j???? w tango\" (idiom)', 'You\'ve been working non-stop. Why don\'t you go out and let your hair down?', 0),
(108, 'be in two minds', '\"waha?? si??\" (idiom)', 'I\'m in two minds. I don\'t know if I want the black one or the red one.', 0),
(109, 'arrange', 'zorganizowa??', '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unit_4`
--

CREATE TABLE `unit_4` (
  `id` int(10) NOT NULL,
  `angielskie` varchar(255) DEFAULT NULL,
  `polskie` varchar(255) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `unit_4`
--

INSERT INTO `unit_4` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(1, 'entrepreneur', 'przedsi??biorca', '(brak)', 0),
(2, 'effort', 'wysi??ek', '(brak)', 0),
(3, 'qualities', 'cechy', '(brak)', 0),
(4, 'quality', 'jako????', '(brak)', 0),
(5, 'manage', 'pokierowa?? czym??, kim??', '(brak)', 0),
(6, 'express', 'wyra??i??, okaza??', '(brak)', 0),
(7, 'remember', 'przypomina?? sobie', '(brak)', 0),
(8, 'remind', 'przypomina?? komu??', '(brak)', 0),
(9, 'forget', 'zapomnie??', '(brak)', 0),
(10, 'leave', 'zostawi??', '(brak)', 0),
(11, 'hear', 's??ysze??, us??ysze??', '(brak)', 0),
(12, 'listen', 's??ucha??, pos??ucha??', '(brak)', 0),
(13, 'I wasn\'t listening.', 'Nie s??ucha??em.', '(brak)', 0),
(14, 'I wasn\'t hearing.', 'Nie us??ysza??em.', '(brak)', 0),
(15, 'fun', 'zabawa, uciecha', '(brak)', 0),
(16, 'funny', 'zabawny, ??mieszny', '(brak)', 0),
(17, 'borrow from', 'po??yczy?? od', '(brak)', 0),
(18, 'lend to', 'po??ycza?? komu??', '(brak)', 0),
(19, 'miss', 'przegapi??, t??ski??', '(brak)', 0),
(20, 'lose', 'straci??, przegra??', '(brak)', 0),
(21, 'critic', 'krytyk', '(brak)', 0),
(22, 'winemaker', 'winiarz (osoba robi??ca wino)', '(brak)', 0),
(23, 'paradise', 'raj', '(brak)', 0),
(24, 'willing', 'sk??onny, ch??tny', '(brak)', 0),
(25, 'snorkel', 'nurkowanie z rurk??', '(brak)', 0),
(26, 'dive', 'nurkowa?? g????binowo', '(brak)', 0),
(27, 'duty', 'obowi??zek, c??o', '(brak)', 0),
(28, 'diary', 'pami??tnik, dziennik', '(brak)', 0),
(29, 'covering letter', 'list motywacyjny', '(brak)', 0),
(30, 'apprentice', 'praktykant, ucze??', '(brak)', 0),
(31, 'compete', 'rywalizowa??, konkurowa??', '(brak)', 0),
(32, 'compete for a job', 'konkurowa?? o prac??', '(brak)', 0),
(33, 'hell', 'piek??o', '(brak)', 0),
(34, 'bloody hell', 'jasna cholera (mo??na u??ywa?? zamiennie z k... ma?? ;)', '(brak)', 0),
(35, 'get fired', 'zosta?? zwolnionym', '(brak)', 0),
(36, 'empire', 'imperium', '(brak)', 0),
(37, 'kingdom', 'kr??lestwo', '(brak)', 0),
(38, 'review', 'recenzja', '(brak)', 0),
(39, 'survey', 'badanie, przegl??d', '(brak)', 0),
(40, 'contest = competition', 'konkurs', '(brak)', 0),
(41, 'be not easy to please', 'by?? trudnym do zadowolenia', '(brak)', 0),
(42, 'either', 'albo', '(brak)', 0),
(43, 'from my point of view', 'z mojego punktu widzenia', '(brak)', 0),
(44, 'Have you got what it takes?', 'Czy masz to czego potrzeba?', 'Have you got what it takes to be a millionaire?', 0),
(45, 'moderately', 'umiarkowanie', '(brak)', 0),
(46, 'spender', '\"rozrzutnik pieni??dzy\"', '(brak)', 0),
(47, 'effort', 'wysi??ek', '(brak)', 0),
(48, 'competitive', 'konkurencyjny', '(brak)', 0),
(49, 'indecisive', 'niezdecydowany', '(brak)', 0),
(50, 'decided', 'zdecydowany', '(brak)', 0),
(51, 'think outside the box', 'my??le?? poza schematem', '(brak)', 0),
(52, 'risk', 'ryzyko', '(brak)', 0),
(53, 'motivate', 'motywowa??', '(brak)', 0),
(54, 'work with a lot of effort', 'pracowa?? w du??ym wysi??ku', '(brak)', 0),
(55, 'have problems making decision', 'mie?? problemy w podejmowaniu decyzji', '(brak)', 0),
(56, 'think differently or in a new way', 'my??le?? inaczej lub w nowy spos??b', '(brak)', 0),
(57, 'want to be more successful than others', 'chcie?? by?? bardziej skutecznym ni?? inni', '(brak)', 0),
(58, 'want to achieve something', 'chcie?? co?? osi??gn????', '(brak)', 0),
(59, 'a risk taker', 'osoba podejmuj??ca ryzyko', '(brak)', 0),
(60, 'to be rejected', 'by?? odrzuconym', '(brak)', 0),
(61, 'reject', 'odrzuca??', '(brak)', 0),
(62, 'miserable', 'beznadziejny', '(brak)', 0),
(63, 'in stock', 'w magazynie, na stanie', '(brak)', 0),
(64, 'particular', 'konkretny, szczeg??lny', '(brak)', 0),
(65, 'put on a lot of weight', 'przybra?? du??o na wadze', '(brak)', 0),
(66, 'wonderful', 'wspania??y, cudowny', '(brak)', 0),
(67, 'brilliant', 'znakomity', '(brak)', 0),
(68, 'awful', 'okropny', '(brak)', 0),
(69, 'enormous', 'ogromny', '(brak)', 0),
(70, 'exhaust', 'wyczerpa??, wydechowy', '(brak)', 0),
(71, 'boiling', 'wrzenie', '(brak)', 0),
(72, 'freezing', 'lodowaty', '(brak)', 0),
(73, 'delicious', 'pyszne', '(brak)', 0),
(74, 'furious', 'w??ciek??y', '(brak)', 0),
(75, 'impossible', 'niemo??liwe', '(brak)', 0),
(76, 'crew', 'za??oga, ekipa', '(brak)', 0),
(77, 'blast off', 'wystrzeli??, odpali??', 'Blast off into space.', 0),
(78, 'a jar', 's??oik', '(brak)', 0),
(79, 'regarding', 'w sprawie', '(brak)', 0),
(80, 'I am writing to you regarding your advertisement for... with i saw on...', 'Pisz?? do Ciebie w sprawie Twojego og??oszenia dla... kt??re widzia??em na...', '(brak)', 0),
(81, 'I would like to submit an application for the post.', 'Chcia??bym z??o??y?? wniosek do urz??du.', '(brak)', 0),
(82, 'submit', 'zg??asza??', '(brak)', 0),
(83, 'Please find my CV attached.', 'Prosz?? znale???? moje CV w za????czeniu.', '(brak)', 0),
(84, 'I believe that I meet all the requirements you outline in your advertisement.', 'Wie????, ??e spe??niam wszystkie wymagania kt??re zaznaczyli??cie w og??oszeniu.', '(brak)', 0),
(85, 'advertisement', 'reklama, og??oszenie', '(brak)', 0),
(86, 'requirements', 'wymagania', '(brak)', 0),
(87, 'outline', 'zarys, kontur, szkic', '(brak)', 0),
(88, 'I had hands-on experience of...', 'Mam praktyczne do??wiadczenie w...', '(brak)', 0),
(89, 'experience', 'do??wiadczenie', '(brak)', 0),
(90, 'prove', 'udowodni??', '(brak)', 0),
(91, 'proven ability in...', 'Sprawdzona zdolno???? w...', '(brak)', 0),
(92, 'ability', 'zdolno????', '(brak)', 0),
(93, 'require', 'wymaga??', '(brak)', 0),
(94, 'If you require any further information, or would like to arrange an interview, please call me on...', 'Je??li potrzebujesz dodatkowych informacji, lub chcesz um??wi?? si?? na spotkanie, prosz?? zadzwoni?? do mnie na ...', '(brak)', 0),
(95, 'I look forward to hearing from you at your earliest convenience.', 'Czekam na kontakt z Pa??stwem jak najszybciej.', '(brak)', 0),
(96, 'how earliest convenience', 'jak najszybciej', '(brak)', 0),
(97, 'caretaker', 'dozorca, str????', '(brak)', 0),
(98, 'protector', 'opiekun', '(brak)', 0),
(99, 'Yours sincerely', 'Z powa??aniem', '(brak)', 0),
(100, 'interview', 'rozmowa kwalifikacyjna, wywiad', '(brak)', 0),
(101, 'appointment, meeting', 'spotkanie', '(brak)', 0),
(102, 'fired', 'zwolniony', '(brak)', 0),
(103, 'Set up a catering company', 'Za??o??y?? firm?? cateringow??', '(brak)', 0),
(104, 'mediterranean', '??r??dziemnomorski', '(brak)', 0),
(105, 'reaching agreement', 'osi??gni??cie porozumienia', '(brak)', 0),
(106, 'What about...?', 'Co powiesz na...?', '(brak)', 0),
(107, 'I suggest we focus on...', 'Proponuj?? skupi?? si?? na...', '(brak)', 0),
(108, 'currently', 'aktualnie, obecnie, bie????co', '(brak)', 0),
(109, 'actually', 'faktycznie, rzeczywi??cie', '(brak)', 0),
(110, 'career', 'kariera', '(brak)', 0),
(111, 'course', 'kurs, przebieg,', '(brak)', 0),
(112, 'direction', 'kierunek', '(brak)', 0),
(113, 'argument', 'sp??r, argument', '(brak)', 0),
(114, 'discussion', 'dyskusja', '(brak)', 0),
(115, 'reliable', 'niezawodny', '(brak)', 0),
(116, 'sensible', 'rozs??dny, sensowny', '(brak)', 0),
(117, 'easy-going', '\"luzak\"', '(brak)', 0),
(118, 'aggressive', 'agresywny, napastliwy', '(brak)', 0),
(119, 'clever', 'sprytny', '(brak)', 0),
(120, 'bright', 'jasny, bystry', '(brak)', 0),
(121, 'honest', 'uczciwy, szczery', '(brak)', 0),
(122, 'lazy', 'leniwy', '(brak)', 0),
(123, 'punctual', 'punktualny', '(brak)', 0),
(124, 'moody', 'humorzasty, nastrojowy', '(brak)', 0),
(125, 'independent', 'niezale??ny', '(brak)', 0),
(126, 'I\'m impressed', 'Jestem pod wra??eniem', '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unit_5`
--

CREATE TABLE `unit_5` (
  `id` int(10) NOT NULL,
  `angielskie` varchar(255) DEFAULT NULL,
  `polskie` varchar(255) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `unit_5`
--

INSERT INTO `unit_5` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(1, 'machine', 'maszyna', '(brak)', 1),
(2, 'electricity', 'elektryczno????', '(brak)', 1),
(3, 'nuclear power', 'energia nulkearna', '(brak)', 1),
(4, 'antibiotics', 'antybiotyki', '(brak)', 1),
(5, 'vaccinations', 'szczepienia', '(brak)', 1),
(6, 'computer networks', 'sieci komputerowe', '(brak)', 1),
(7, 'motorbikes', 'motocykle', '(brak)', 1),
(8, 'genetic engineering', 'in??ynieria genetyczna', '(brak)', 1),
(9, 'washing machine', 'pralka', '(brak)', 1),
(10, 'vacuum cleaner', 'odkurzacz', '(brak)', 1),
(11, 'space travel', 'podr???? kosmiczna', '(brak)', 1),
(12, 'commercial aeroplanes', 'samoloty komercyjne', '(brak)', 1),
(13, 'solar power', 'energia s??oneczna', '(brak)', 1),
(14, 'communications satellites', 'satelity telekomunikacyjne', '(brak)', 1),
(15, 'plug it in', 'w????cza?? to do kontaktu (do pr??du)', '(brak)', 1),
(16, 'press the button', 'nacisn???? przycisk', '(brak)', 1),
(17, 'have an injection', 'mie?? zastrzyk', '(brak)', 1),
(18, 'have an operation', 'mie?? operacj??', '(brak)', 1),
(19, 'run out of petrol', 'zabrakn???? benzyny', '(brak)', 1),
(20, 'break down', 'zepsu?? si??', '(brak)', 1),
(21, 'get a connection', 'uzyska?? po????czenie', '(brak)', 1),
(22, 'restart / reboot the computer', 'zresrartowa?? komputer', '(brak)', 1),
(23, 'do an experiment', 'robi?? eksperyment', '(brak)', 1),
(24, 'switch it on / switch it off', 'w????czy?? to / wy????czy?? to', 'switch the light on - w????cz ??wiat??oswitch the light off - wy????cz ??wiat??o', 1),
(25, 'influential', 'wp??ywowy', '(brak)', 1),
(26, 'advance, progress', 'post??p', '(brak)', 1),
(27, 'at the beginning of the twentieth century', 'na pocz??tku 20 wieku', '(brak)', 1),
(28, 'affordable', 'niedrogi, przyst??pny cenowo', '(brak)', 1),
(29, 'shrink', 'kurczy?? si??', '(brak)', 1),
(30, 'for the first time in history,', 'po raz pierwszy w historii', '(brak)', 1),
(31, 'somewhere', 'gdzie??', '(brak)', 1),
(32, 'anywhere', 'gdziekolwiek', '(brak)', 1),
(33, 'introduce', 'wprowadza??', '(brak)', 1),
(34, 'fabric', 'materia??, tkanina', '(brak)', 1),
(35, 'nylon', 'nylon, nylonowy', '(brak)', 1),
(36, 'allow', 'pozwoli?? komu?? na co??', '(brak)', 1),
(37, 'travel further away from home', 'podr????owa?? dalej od domu', '(brak)', 1),
(38, 'amplifier', 'wzmacniacz', '(brak)', 1),
(39, 'rock music', 'muzyka rockowa', '(brak)', 1),
(40, 'electric guitar', 'gitara elektryczna', '(brak)', 1),
(41, 'a lot / much / far more', 'gdy chcemy powiedzie??, ??e co?? jest du??o bardziej lub znacznie bardziej \"jakie??\" (np. pi??kniejsze, bardziej s??oneczne)', 'I\'m a lot fatter than Sue.Kate is much more beautiful than Mary.The journey took far more longer than we expected.', 1),
(42, 'a little / a little bit / slighty', 'troch??, troszeczk?? - gdy chcemy powiedzie??, ??e co?? jest tylko troch?? bardziej \"jakie??\" (np. pi??kniejsze, bardziej s??oneczne)', 'She is a little older than he.My car is a little bit more comfortable than yours.', 1),
(43, 'by far', 'jak dot??d', 'by far + st. najwy??szy przymiotnikaIt\'s by far the best pizza I have ever eaten.', 1),
(44, 'one of', 'jeden z', 'one of + st. najwy??szy przymiotnika + rzeczownikIt\'s one of the tallest mountains I have ever climbed.', 1),
(45, 'advantage', 'zaleta', '(brak)', 1),
(46, 'disadvantage', 'wada', '(brak)', 1),
(47, 'however,', 'jednak', '(brak)', 1),
(48, 'one of the main advantages', 'jedn?? z g????wnych zalet', '(brak)', 1),
(49, 'in addition to this,', 'w dodatku do tego, opr??cz tego', '(brak)', 1),
(50, 'on the other hand,', 'z drugiej strony, z innej strony', '(brak)', 1),
(51, 'another disadvantage', 'inn?? wad??, kolejn?? wad??', 'another disadvantage of modern technology is...', 1),
(52, 'in my opinion', 'moim zdaniem', '(brak)', 1),
(53, 'the problem is that', 'problemem jest to, ??e', '(brak)', 1),
(54, 'benefit', 'korzy????, po??ytek', '(brak)', 1),
(55, 'harmful', 'szkodliwy', '(brak)', 1),
(56, 'conclusion', 'wniosek', '(brak)', 1),
(57, 'introduction', 'wst??p', '(brak)', 1),
(58, 'the most important advantage is', 'najwa??niejsz?? zalet?? jest', '(brak)', 1),
(59, 'the main disadvantage is', 'g????wn?? wad?? jest', '(brak)', 1),
(60, 'although,', 'chocia??, aczkolwiek', '(brak)', 1),
(61, 'as well as that,', 'opr??cz tego', '(brak)', 1),
(62, 'and another thing,', 'i kolejn?? rzecz??...', '(brak)', 1),
(63, 'In general,', 'og??lnie rzecz bior??c (generalnie)', '(brak)', 1),
(64, 'as far as I\'m concerned', 'o ile mi wiadomo, je??li o mnie chodzi to jestem przekonany', '(brak)', 1),
(65, 'tidal wave', 'p??ywowa fala', '(brak)', 1),
(66, 'nightmare', 'koszmar', '(brak)', 1),
(67, 'wrestler', 'zapa??nik', '(brak)', 1),
(68, 'wasp', 'osa', '(brak)', 1),
(69, 'prove', 'udowodni??', '(brak)', 1),
(70, 'exactly the same as', 'dok??adnie tak samo jak', '(brak)', 1),
(71, 'very similar to', 'bardzo podobny do', '(brak)', 1),
(72, 'he\'s not as tall as...', 'on nie jest tak wysoki jak...', '(brak)', 1),
(73, 'question', 'pytanie; kwestionowa??', '(brak)', 1),
(74, 'wonder', 'cud; zastanawia?? si??', '(brak)', 1),
(75, 'discuss', 'dyskutowa??', '(brak)', 1),
(76, 'debate', 'debata; debatowa??', '(brak)', 1),
(77, 'responde, reply', 'odpowiada?? (np. na list)', '(brak)', 1),
(78, 'answer, reply, response', 'odpowied??', '(brak)', 1),
(79, 'research', 'badania; prowadzi?? prace badawcze', '(brak)', 1),
(80, 'investigate', 'prowadzi?? dochodzenie', '(brak)', 1),
(81, 'inquire, ask', 'zapyta??', '(brak)', 1),
(82, 'look into', 'przyjrze?? si?? czemu??', '(brak)', 1),
(83, 'thesis', 'praca dyplomowa', '(brak)', 1),
(84, 'death penalty', 'kara ??mierci', '(brak)', 1),
(85, 'round windows', 'okr??g??e okna', '(brak)', 1),
(86, 'inquiry', 'zapytanie', '(brak)', 1),
(87, 'we ran out of coffee', 'sko??czy??a nam si?? kawa', '(brak)', 1),
(88, 'jellyfish', 'meduza', '(brak)', 1),
(89, 'doughnut', 'p??czek', '(brak)', 1),
(90, 'break up', 'rozpa???? si??', '(brak)', 1),
(91, 'over a volcano', 'nad wulkanem', '(brak)', 1),
(92, 'number of hairs on a head', 'liczba w??os??w na g??owie', '(brak)', 1),
(93, 'mess / messy', 'ba??agan / ba??aganiarski', '(brak)', 1),
(94, 'hair / hairy', 'w??osy / ow??osiony', '(brak)', 1),
(95, 'redponse / responsible', 'odpowied?? / odpowiedzialny', '(brak)', 1),
(96, 'love / lovable', 'mi??o???? / kochaniutki, mi??y', '(brak)', 1),
(97, 'profit / profitable', 'zysk / zyskowny, dochodowy', '(brak)', 1),
(98, 'thank / thankful', 'dzi??kowa?? / wdzi??czny', '(brak)', 1),
(99, 'pain / painful', 'b??l / bolesny', '(brak)', 1),
(100, 'peace / peaceful', 'pok??j (spok??j) / pokojowy (spokojny)', '(brak)', 1),
(101, 'explosion / explosive', 'wybuch, eksplozja / wybuchowy', '(brak)', 1),
(102, 'creativity / creative', 'kreatywno???? / kreatywny', '(brak)', 1),
(103, 'effect / effective', 'skutek (efekt) / skuteczny', '(brak)', 1),
(104, 'use / useless / useful', 'u??ytek / bezu??yteczny / u??yteczny', '(brak)', 1),
(105, 'home / homeless', 'dom / bezdomny', '(brak)', 1),
(106, 'hope / hopeless', 'nadzieja / beznadziejny', '(brak)', 1),
(107, 'biology / biological', 'biologia / biologiczny', '(brak)', 1),
(108, 'poet / poetic', 'poeta / poetycki', '(brak)', 1),
(109, 'value / valuable', 'warto???? / warto??ciowy', '(brak)', 1),
(110, 'ease / easy', '??atwo???? / ??atwy', '(brak)', 1),
(111, 'even', 'nawet', '(brak)', 1),
(112, 'educate / education', 'kszta??ci?? / edukacja', '(brak)', 1),
(113, 'relax / relaxation', 'relaksowa?? si?? / relaks', '(brak)', 1),
(114, 'imagine / imagination', 'wyobrazi?? / wyobra??nia', '(brak)', 1),
(115, 'immigrate / immigration', 'imigrowa?? / imigracja', '(brak)', 1),
(116, 'pollute / pollution', 'zanieczy??ci?? / zanieczyszczenie', '(brak)', 1),
(117, 'instruct / instruction', 'instruowa?? / instrukcja', '(brak)', 1),
(118, 'depress / depression', 'deprymowa??, przygn??bia?? / depresja', '(brak)', 1),
(119, 'compete / competition', 'rywalizowa?? / konkurs', '(brak)', 1),
(120, 'entertiain / entertainment', 'zabawia?? / rozrywka', '(brak)', 1),
(121, 'improve / improvement', 'poprawia??, ulepsza?? / poprawa, ulepszenie', '(brak)', 1),
(122, 'employ / employment', 'zatrudnia?? / zatrudnienie', '(brak)', 1),
(123, 'agree / agreement', 'zgodzi?? si?? / umowa', '(brak)', 1),
(124, 'run / running', 'biega?? / bieganie', '(brak)', 1),
(125, 'smoke / smoking', 'pali?? / palenie (papierosy)', '(brak)', 1),
(126, 'laugh / laughing', '??mia?? si?? / roze??miany', '(brak)', 1),
(127, 'eat / eating', 'je???? / zjadanie', '(brak)', 1),
(128, 'weak / weakness', 's??aby / s??abo????', '(brak)', 1),
(129, 'lonely / loneliness', 'samotny / samotno????', '(brak)', 1),
(130, 'happy / happiness', 'szcz????liwy / szcz????cie', '(brak)', 1),
(131, 'kind / kindness', 'uprzejmy / uprzejmo????', '(brak)', 1),
(132, 'stupid / stupidity', 'g??upi / g??upota', '(brak)', 1),
(133, 'sensitive / sensitivity', 'wra??liwy / wra??liwo????', '(brak)', 1),
(134, 'responsible / responsibility', 'odpowiedzialny / odpowiedzialno????', '(brak)', 1),
(135, 'it\'s broken down', 'to si?? zepsu??o', '(brak)', 1),
(136, 'it needs recharging', 'to potrzebuje ponownego za??adowania', '(brak)', 1),
(137, 'it\'s out of order', 'to nie jest w porz??dku', '(brak)', 1),
(138, 'it needs fixing', 'trzeba to naprawi??, to potrzebuje naprawy', '(brak)', 1),
(139, 'there is no reception', 'nie ma zasi??gu', '(brak)', 1),
(140, 'try switching it off', 'spr??buj wy????czenia tego', '(brak)', 1),
(141, 'it keeps making this strange noise', 'to wydaje dziwny d??wi??k', '(brak)', 1),
(142, 'it\'s crashed', 'to jest rozbite (po wypadku)', '(brak)', 1),
(143, 'it\'s frozen', 'zawiesi?? si??', '(brak)', 1),
(144, 'it doesn\'t work', 'to nie dzia??a', '(brak)', 1),
(145, 'we have to sort it out', 'musimy to rozwi??za??', '(brak)', 1),
(146, 'save it onto a memory stick', 'zapisa?? to na pami??ci (np. pendrive)', '(brak)', 1),
(147, 'shall I print it for you?', 'czy wydrukowa?? to dla ciebie?', '(brak)', 1),
(148, 'try to solve the problem', 'pr??bowa?? rozwi??za?? problem', '(brak)', 1),
(149, 'shout at colleagues', 'krzycze?? na koleg??w', '(brak)', 1),
(150, 'hit the PC', 'uderza?? w komputer', '(brak)', 1),
(151, 'throw parts of the computer', 'rzuca?? cz????ciami komputerowymi', '(brak)', 1),
(152, 'frustration', 'frustracja', '(brak)', 1),
(153, 'anger', 'z??o????, gniew', '(brak)', 1),
(154, 'could you hold the line, please?', 'm??g??by?? poczeka?? na lini, prosz???', '(brak)', 1),
(155, 'coulg you give me a refund?', 'm??g??by?? mi zwr??ci?? pieni??dze', '(brak)', 1),
(156, 'could you tell me who I should speak to?', 'm??g??by?? mi powiedzie?? z kim powinienem rozmawia???', '(brak)', 1),
(157, 'could you tell me what the problem is?', 'm??g??by?? mi powiedzie?? jaki jest problem?', '(brak)', 1),
(158, 'do you know what the problem is?', 'wiesz w czym problem?', '(brak)', 1),
(159, 'would you mind booking us a table?', 'czy mia??by?? co?? przeciwko ??eby?? zarezerwowa?? nam stolik?', '(brak)', 1),
(160, 'would you mind coming a little bit earlier?', 'czy mia??by?? co?? przeciwko ??eby?? przyszed?? troch?? wcze??niej?', '(brak)', 1),
(161, 'could you tell me what time it is?', 'm??g??by?? mi powiedzie?? kt??ra jest godzina?', '(brak)', 1),
(162, 'do you know how to get there?', 'czy wiesz jak si?? tam dosta???', '(brak)', 1),
(163, 'do you know what time the shops open?', 'czy wiesz o kt??rej otwieraj?? sklepy?', '(brak)', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unit_6`
--

CREATE TABLE `unit_6` (
  `id` int(10) NOT NULL,
  `angielskie` varchar(255) DEFAULT NULL,
  `polskie` varchar(255) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga_slowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `unit_6`
--

INSERT INTO `unit_6` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(1, 'fear', 'strach', '(brak)', 0),
(2, 'anger', 'z??o????', '(brak)', 0),
(3, 'distress', 'b??l, cierpienie', '(brak)', 0),
(4, 'joy', 'rado????', '(brak)', 0),
(5, 'surprise', 'niespodzianka, zaskoczenie', '(brak)', 0),
(6, 'disgust', 'obrzydzenie', '(brak)', 0),
(7, 'annoy / annoyed / annoying', 'irytowa?? / zirytowany / irytuj??cy', '(brak)', 0),
(8, 'relaxed / relaxing', 'zrelaksowany / relaksuj??cy', '(brak)', 0),
(9, 'bored / boring', 'znudzony / nudny', '(brak)', 0),
(10, 'frightened / frightening', 'przera??ony / przera??aj??cy', '(brak)', 0),
(11, 'worried / worrying', 'zmartwiony / niepokoj??cy', '(brak)', 0),
(12, 'embarrassed / embarrassing', 'zak??opotany, za??enowany / ??enuj??cy', '(brak)', 0),
(13, 'exhausted / exhausting', 'wyczerpany / wyczerpuj??cy', '(brak)', 0),
(14, 'confused / confusing', 'zmieszany / myl??cy', '(brak)', 0),
(15, 'shocked / shocking', 'zszokowany / szokuj??cy', '(brak)', 0),
(16, 'satisfied / satisfying', 'zadowolony / satysfakcjonuj??cy', '(brak)', 0),
(17, 'do you find your job satisfying?', 'czy uwa??asz swoj?? prac?? za satysfakcjonuj??c???', '(brak)', 0),
(18, 'cause = prompt', 'powodowa??', '(brak)', 0),
(19, 'induce = evoke', 'wywo??a??', '(brak)', 0),
(20, 'rotten', 'zepsute (o jedzeniu)', '(brak)', 0),
(21, 'excited / exciting', 'podekscytowany / ekscytuj??cy', '(brak)', 0),
(22, 'terrified / terrifing', 'przera??ony / przera??aj??cy', '(brak)', 0),
(23, 'astonished / astonishing', 'zdumiony / zdumiewaj??cy', '(brak)', 0),
(24, 'tiring / tired', 'm??cz??cy / zm??czony', '(brak)', 0),
(25, 'laughter therapy', 'terapia ??miechu', '(brak)', 0),
(26, 'click on', 'klikn????', '(brak)', 0),
(27, 'try on', 'przymierzy??', '(brak)', 0),
(28, 'get on', 'dogadywa?? si?? z kim??', '(brak)', 0),
(29, 'go off', 'zerwa?? znajomo????', '(brak)', 0),
(30, 'take off', 'zdj????', '(brak)', 0),
(31, 'log off', 'wylogowa?? si??', '(brak)', 0),
(32, 'chat sb up', 'zagada?? do kogo??', '(brak)', 0),
(33, 'scroll up', 'przewija??', '(brak)', 0),
(34, 'dress down', 'ubra?? si?? nieodpowiednio', '(brak)', 0),
(35, 'calm life', 'spokojne ??ycie', '(brak)', 0),
(36, 'settle down', 'ustatkowa?? si??', '(brak)', 0),
(37, 'shut down', 'wy????czy??', '(brak)', 0),
(38, 'cut off', 'odci????, uci????', '(brak)', 0),
(39, 'call off', 'odwo??a??', '(brak)', 0),
(40, 'put off', 'odk??ada??, odwleka??, prze??o??y??', '(brak)', 0),
(41, 'check out', 'sprawdzi?? (tak??e wymeldowa??)', '(brak)', 0),
(42, 'stand out', 'wyr????nia?? si??', '(brak)', 0),
(43, 'work out', 'wymy??li??, rozpracowa??, rozgry????', '(brak)', 0),
(44, 'look after', 'opiekowa??, zadba??, pilnowa??', '(brak)', 0),
(45, 'take after', 'przypomina??, by?? podobnym', '(brak)', 0),
(46, 'fill in', 'wype??ni??, uzupe??ni??', '(brak)', 0),
(47, 'let ... in', 'wpu??ci??, wpuszcza??', '(brak)', 0),
(48, 'persuade', 'przekona??, nam??wi??', '(brak)', 0),
(49, 'dress up', 'wystroi??', '(brak)', 0),
(50, 'raise money', 'kwestowa??, zbiera?? pieni??dze', '(brak)', 0),
(51, 'hold a sale', 'robi?? wyprzeda??', '(brak)', 0),
(52, 'do experiments', 'robi?? eksperymenty', '(brak)', 0),
(53, 'get a seat / take a seat', 'usi??????', '(brak)', 0),
(54, 'jump a queue', 'wpycha?? si?? w kolejk??', '(brak)', 0),
(55, 'cut hair', 'obcina?? w??osy', '(brak)', 0),
(56, 'watch a programme', 'ogl??da?? program', '(brak)', 0),
(57, 'obtain', 'uzyska??', '(brak)', 0),
(58, 'involve', 'anga??owa??', '(brak)', 0),
(59, 'think creatively', 'my??le?? kreatywnie', '(brak)', 0),
(60, 'get someone to do you a favour', 'sprawi?? by kto?? wy??wiadczy?? ci przys??ug??', '(brak)', 0),
(61, 'bargain', 'okazja, promocja', '(brak)', 0),
(62, 'instead', 'natomiast, za to, w zamian', '(brak)', 0),
(63, 'ask for a favour', 'poprosi?? o przys??ug??', '(brak)', 0),
(64, 'pass yours exams', 'zda?? twoje egzaminy', '(brak)', 0),
(65, 'get a place at university', 'dosta?? si?? na uniwersytet', '(brak)', 0),
(66, 'get engaged /get married', 'zar??czy?? si?? / pobra?? si??', '(brak)', 0),
(67, 'lose your job, money', 'straci?? prac??, pieni??dze', '(brak)', 0),
(68, 'fail a test', 'obla?? test', '(brak)', 0),
(69, 'win a competition, match', 'wygra?? zawody, mecz', '(brak)', 0),
(70, 'get promoted', 'awansowa??, dosta?? awans', '(brak)', 0),
(71, 'get a degree', 'uzyska?? tytu?? naukowy', '(brak)', 0),
(72, 'give a reason', 'poda?? pow??d', '(brak)', 0),
(73, 'tone of voice', 'ton g??osu', '(brak)', 0),
(74, 'prepare your listener', 'przygotuj swojego s??uchacza', '(brak)', 0),
(75, 'making people too upset', 'zbytnie martwienie ludzi', '(brak)', 0),
(76, 'give someone good / bad news', 'przekaza?? komu?? dobr?? / z???? wiadomo????', '(brak)', 0),
(77, 'arrangement', 'uk??ad, porozumienie', '(brak)', 0),
(78, 'I\'ve got some good news for you.', 'mam dobr?? wiadomo???? dla ciebie', '(brak)', 0),
(79, 'I\'m really pleased to tell you...', 'Jestem naprawd?? zadowolony ??eby ci powiedzie??...', '(brak)', 0),
(80, 'Bad news, I\'m afraid.', 'Z??e wie??ci, obawiam si??.', NULL, 0),
(81, 'I\'m sorry to have to tell you, but', 'Przykro mi, ??e musz?? ci powiedzie??, ale', '(brak)', 0),
(82, 'I\'m afraid I\'ve got some bad news', 'Obawiam si??, ??e mam z???? wiadomo????', '(brak)', 0),
(83, 'There\'s something I\'ve got to tell you', 'Jest co?? co mam ci do powiedzenia', '(brak)', 0),
(84, 'We\'ve got something to tell you', 'Mamy ci co?? do powiedzenia', '(brak)', 0),
(85, 'Congratulations!', 'Gratulacje!', '(brak)', 0),
(86, 'That\'s a shame.', 'Jaka szkoda.', '(brak)', 0),
(87, 'You\'re joking?', '??artujesz?', '(brak)', 0),
(88, 'You lucky thing.', 'Ty szcz????ciarzu.', '(brak)', 0),
(89, 'That\'s terrible', 'To okropne', '(brak)', 0),
(90, 'Well done!', 'Dobra robota!', '(brak)', 0),
(91, 'I\'m so pleased for you.', 'Jestem z ciebie bardzo zadowolony.', '(brak)', 0),
(92, 'I\'m really sorry to hear that.', 'Naprawd?? przyro mi to s??ysze??.', '(brak)', 0),
(93, 'That\'s really annoying.', 'To jest naprawd?? denerwuj??ce.', '(brak)', 0),
(94, 'exaggerate', 'wyolbrzymia??', '(brak)', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unit_8`
--

CREATE TABLE `unit_8` (
  `id` int(10) NOT NULL,
  `angielskie` varchar(255) DEFAULT NULL,
  `polskie` varchar(255) DEFAULT NULL,
  `zdanie` varchar(255) DEFAULT NULL,
  `flaga_slowa` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `unit_8`
--

INSERT INTO `unit_8` (`id`, `angielskie`, `polskie`, `zdanie`, `flaga_slowa`) VALUES
(1, 'get on well with', 'dobrze dogadywa?? si?? z sb', 'I get on well with my neighbour', 0),
(2, 'mind my own business', 'zajmowa?? si?? w??asnymi sprawami', 'I prefer to mind my own business so I don\'t ask the neighbours personal question.', 0),
(3, 'over for coffee', 'na kaw??', 'I sometimes invite my neighbour over for coffee', 0),
(4, 'nuisance', 'uci????liwy', 'My neighbour\'s dog is a nuisance - he\'s always barking early in the morning (zawsze szczeka wcze??nie rano)', 0),
(5, 'get to know', 'pozna??', 'We didn\'t get to know our neighbours for years.', 0),
(6, 'disturb', 'przeszkadza??, zaburza??, niepokoi??', 'My neighbour has pets but they never disturb me', 0),
(7, 'get on my nerves', 'dzia??aj?? mi na nerwy', 'My neighbours get on my nerves - he\'s always complaining', 0),
(8, 'we made friends', 'stali??my si?? przyjaci????mi', 'We made friends with our neighbours immediately. (natychmiast)', 0),
(9, 'I like to keep myself to myself', 'lubi?? by?? sob??', 'I like to keep myself to myself so my neighbours hasn\'t been in my house. (kiedy moich s??siad??w nie ma w domu)', 0),
(10, 'be quite noisy', 'by?? do???? ha??a??liwym', 'I can be quite noisy so I often ask my neighbors about their lives.', 0),
(11, 'put your feet up', 'mo??esz odpocz????, wyci??gn???? nogi', 'You can sit on this chair.', 0),
(12, 'make yourself at home', 'mo??esz poczu?? si?? jak u siebie w domu', 'Please you can make oneself at your home.', 0),
(13, 'be my guest', 'poczuj si?? moim go??ciem', 'I can expose you permission to use it.', 0),
(14, 'have a seat', 'mo??esz usi??????', 'Let is just sit down and relax.', 0),
(15, 'help yourself', 'cz??stuj si??', 'I will prepare something to food if you want.', 0);

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
-- Indeksy dla tabeli `media_1`
--
ALTER TABLE `media_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `unit_1`
--
ALTER TABLE `unit_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `unit_2`
--
ALTER TABLE `unit_2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `unit_3`
--
ALTER TABLE `unit_3`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `unit_4`
--
ALTER TABLE `unit_4`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `unit_5`
--
ALTER TABLE `unit_5`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `unit_6`
--
ALTER TABLE `unit_6`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `unit_8`
--
ALTER TABLE `unit_8`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
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
-- AUTO_INCREMENT dla tabeli `unit_1`
--
ALTER TABLE `unit_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
