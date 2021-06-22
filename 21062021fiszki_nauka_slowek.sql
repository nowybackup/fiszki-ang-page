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
(5, 'a quality paper', 'poważna gazeta', '(brak)', 1),
(6, 'a tabloit', 'brukowiec', '(brak)', 1),
(7, 'the gutter press', 'prasa drukowana', '(brak)', 1),
(8, 'a glossy magazine', 'ilustrowane luksusowe czasopismo', '(brak)', 1),
(9, 'a specialist magazine', 'magazyn specialistyczny', '(brak)', 1),
(10, 'a womens\'s magazine', 'magazyn dla kobiet', '(brak)', 1),
(11, 'a motoring press', 'czasopisma motoryzacyjne', '(brak)', 1),
(12, 'an evening paper', 'wieczorna gazeta', '(brak)', 1),
(13, 'a Sunday paper', 'niedzielna gazeta', '(brak)', 1),
(14, 'a colour supplement', 'kolorowy dodatek', '(brak)', 1),
(15, 'a quality paper', 'poważna gazeta', '(brak)', 1),
(16, 'a tabloit', 'brukowiec', '(brak)', 1),
(17, 'the sutter press', 'prasa drukowana', '(brak)', 1),
(18, 'a glossy press', 'ilustrowane luksusowe czasopismo', '(brak)', 1),
(19, 'a specialist magazine', 'magazyn specialistyczny', '(brak)', 1),
(20, 'a womens\'s magazine', 'magazyn dla kobiet', '(brak)', 1),
(21, 'the motorning press', 'czasopisma motoryzacyjne', '(brak)', 1),
(22, 'the ecomomic press', 'czsopisma ekonomiczne', '(brak)', 1),
(23, 'a journal', 'czasopismo fachowe', '(brak)', 1),
(24, 'the front page', 'pierwsza strona', '(brak)', 1),
(25, 'the cover', 'okładka', '(brak)', 1),
(26, 'the headlines', 'nagłówki', '(brak)', 1),
(27, 'a section', 'rubryka', '(brak)', 1),
(28, 'an article', 'artykuł prasowy', '(brak)', 1),
(29, 'a column', 'szpalta/felieton', '(brak)', 1),
(30, 'the gossip column', 'kronnika towarzyska', '(brak)', 1),
(31, 'the cover', 'okładka', '(brak)', 1),
(32, 'the agony column', 'porady sercowe', '(brak)', 1),
(33, 'the obituaries', 'nekrologi', '(brak)', 1),
(34, 'the classified ads', 'ogłoszenia drobne', '(brak)', 1),
(35, 'the credits', 'napisy podające autorów', '(brak)', 1),
(36, 'an issue', 'wydanie, numer', '(brak)', 1),
(37, 'a copy', 'egzemnplarz', '(brak)', 1),
(38, 'the circulation', 'nakład', '(brak)', 1),
(39, 'a subsciption', 'prenumerata', '(brak)', 1),
(40, 'a subscriber', 'prenumerator', '(brak)', 1),
(41, 'print', 'drukować', '(brak)', 1),
(42, 'issue', 'wydawać', '(brak)', 1),
(43, 'come out', 'ukazywać sie', '(brak)', 1),
(44, 'subscribe', 'prenumerować', '(brak)', 1),
(45, 'daily', 'dziennik', '(brak)', 1),
(46, 'weekly', 'tygodnik', '(brak)', 1),
(47, 'monthly', 'miesięcznik', '(brak)', 1),
(48, 'quarterly', 'kwartalnik', '(brak)', 1),
(49, 'a feature film', 'film dokumentalny', '(brak)', 1),
(50, 'a return, a repeat', 'powtórka, ponowna emisja', '(brak)', 1),
(51, 'a cartoon', 'kreskówka', '(brak)', 1),
(52, 'a trailer', 'zwiastun', '(brak)', 1),
(53, 'a commercial, an adverb', 'reklama', '(brak)', 1),
(54, 'a commercial break', 'przerwa na reklamy', '(brak)', 1),
(55, 'programme, schedule', 'planować', '(brak)', 1),
(56, 'produce a show', 'nagrywać program', '(brak)', 1),
(57, 'entrain', 'dostarczać rozrywki', '(brak)', 1),
(58, 'engross', 'przyciagać, pochłaniać uwagę', '(brak)', 1),
(59, 'live', 'na zywo', '(brak)', 1),
(60, 'pre-recorded', 'nagrany wcześniej', '(brak)', 1),
(61, 'educational', 'edukacyjny', '(brak)', 1),
(62, 'stulifving', 'ogłupiający', '(brak)', 1),
(63, 'addictive', 'uzależniający', '(brak)', 1),
(64, 'a T.V. journalist', 'dziennikarz telewizyjny', '(brak)', 1),
(65, 'an anchorman', 'prezenter dyżurny', '(brak)', 1),
(66, 'an announcer', 'spiker', '(brak)', 1),
(67, 'a newsreader', 'prezenter wiadomości', '(brak)', 1),
(68, 'a compere', 'gospodaż/ni programu', '(brak)', 1),
(69, 'a broadcaster', 'prezenter', '(brak)', 1),
(70, 'a sportcaster', 'dziennikarz sportowy', '(brak)', 1),
(71, 'a quiz master', 'osoba prowadząca quiz', '(brak)', 1),
(72, 'be on the screen', 'być na ekranie', '(brak)', 1),
(73, 'present the news', 'przedstawiać wiadomości', '(brak)', 1),
(74, 'hold the audience', 'przykuwać uwagę publiczności', '(brak)', 1),
(75, 'host, compere', 'być gospodarzem programu', '(brak)', 1),
(76, 'the fourth estate', 'czwarta władza', '(brak)', 1),
(77, 'the freedom on the press', 'wolność prasy', '(brak)', 1),
(78, 'press freedom', 'swoboda prasy', '(brak)', 1),
(79, 'freedom of expression speech', 'wolność wypowidzi słowa', '(brak)', 1),
(80, 'the right to know', 'prawo do informacji', '(brak)', 1),
(81, 'investigative journalism', 'dziennikarstwo dochodzeniowe', '(brak)', 1),
(82, 'mesia coverage', 'zainteresowanie mediów', '(brak)', 1),
(83, 'a newsmaker', 'temat z pierwszych stron gazet', '(brak)', 1),
(84, 'the right to privacy', 'prawo do prywatności', '(brak)', 1),
(85, 'a breach of ethics', 'naruszenie etyki', '(brak)', 1),
(86, 'propaganda', 'propaganda', '(brak)', 1),
(87, 'a muckraker', 'dziennikarz szukający sensacji', '(brak)', 1),
(88, 'a rumour', 'plotka', '(brak)', 1),
(89, 'a scandal', 'skandal', '(brak)', 1),
(90, 'libel', 'zniesławienie', '(brak)', 1),
(91, 'slander', 'oszczerstwo, pomówienie', '(brak)', 1),
(92, 'voyeurism', 'podglądactwo', '(brak)', 1),
(93, 'investigate a case', 'badać sprawę', '(brak)', 1),
(94, 'cover', 'robić reportaż o', '(brak)', 1),
(95, 'spy', 'szpiegować', '(brak)', 1),
(96, 'pester, harass', 'męczyć, nękać', '(brak)', 1),
(97, 'stalk', 'śledzić', '(brak)', 1),
(98, 'unearth, dig out', 'wydobywać na światło dzienne', '(brak)', 1),
(99, 'disclose', 'ujawniać', '(brak)', 1),
(100, 'expose a scandal', 'demaskować, ujawniać skandal', '(brak)', 1),
(101, 'libel, defame', 'zniesławiać', '(brak)', 1),
(102, 'slander', 'rzucać oszczerstwa', '(brak)', 1),
(103, 'manipulate', 'manipulować', '(brak)', 1),
(104, 'make the news', 'trafiać na czołówki', '(brak)', 1),
(105, 'inaccurate', 'nie dokładny', '(brak)', 1),
(106, 'unreliable', 'niewiarygodny', '(brak)', 1),
(107, 'objective', 'obiektywny', '(brak)', 1),
(108, 'biassed, prejudiced', 'stronniczny, tendencyjny', '(brak)', 1),
(109, 'electronic surveillance', 'inwigilacja elektroniczna', '(brak)', 1),
(110, 'closed-circuit television', 'telewizja przemysłowa', '(brak)', 1),
(111, 'wiretapping', 'podsłuch telefoniczny', '(brak)', 1),
(112, 'a phone pug', 'pluskwa telefoniczna', '(brak)', 1),
(113, 'eavesdropping', 'podsłuchiwanie', '(brak)', 1),
(114, 'watch', 'obserwować', '(brak)', 1),
(115, 'tap/bug a phone', 'założyć podsłuch telefoniczny', '(brak)', 1),
(116, 'eavesdrop on', 'podsłuchiwać', '(brak)', 1),
(117, 'self-censorship', 'autocenzura', '(brak)', 1),
(118, 'right of search', 'prawo do przeszukania', '(brak)', 1),
(119, 'a seizure', 'konfiskata', '(brak)', 1),
(120, 'a ban', 'zakaz', '(brak)', 1),
(121, 'news blackout', 'zakaz rozpowszechniania informacji', '(brak)', 1),
(122, 'censor', 'cenzurować', '(brak)', 1),
(123, 'suppress press freedom', 'znieść wolność prasy', '(brak)', 1),
(124, 'media coverage', 'sprawozdanie w mediach', '(brak)', 1),
(125, 'a journalist', 'dziennikarz', '(brak)', 1),
(126, 'reporter', 'reportarz', '(brak)', 1),
(127, 'a columnist', 'feletonista', '(brak)', 1),
(128, 'a freelance', 'niezależny', '(brak)', 1),
(129, 'a foreign corresponder', 'koresponder zagraniczny', '(brak)', 1),
(130, 'an editor', 'redaktor naczelny', '(brak)', 1),
(131, 'a newspaper editor', 'redaktor pisma', '(brak)', 1),
(132, 'publisher', 'wydawca', '(brak)', 1),
(133, 'a press tycoon', 'magnat prasowy', '(brak)', 1),
(134, 'news gatherning', 'zbieranie informacji', '(brak)', 1),
(135, 'a news release (US)', 'oświadczenie prasowe', '(brak)', 1),
(136, 'inform', 'informmować', '(brak)', 1),
(137, 'report', 'relacionować', '(brak)', 1),
(138, 'cover', 'robić reportarz', '(brak)', 1),
(139, 'rewrite', 'napisać od nowa', '(brak)', 1),
(140, 'edit', 'redagować', '(brak)', 1),
(141, 'publish', 'publikować', '(brak)', 1),
(142, 'scoop', 'opublikować przed konkurencją', '(brak)', 1),
(143, 'hot the headlines', 'trafić na nagłówki', '(brak)', 1),
(144, 'sensitize publish opinion', 'uczulić opinię publiczną', '(brak)', 1),
(145, 'make people awarge', 'uświadomić ludziom', '(brak)', 1),
(146, 'have news value', 'stanowić interesującą wiadomość', '(brak)', 1),
(147, 'a radio set, a transmistor', 'osbiornik radiowy', '(brak)', 1),
(148, 'a car radio', 'radio samochodowe', '(brak)', 1),
(149, 'an aearial', 'antena', '(brak)', 1),
(150, 'wave', 'fala', '(brak)', 1),
(151, 'short wave', 'fale któtkie', '(brak)', 1),
(152, 'short wave', 'fale średnie', '(brak)', 1),
(153, 'long wave', 'fale długie', '(brak)', 1),
(154, 'freqency modulation', 'modulacja częstotliwości', '(brak)', 1),
(155, 'static interference', 'zakłucenia elektroniczne', '(brak)', 1),
(156, 'a radio announcer', 'prezent radiowy', '(brak)', 1),
(157, 'the audience', 'słuchacze', '(brak)', 1),
(158, 'a news bulletin', 'serwic wiadomości', '(brak)', 1),
(159, 'a news flesh', 'skrót wiadomości', '(brak)', 1),
(160, 'the audience', 'słuchacze', '(brak)', 1),
(161, 'a news bulletin', 'serwis wiadmości', '(brak)', 1),
(162, 'pick up', 'skrót wiadmości', '(brak)', 1),
(163, 'broadcaster', 'nadawać', '(brak)', 1),
(164, 'be on air', 'być na antenie', '(brak)', 1),
(165, 'be off the air', 'nie być na antenie', '(brak)', 1),
(166, 'a television set', 'odbiornik telewizyjny', '(brak)', 1),
(167, 'a black an white tv', 'telewizja czarno-biała', '(brak)', 1),
(168, 'a colour tv', 'kolorowa telewizja', '(brak)', 1),
(169, 'the remote control, the zapper', 'zdalne sterowanie, pilotem', '(brak)', 1),
(170, 'a screen', 'ekran', '(brak)', 1),
(171, 'a channel', 'kanał', '(brak)', 1),
(172, 'a network', 'sieć', '(brak)', 1),
(173, 'cable tevision', 'telewizja kablowa', '(brak)', 1),
(174, 'a dish aerial', 'telewizja satelitarna, talerz', '(brak)', 1),
(175, 'pay-per-view television', 'płatne programy w telewizji', '(brak)', 1),
(176, 'toll channel', 'płatny kanał', '(brak)', 1),
(177, 'a tv decoder', 'dekoder telewizyjny', '(brak)', 1),
(178, 'a video-cassete recorder', 'magnetowid', '(brak)', 1),
(179, 'a videotape', 'taśma wideo', '(brak)', 1),
(180, 'a viewer', 'telewidz', '(brak)', 1),
(181, 'a channer jumper', 'osoba skacząca z kanału na kanał', '(brak)', 1),
(182, 'a tv addict', 'telemaniak, uzależniony od tv', '(brak)', 1),
(183, 'watch tv', 'oglądać tv', '(brak)', 1),
(184, 'turn the tv on/off', 'włączyć, wyłączyć tv', '(brak)', 1),
(185, 'channel-flick, zap', 'skakać po kanałach', '(brak)', 1),
(186, 'videotape, record', 'nagrywać na taśmę', '(brak)', 1),
(187, 'duplicate', 'kopiować', '(brak)', 1),
(188, 'a programme', 'program', '(brak)', 1),
(189, 'a morning programme', 'program poranny', '(brak)', 1),
(190, 'an evening programme', 'program wieczorny', '(brak)', 1),
(191, 'air time', 'czas na antenie', '(brak)', 1),
(192, 'the ratings', 'notowania', '(brak)', 1),
(193, 'prime time', 'najlepszy czas antenowy', '(brak)', 1),
(194, 'an audience share', 'oglądalność', '(brak)', 1),
(195, 'news', 'wiadomości', '(brak)', 1),
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
(206, 'be subject to censorship', 'podlegać cenzurze', '(brak)', 1),
(207, 'blue-pencil', 'wykreślać, cenzurować', '(brak)', 1),
(208, 'silence', 'uciszyć', '(brak)', 1),
(209, 'gag', 'zakneblować', '(brak)', 1),
(210, 'curtail access', 'ograniczyć dostęp', '(brak)', 1),
(211, 'confiscate, seize', 'konfiskować, zająć', '(brak)', 1),
(212, 'ban, suppress', 'zakazać, zatajać', '(brak)', 1),
(213, 'quality papers', 'ambitne pismo dużego formatu', '(brak)', 1),
(214, 'tabloids', 'popularne pisma średniego formatu', '(brak)', 1),
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
(5, 'stand on our feet', 'staramy się pomagać', 'In time epidemic everyone stand on feet other people.', 1),
(6, 'victims', 'ofiary', 'In the war everytime are victims.', 1),
(7, 'majority', 'większość', 'Majority world society don\'t know about bad situation in Africa.', 1),
(8, 'political division', 'podział polityczny', 'Poland goverment is politcal divison: right and left site.', 1),
(9, 'desire', 'pragnienie', 'I have big desire that come back normal life.', 1),
(10, 'surgery', 'chirurgia', 'My cousin studded surgery at University of Katowice.', 1),
(11, 'distinguished', 'wybitny', 'He is an distinguished scientist in Poland.', 1),
(12, 'circumstances', 'okoliczności', 'What were the circumstances of the outbreak of civil war?', 1),
(13, 'respecting', 'dotyczący', 'I found a document respecting my serious illness.', 1),
(14, 'essential', 'kluczowy', 'Always when telling a story, you have to go through a essential moment.', 1),
(15, 'treating', 'leczenie', 'They are treating a lot of children and women.', 1),
(16, 'camp', 'obóz', 'I went to camp on vacation.', 1),
(17, 'cesarean section', 'cesarskie cięcie', 'My neighbor had a caesarean section.', 1),
(18, 'elementary', 'podstawówka', 'I had only good grades in elementary.', 1),
(19, 'rule', 'zasada', 'The rules are there to break them.', 1),
(20, 'clan divisions', 'podziały klanowe', 'There is a clan division in my village.', 1),
(21, 'cesarean section', 'cesarskie cięcie', 'We are doing caesarean section and diffrent operations.', 1),
(22, 'medical care', 'opieka medyczna', 'You running a medical clinic,but much, much needed medical care to people', 1),
(23, 'circumstances', 'okoliczności', 'For you to become a doctor and to work with your mother in these circumstances.', 1),
(24, 'law and order', 'prawo i porządek', 'It was we were having that time government- law and order', 1),
(25, 'gynecological complication', 'powikłania ginekologicze', 'My mother died in gynecological complication.', 1),
(26, 'war zone', 'strefa działań wojennych', 'and if you did you are forgiven for wondering how an nutt manage to end up in a war zone', 1),
(27, 'in war-torn', 'w ogarniętej wojną', 'I actually was offered right out of medical school and actepted a volunteer contract to work with UNICEF in war-torn Somalia', 1),
(28, 'caused by the war', 'spowodowane wojną', '(brak)', 1),
(29, 'genocide', 'ludobójstwo', 'It was right on the heels of the Rwandan Genocide and ...', 1),
(30, 'malnutrition and dehydration', 'niedożywienie i odwodnienie', 'She had died hours before an malnutrition and deyhydration.', 1),
(31, 'malnourished', 'niedożywienie', 'Children became very malnourished', 1),
(32, 'backyard', 'podwórko', 'They are in our backyard', 1),
(33, 'severe', 'silny', 'We take the severe ones, and we reschedule the other ones the next day.', 1),
(34, 'reschedule', 'zmienić termin', 'We take the severe ones, and we reschedule the other ones the next day.', 1),
(35, 'majority', 'większość', 'The majority are women and girls.', 1),
(36, 'admission', 'wstęp, dostęp, pozwolenie', 'Would you explain the rules for admission?', 1),
(37, 'distinguished', 'wybitny', 'There is no clan distinguishes and political division in Somali sociaty.', 0),
(38, 'Whomever', 'wyrzucamy', 'Whomever makes those things we throw out.', 1),
(39, 'surgeries', 'operacje', 'You see 300 patients, 20 surgeries and 90,000 people to manage.', 1),
(40, 'backyard', 'podwórko', 'So our patients are women and children and they are in our backyard', 1),
(41, 'reschedule', 'zmiana terminu', 'We reschedule the other ones the next day.', 1),
(42, 'Rules', 'zasady', 'And the doctors have some very big rules about who can get treated at the clinic.', 1),
(43, 'dehydration', 'odwodnienie', 'When you take on a lot of sport activities, remember about drinking water to avoid dehydration!', 1),
(44, 'Automatic rifle', 'karabin maszynowy', 'Automatic rifles fire a series of shots each time you pull the trigger', 1),
(45, 'force', 'siła', 'Force is calculated as mass times accelaration.', 1),
(46, 'Invasion', 'inwazja', 'In 1588 Spain has invaded England.', 1),
(47, 'various', 'różny', 'Everybody have various views.', 1),
(48, 'Humanitarian catastrophe', 'Katastrofa humanitarna', 'Africa is one of the most country where is a humanitarian catastrophe.', 1),
(49, 'Stiff', 'Sztywny', 'My leg is stiff. My doctor gived me a iron splint after my breaking.', 1),
(50, 'Occupying', 'Zajmowanie', 'In World War II the Nazist occupying western part Poland.', 1),
(51, 'Coercion', 'Przymus', 'In times reigning Roma slaves were coercion to fight as gladiator.', 1),
(52, 'nutt', 'Świr', 'Everybody calls nutt people who eat bread with chips.', 1),
(53, 'nursery school', 'szkoła medyczna', 'I am planning to go to nursery school.', 1),
(54, 'weapon', 'broń', 'In Poland it\'s difficult to get a permission for weapon.', 1),
(55, 'disclosure mechanisms', 'mechanizmy jawności', 'the government is working on introducing a disclosure mechanism.', 1),
(56, 'demand', 'popyt', 'Demand for face masks has increased in the face of epidemics.', 1),
(57, 'treaty', 'traktat', 'The president has signed a new treaty', 1),
(58, 'mostly', 'przeważnie', 'Mostly poor children die because they are malnourished.', 1),
(59, 'rifles', 'karabiny', 'The rifles shouldn\'t be as accessible as they are now.', 1),
(60, 'favor', 'przysługa', 'The rich people should do favor children and help them.', 1),
(61, 'staggering', 'oszałamiający', 'A lot of children are starving, it\'s staggering.', 1),
(62, 'displaced', 'przesiedlony', 'Because of the war, most people are displaced to another place.', 1),
(63, 'combat', 'walka', 'The combat between states is terrible.', 1),
(64, 'contributions', 'udziały', 'Regular contributions like monthly contributions are a far more effective way to giving.', 1),
(65, 'Terryfing', 'Okropny', 'I can tell you that it is a terryfing and agonizing fear', 1),
(66, 'Clockwork', 'Mechaniczna', 'Can best be describe as \"Mad Max\" by way of \"a Clockwork Orange\"', 1),
(67, 'Infans', 'niemowlę', 'They were clutchig their infants very close', 1),
(68, 'coercion', 'nacisk', 'Not through force or coercion or invasion,but by simply looking at all', 1),
(69, 'civillians', 'Cywile', 'The vast majority of civillians like that young baby who are dying in war zones around the world', 1),
(70, 'famine', 'głód', 'Mostly as results of war-related famine and disease.', 1),
(71, 'figure out', 'rozwiązać', 'I was part of a team that was tasked with trying figure out how best to respond to this humanitarian catastrope.', 1),
(72, 'scrutinzing', 'badać', 'This is a relationshio worth scrutinzing.', 1),
(73, 'increased', 'wzrosła', 'Increased control mechanisms won\'t solve that problem.', 1),
(74, 'terrifining', 'przerażające', 'I can tell you that it is a terryfing and agonizing fear', 1),
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
(11, 'my immediate family', 'moja najbliższa rodzina', '(brak)', 1),
(12, 'include', 'zawierać', '(brak)', 1),
(13, 'inherit', 'odziedziczyć', '(brak)', 1),
(14, 'inherited', 'odziedziczony', '(brak)', 1),
(15, 'medallist', 'medalista', '(brak)', 1),
(16, 'relative', 'krewny', '(brak)', 1),
(17, 'royal', 'królewski', '(brak)', 1),
(18, 'take after', 'upodabniać, przypominać kogoś, być podobnym', '(brak)', 1),
(19, 'aim', 'cel, dążenie', '(brak)', 1),
(20, 'apply for a job', 'ubiegać się o pracę', '(brak)', 1),
(21, 'colleague', 'kolega', '(brak)', 1),
(22, 'draft', 'projekt, szkic, wersja roboczac', '(brak)cc', 1),
(23, 'publishing company', 'wydawnictwo', '(brak)', 1),
(24, 'specialisation', 'specjalizacja', '(brak)', 1),
(25, 'version', 'wersja', '(brak)', 1),
(26, 'ability', 'zdolność', '(brak)', 1),
(27, '', '', '', 1),
(28, 'be in charge', 'być u władzy, rządzić', '(brak)', 1),
(29, 'gene', 'gen', '(brak)', 1),
(30, 'genetic', 'genetyczny', '(brak)', 1),
(31, 'accurate', 'dokładny, trafny', '(brak)', 1),
(32, 'chain', 'łańcuch', '(brak)', 1),
(33, 'classmate', 'kolega z klasy', '(brak)', 1),
(34, 'handlebar', 'kierownica', '(brak)', 1),
(35, 'pupil', 'uczeń', '(brak)', 1),
(36, 'team-mate', 'kolega z drużyny', '(brak)', 1),
(37, 'according to', 'według, zgodnie z', '(brak)', 1),
(38, 'balance', 'bilans', '(brak)', 1),
(39, 'challenge', 'wyzwanie', '(brak)', 1),
(40, 'do someone a favour', 'zrobić komuś przysługę', '(brak)', 1),
(41, 'get on with someone', 'dogadywać się z kimś być z kimś w dobrych stosunkach', '(brak)', 1),
(42, 'go on a diet', 'przejść na dietę', '(brak)', 1),
(43, 'research agency', 'agencja badawcza', '(brak)', 1),
(44, 'respond', 'odpowiadać', '(brak)', 1),
(45, 'take part in', 'wziąć udział w', '(brak)', 1),
(46, 'take responsibility for', 'wziąć odpowiedzialność za', '(brak)', 1),
(47, 'appropriately', 'odpowiednio', '(brak)', 1),
(48, 'answer briefly', 'odpowiadać krótko, zwięźle', '(brak)', 1),
(49, 'dress smartly', 'ubrać się elegancko', '(brak)', 1),
(50, 'send references', 'wysłać referencje', '(brak)', 1),
(51, 'arrive on time', 'przybyć na czas', '(brak)', 1),
(52, 'avoid eye contact', 'unikać kontaktu wzrokowego', '(brak)', 1),
(53, 'show enthusiasm', 'pokazać entuzjazm', '(brak)', 1),
(54, 'be prepared', 'być przygotowany', '(brak)', 1),
(55, 'face-to-face', 'twarzą w twarz', '(brak)', 1),
(56, 'placement', 'umieszczenie, ulokowanie', '(brak)', 1),
(57, 'potential', 'potencjał', '(brak)', 1),
(58, 'on the summer camp', 'na letnim obozie', '(brak)', 1),
(59, 'according', 'stosownie, zależnie', '(brak)', 1),
(60, 'community', 'społeczność, wspólnota', '(brak)', 1),
(61, 'currency', 'waluta', '(brak)', 1),
(62, 'yes, definitely', 'tak, zdecydowanie', '(brak)', 1),
(63, 'of course!', 'oczywiście!', '(brak)', 1),
(64, 'that\'s right!', 'racja!', '(brak)', 1),
(65, 'you\'re correct', 'masz rację (ze słówkiem correct)', '(brak)', 1),
(66, 'I see', 'Rozumiem (ze słówkiem see)', '(brak)', 1),
(67, 'no problem', 'nie ma sprawy', '(brak)', 1),
(68, 'you\'re welcome', 'nie ma za co, proszę bardzo', '(brak)', 1),
(69, 'go ahead', 'śmiało (idź dalej, naprzód)', '(brak)', 1),
(70, 'please continue', 'proszę kontynuować', '(brak)', 1),
(71, 'reason', 'powód', '(brak)', 1),
(72, 'plans for the future', 'plany na przyszłość', '(brak)', 1),
(73, 'work experience', 'doświadczenie w pracy', '(brak)', 1),
(74, 'expectations', 'oczekiwania', '(brak)', 1),
(75, 'could I ask the question?', 'mógłbym zadać pytanie?', '(brak)', 1),
(76, 'there are a couple of things I\'d like to ask about', 'jest parę rzeczy o które chciałbym zapytać', '(brak)', 1),
(77, 'can I ask you about that?', 'czy mogę Cię zapytać o to?', '(brak)', 1),
(78, 'do you have any questions?', 'czy masz jakieś pytania?', '(brak)', 1),
(79, 'any queries?', 'jakieś zapytania?', '(brak)', 1),
(80, 'so for me the most important thing is to', 'więc dla mnie najważniejszą rzeczą jest to aby', '(brak)', 1),
(81, 'I suppose', 'przypuszczam', '(brak)', 1),
(82, 'one thing I\'d like to say', 'jedną rzecz chciałbym powiedzieć', '(brak)', 1),
(83, 'actually I have a query', 'właściwie mam zapytanie', '(brak)', 1),
(84, 'opportunity', 'okazja sposobność', '(brak)', 1),
(85, 'involved', 'zaangażowany', '(brak)', 1),
(86, 'introduce myself', 'przedstawić się', '(brak)', 1),
(87, 'in these fields', 'w tych dziedzinach', '(brak)', 1),
(88, 'instead', 'zamiast', '(brak)', 1),
(89, 'more complex sentences', 'bardziej złożone zdania', '(brak)', 1),
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
(3, 'exact words', 'dokładne słowa', '(brak)', 0),
(4, 'biopic', 'film biograficzny', '(brak)', 0),
(5, 'docudrama', 'dramat dokumentalny', '(brak)', 0),
(6, 'characters battle with their minds', 'postacie walczą z myślami, biją się z myślami', '(brak)', 0),
(7, 'imaginary world', 'wyimaginowany świat', '(brak)', 0),
(8, 'in the life of a real person', 'w życiu prawdziwej osoby', '(brak)', 0),
(9, 'old-fashioned costume', 'staroświecki, staromodny kostium', '(brak)', 0),
(10, 'survive', 'przeżyć, przetrwać', '(brak)', 0),
(11, 'stockbroker', 'makler giełdowy', '(brak)', 0),
(12, 'be on TV', 'być w TV', '(brak)', 0),
(13, 'be in a newspaper', 'być w gazecie', '(brak)', 0),
(14, 'do something embarrassing in public', 'robić coś żenującego publicznie', '(brak)', 0),
(15, 'write a poem', 'napisać wiersz', '(brak)', 0),
(16, 'go to a country on a different continent', 'udać się do kraju na innym kontynencie', '(brak)', 0),
(17, 'collect something as a hobby', 'zbierać coś jako hobby', '(brak)', 0),
(18, 'see someone commit a crime', 'zobaczyć kogoś popełniającego przestępstwo', '(brak)', 0),
(19, 'at 12', 'o 12', '(brak)', 0),
(20, 'at night', 'w nocy', '(brak)', 0),
(21, 'at the weekend', 'w weekend', '(brak)', 0),
(22, 'in July', 'w lipcu', '(brak)', 0),
(23, 'in 2010', 'w 2010 roku', '(brak)', 0),
(24, 'on the 4th of February', 'czwartego lutego', '(brak)', 0),
(25, 'in the morning', 'rano', '(brak)', 0),
(26, 'on Thursday morning', 'w czwartek rano', '(brak)', 0),
(27, 'at lunchtime', 'w porze lunchu', '(brak)', 0),
(28, 'on Wednesday', 'w środę', '(brak)', 0),
(29, 'in the autumn', 'w jesieni, na jesień', '(brak)', 0),
(30, 'on New Year\'s Day', 'w Nowy Rok', '(brak)', 0),
(31, 'in the twenty-first century', 'w dwudziestym pierwszym wieku', '(brak)', 0),
(32, 'see on TV', 'widzieć w telewizji', '(brak)', 0),
(33, 'go for a walk', 'iść na spacer', '(brak)', 0),
(34, 'travel by boat', 'podróżować łódką', '(brak)', 0),
(35, 'go for a drive', 'udać się na przejażdżkę', '(brak)', 0),
(36, 'travel by plane', 'podróżować samolotem', '(brak)', 0),
(37, 'go for a run', 'iść pobiegać, iść na przebieżkę', '(brak)', 0),
(38, 'travel by coach', 'podróżować autokarem', '(brak)', 0),
(39, 'speak on the phone', 'rozmawiać przez telefon', '(brak)', 0),
(40, 'travel by train', 'podróżować pociągiem', '(brak)', 0),
(41, 'hear on the radio', 'słyszeć w radiu', '(brak)', 0),
(42, 'on my own', 'na własną rękę', '(brak)', 0),
(43, 'by mistake', 'przez pomyłkę', '(brak)', 0),
(44, 'on business', 'w interesach, służbowo', '(brak)', 0),
(45, 'by chance', 'przypadkowo, przez przypadek', '(brak)', 0),
(46, 'by hand', 'ręcznie', '(brak)', 0),
(47, 'in the end', 'na końcu', '(brak)', 0),
(48, 'on purpose', 'specjalnie, celowo', '(brak)', 0),
(49, 'arrive on time', 'przybyć na czas', '(brak)', 0),
(50, 'in a moment', 'za chwilę', '(brak)', 0),
(51, 'in a hurry', 'w pośpiechu', '(brak)', 0),
(52, 'keep up-to-date', 'utrzymać się na bieżąco', '(brak)', 0),
(53, 'conspiracy theory', 'teoria spiskowa', '(brak)', 0),
(54, 'involved', 'zaangażowany, wplątany', '(brak)', 0),
(55, 'suspects', 'podejrzani', '(brak)', 0),
(56, 'shadow', 'cień', '(brak)', 0),
(57, 'love story', 'historia miłosna', '(brak)', 0),
(58, 'alcohol', 'alkohol', '(brak)', 0),
(59, 'photograph / photographer', 'fotografia / fotograf', '(brak)', 0),
(60, 'a man with a gun', 'człowiek z pistoletem', '(brak)', 0),
(61, 'flag', 'flaga', '(brak)', 0),
(62, 'Federal Bureau of Investigation', 'FBI', '(brak)', 0),
(63, 'report', 'raport', '(brak)', 0),
(64, 'surprisingly', 'zaskakująco', '(brak)', 0),
(65, 'visible', 'widoczny, widzialny', '(brak)', 0),
(66, 'apparently', 'pozornie', '(brak)', 0),
(67, 'wave', 'falować, fala', '(brak)', 0),
(68, 'however', 'jednak, jakkolwiek, wszakże...', '(brak)', 0),
(69, 'logically', 'logicznie', '(brak)', 0),
(70, 'lighting conditions', 'warunki oświetleniowe', '(brak)', 0),
(71, 'doubts', 'wątpliwości', '(brak)', 0),
(72, 'explain', 'wyjaśniać', '(brak)', 0),
(73, 'on the thirty-first of August', '31 sierpnia', '(brak)', 0),
(74, 'accident', 'wypadek', '(brak)', 0),
(75, 'relationship', 'związek', '(brak)', 0),
(76, 'drunken condition', 'stan pod wpływem alkoholu', '(brak)', 0),
(77, 'be pregnant', 'być w ciąży', '(brak)', 0),
(78, 'plan to marry', 'planować wyjść za mąż', '(brak)', 0),
(79, 'assassination', 'zamach', '(brak)', 0),
(80, 'leader', 'przywódca, lider', '(brak)', 0),
(81, 'crowd / crowds / crowded', 'tłum / tłumy / zatłoczony', '(brak)', 0),
(82, 'was arrested', 'został aresztowany', '(brak)', 0),
(83, 'immediately', 'natychmiast', '(brak)', 0),
(84, 'almost', 'prawie', '(brak)', 0),
(85, 'conclude', 'wyciągnąć wniosek', '(brak)', 0),
(86, 'he acted alone', 'on działał sam', '(brak)', 0),
(87, 'investigation', 'śledztwo', '(brak)', 0),
(88, 'criticise', 'krytykować', '(brak)', 0),
(89, 'agree', 'zgadzać się', '(brak)', 0),
(90, 'summary', 'podsumowanie, streszczenie', '(brak)', 0),
(91, 'claim', 'twierdzić, deklarować', '(brak)', 0),
(92, 'he was drunk', 'on był pijany', '(brak)', 0),
(93, 'prison', 'więzienie', '(brak)', 0),
(94, 'calm', 'spokój, spokojny', '(brak)', 0),
(95, 'they were talking to each other', 'rozmawiali ze sobą', '(brak)', 0),
(96, 'in the middle of the...', 'na środku..., w środku... (czegoś tam)', '(brak)', 0),
(97, 'better view', 'lepszy widok', '(brak)', 0),
(98, 'miss the chance of seeing somebady', 'przegapić szansę zobaczenia kogoś', '(brak)', 0),
(99, 'for the first time', 'po raz pierwszy', '(brak)', 0),
(100, 'it was difficult to hear', 'było trudno usłyszeć', '(brak)', 0),
(101, 'die in crash', 'zginąć w wypadku/katastrofie', '(brak)', 0),
(102, 'attack', 'atak, atakować', '(brak)', 0),
(103, 'violent', 'gwałtowny, pełen przemocy', '(brak)', 0),
(104, 'violence', 'przemoc', '(brak)', 0),
(105, 'workers threaten strikes', 'pracownicy grożą strajkami', '(brak)', 0),
(106, 'massive earthquake hits Los Angeles', 'masywne trzęsienie ziemi uderza w Los Angeles', '(brak)', 0),
(107, 'floods destroy crops', 'powodzie niszczą uprawy', '(brak)', 0),
(108, 'hostages released', 'zakładnicy zwolnieni (wypuszczeni)', '(brak)', 0),
(109, 'rebels', 'rebelianci', '(brak)', 0),
(110, 'collapse of banks', 'upadek (krach) banków', '(brak)', 0),
(111, 'damage and destroy', 'uszkodzić i zniszczyć', '(brak)', 0),
(112, 'hostages were allowed to go free', 'zakładnicy zostali puszczeni wolno', '(brak)', 0),
(113, 'serious crime', 'poważne przestępstwo', '(brak)', 0),
(114, 'disaster', 'karastrofa', '(brak)', 0),
(115, 'economic crisis affects business', 'kryzys ekonomiczny wpływa na biznes', '(brak)', 0),
(116, 'a lot of farmland is under water', 'dużo pól uprawnych jest pod wodą (zalane)', '(brak)', 0),
(117, 'people refuse to go to work', 'ludzie odmawiają pójścia do pracy', '(brak)', 0),
(118, 'begin to fight', 'zaczynać walczyć', '(brak)', 0),
(119, 'who were you with?', 'z kim byłeś?', '(brak)', 0),
(120, 'who is the story about?', 'o kim jest ta historia?', '(brak)', 0),
(121, 'what happened?', 'co się stało?', '(brak)', 0),
(122, 'why did it happen?', 'dlaczego to się stało?', '(brak)', 0),
(123, 'where did it happen?', 'gdzie to się stało?', '(brak)', 0),
(124, 'when did it happen?', 'kiedy to się stało?', '(brak)', 0),
(125, 'falsely obtain', 'fałszywie uzyskać', '(brak)', 0),
(126, 'former', 'były (np. prezydent)', '(brak)', 0),
(127, 'discover', 'odkryć', '(brak)', 0),
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
(2, 'you\'re going where?', 'wybierasz się gdzieś?', '(brak)', 0),
(3, 'mention', 'wspomnieć', '(brak)', 0),
(4, 'cope with', 'radzić sobie z', '(brak)', 0),
(5, 'unless', 'chyba że', '(brak)', 0),
(6, 'nosy', 'wścibski', '(brak)', 0),
(7, 'noisy', 'hałaśliwy, głośny', '(brak)', 0),
(8, 'flexible', 'elastyczny', '(brak)', 0),
(9, 'freedom', 'wolność', '(brak)', 0),
(10, 'beat', 'pokonać, bić, bębnić', '(brak)', 0),
(11, 'follow your lead', 'podążać twoim śladem', '(brak)', 0),
(12, 'object', 'sprzeciwiać się, obiekt', '(brak)', 0),
(13, 'arrangements', 'plany, ustalenia', '(brak)', 0),
(14, 'tend to', 'mieć skłonność do', '(brak)', 0),
(15, 'what are you two doing?', 'co wy dwoje robicie?', '(brak)', 0),
(16, 'change mind about', 'zmienić zdanie na temat', '(brak)', 0),
(17, 'to be nosy', 'być wścibskim', '(brak)', 0),
(18, 'panic', 'panika', '(brak)', 0),
(19, 'last minute arrangements', 'plany, ustalenia w ostatniej chwili', '(brak)', 0),
(20, 'if you can\'t beat them join them', 'jeśli nie możesz ich pokonać do nich dołączyć', '(brak)', 0),
(21, 'related to', 'powiązany z', '(brak)', 0),
(22, 'gossip', 'plotka', '(brak)', 0),
(23, 'compliment', 'komplement', '(brak)', 0),
(24, 'moan', 'narzekać, jęczeć', '(brak)', 0),
(25, 'boast', 'chwalić się', '(brak)', 0),
(26, 'argue', 'kłócić się', '(brak)', 0),
(27, 'warn', 'ostrzegać', '(brak)', 0),
(28, 'chat', 'pogawędzić', '(brak)', 0),
(29, 'apologise', 'przepraszać', '(brak)', 0),
(30, 'to water the plants', 'podlewać rośliny', '(brak)', 0),
(31, 'talk to somebody', 'mówić do kogoś', '(brak)', 0),
(32, 'maintain', 'utrzymanie', '(brak)', 0),
(33, 'ink', 'atrament, tusz', '(brak)', 0),
(34, 'fountain pen', 'wieczne pióro', '(brak)', 0),
(35, 'store', 'przechować', '(brak)', 0),
(36, 'handwriting', 'pismo ręczne', '(brak)', 0),
(37, 'thumb', 'kciuk', '(brak)', 0),
(38, 'thumbprint', 'odcisk kciuka', '(brak)', 0),
(39, 'digital', 'cyfrowy', '(brak)', 0),
(40, 'digital signature', 'podpis cyfrowy', '(brak)', 0),
(41, 'on demand', 'na żądanie', '(brak)', 0),
(42, 'in the long term', 'w dłuższej perspektywie', '(brak)', 0),
(43, 'claim', 'stwierdzać', '(brak)', 0),
(44, 'artificial', 'sztuczny', '(brak)', 0),
(45, 'artificial intelligence', 'sztuczna inteligencja', '(brak)', 0),
(46, 'development', 'rozwój', '(brak)', 0),
(47, 'intermediate', 'pośredni', '(brak)', 0),
(48, 'an intermediary', 'pośrednik', '(brak)', 0),
(49, 'will stop barriers', 'bariery przestaną istnieć', '(brak)', 0),
(50, 'retina', 'siatkówka oka', '(brak)', 0),
(51, 'retina scan', 'skan siatkówki oka', '(brak)', 0),
(52, 'the most straightforward way to do something', 'najprostszy sposób aby coś zrobić', '(brak)', 0),
(53, 'method of delivery', 'sposób dostawy', '(brak)', 0),
(54, 'in the near future', 'w najbliższej przyszłości', '(brak)', 0),
(55, 'in the next ten years', 'w ciągu najbliższych dziesięciu lat', '(brak)', 0),
(56, 'in a month or two', 'w ciągu miesiąca lub dwóch', '(brak)', 0),
(57, 'in the short term', 'w krótkim terminie', '(brak)', 0),
(58, 'in ten years\' time', 'w dziesięć lat', '(brak)', 0),
(59, 'shortly', 'niedługo', '(brak)', 0),
(60, 'predictions', 'przewidywania, przepowiednia, prognoza', '(brak)', 0),
(61, 'certain', 'pewny', '(brak)', 0),
(62, 'turning point', 'punkt zwrotny', '(brak)', 0),
(63, 'possible', 'możliwy', '(brak)', 0),
(64, 'work habits', 'uniform roboczy', '(brak)', 0),
(65, 'small talk', 'pogawędka', '(brak)', 0),
(66, 'against', 'przeciwko', '(brak)', 0),
(67, 'work against the clock', '\"walczyć z czasem\" (idiom)', '(brak)', 0),
(68, 'on our mind', 'w naszych myślach', '(brak)', 0),
(69, 'it\'s not my cup of tea', '\"to nie w moim stylu\" (idiom)', '(brak)', 0),
(70, 'close to my heart', 'bliższy memu sercu', '(brak)', 0),
(71, 'be in hot water', '\"mieć kłopoty\" (idiom)', '(brak)', 0),
(72, 'put my foot in it', '\"strzelić gafę\" (idiom)', '(brak)', 0),
(73, 'running out of time', '\"kończy się czas\" (idiom)', '(brak)', 0),
(74, 'keep an eye on', 'mieć na kogoś oko', '(brak)', 0),
(75, 'give a hand', 'podać pomocną dłoń, pomóc', '(brak)', 0),
(76, 'a piece of cake', '\"bułka z masłem\" (idiom)', '(brak)', 0),
(77, 'dark horse', 'czarny koń', '(brak)', 0),
(78, 'the rat race', 'wyścig szczurów', '(brak)', 0),
(79, 'award', 'nagroda, wyróżnienie', '(brak)', 0),
(80, 'celebrate', 'świętować, obchodzić', '(brak)', 0),
(81, 'misunderstanding', 'nieporozumienie', '(brak)', 0),
(82, 'confirm', 'potwierdzić', '(brak)', 0),
(83, 'host', 'gospodarz', '(brak)', 0),
(84, 'generous', 'hojny', '(brak)', 0),
(85, 'recognise', 'rozpoznawać', '(brak)', 0),
(86, 'generous', 'hojny, szczodry', '(brak)', 0),
(87, 'at the table', 'przy stole', '(brak)', 0),
(88, 'the thousand dollars', 'tysiąc dolarów', '(brak)', 0),
(89, 'do you mean', 'masz na myśli', '(brak)', 0),
(90, 'again', 'ponownie, znowu', '(brak)', 0),
(91, 'I didn\'t catch any of that.', 'Nie załapałem nic z tego.', '(brak)', 0),
(92, 'You\'ve lost me.', '\"Pogubiłeś się w tym co mówię\" {idiom używany podczas dialogu gdy ktoś przestał nadąrzać za tym co mówisz}', 'Other words: You can\'t follow what i\'m saying?', 0),
(93, 'I\'ve lost you.', '\"Pogubiłem się w tym co mówisz\" {idiom używany podczas dialogu gdy przestałeś nadąrzać za tym co ktoś mówi}', 'Other words:I can\'t follow what you\'re saying.', 0),
(94, 'Could you repeat that?', 'Mógłbyś to powtórzyć?', '(brak)', 0),
(95, 'Can you say that again?', 'Czy możesz powiedzieć to poownie?', '(brak)', 0),
(96, 'What exactly do you mean?', 'Co dokładnie masz na myśli?', '(brak)', 0),
(97, 'I don\'t get what you\'re saying', 'Nie łapie co mówisz.', '(brak)', 0),
(98, 'I mean...', 'To znaczy...', '(brak)', 0),
(99, 'What does it mean?', 'Co to znaczy/oznacza?', '(brak)', 0),
(100, 'Do you mean to tell me...?', 'Chcesz mi przez to powiedzieć...?', '(brak)', 0),
(101, 'In other words...', 'Innymi słowy...', '(brak)', 0),
(102, 'other', 'inny', '(brak)', 0),
(103, 'break the ice', '\"przełamać lody\" (idiom)', 'Everyone was nervous, so Jackie told a few jokes to break the ice.', 0),
(104, 'learn something by heart', '\"uczyć się na pamięć\" (idiom)', 'Tomorrow there\'s a test on this poem. I have to learn it by heart.', 0),
(105, 'go window shopping', '\"iść na spacer z oglądaniem wystaw sklepowych {nie mieć w zamiarze niczego kupić} \" (idiom)', 'I\'ve got no money at the moment but we can go window shopping if you want.', 0),
(106, 'travel light', '\"podróżować z niewielkim bagażem\" (idiom)', 'He always travels light. He only takes one suitcase even for long trips.', 0),
(107, 'let your hair down', '\"pójść w tango\" (idiom)', 'You\'ve been working non-stop. Why don\'t you go out and let your hair down?', 0),
(108, 'be in two minds', '\"wahać się\" (idiom)', 'I\'m in two minds. I don\'t know if I want the black one or the red one.', 0),
(109, 'arrange', 'zorganizować', '(brak)', 0);

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
(1, 'entrepreneur', 'przedsiębiorca', '(brak)', 0),
(2, 'effort', 'wysiłek', '(brak)', 0),
(3, 'qualities', 'cechy', '(brak)', 0),
(4, 'quality', 'jakość', '(brak)', 0),
(5, 'manage', 'pokierować czymś, kimś', '(brak)', 0),
(6, 'express', 'wyraźić, okazać', '(brak)', 0),
(7, 'remember', 'przypominać sobie', '(brak)', 0),
(8, 'remind', 'przypominać komuś', '(brak)', 0),
(9, 'forget', 'zapomnieć', '(brak)', 0),
(10, 'leave', 'zostawić', '(brak)', 0),
(11, 'hear', 'słyszeć, usłyszeć', '(brak)', 0),
(12, 'listen', 'słuchać, posłuchać', '(brak)', 0),
(13, 'I wasn\'t listening.', 'Nie słuchałem.', '(brak)', 0),
(14, 'I wasn\'t hearing.', 'Nie usłyszałem.', '(brak)', 0),
(15, 'fun', 'zabawa, uciecha', '(brak)', 0),
(16, 'funny', 'zabawny, śmieszny', '(brak)', 0),
(17, 'borrow from', 'pożyczyć od', '(brak)', 0),
(18, 'lend to', 'pożyczać komuś', '(brak)', 0),
(19, 'miss', 'przegapić, tęskić', '(brak)', 0),
(20, 'lose', 'stracić, przegrać', '(brak)', 0),
(21, 'critic', 'krytyk', '(brak)', 0),
(22, 'winemaker', 'winiarz (osoba robiąca wino)', '(brak)', 0),
(23, 'paradise', 'raj', '(brak)', 0),
(24, 'willing', 'skłonny, chętny', '(brak)', 0),
(25, 'snorkel', 'nurkowanie z rurką', '(brak)', 0),
(26, 'dive', 'nurkować głębinowo', '(brak)', 0),
(27, 'duty', 'obowiązek, cło', '(brak)', 0),
(28, 'diary', 'pamiętnik, dziennik', '(brak)', 0),
(29, 'covering letter', 'list motywacyjny', '(brak)', 0),
(30, 'apprentice', 'praktykant, uczeń', '(brak)', 0),
(31, 'compete', 'rywalizować, konkurować', '(brak)', 0),
(32, 'compete for a job', 'konkurować o pracę', '(brak)', 0),
(33, 'hell', 'piekło', '(brak)', 0),
(34, 'bloody hell', 'jasna cholera (można używać zamiennie z k... mać ;)', '(brak)', 0),
(35, 'get fired', 'zostać zwolnionym', '(brak)', 0),
(36, 'empire', 'imperium', '(brak)', 0),
(37, 'kingdom', 'królestwo', '(brak)', 0),
(38, 'review', 'recenzja', '(brak)', 0),
(39, 'survey', 'badanie, przegląd', '(brak)', 0),
(40, 'contest = competition', 'konkurs', '(brak)', 0),
(41, 'be not easy to please', 'być trudnym do zadowolenia', '(brak)', 0),
(42, 'either', 'albo', '(brak)', 0),
(43, 'from my point of view', 'z mojego punktu widzenia', '(brak)', 0),
(44, 'Have you got what it takes?', 'Czy masz to czego potrzeba?', 'Have you got what it takes to be a millionaire?', 0),
(45, 'moderately', 'umiarkowanie', '(brak)', 0),
(46, 'spender', '\"rozrzutnik pieniędzy\"', '(brak)', 0),
(47, 'effort', 'wysiłek', '(brak)', 0),
(48, 'competitive', 'konkurencyjny', '(brak)', 0),
(49, 'indecisive', 'niezdecydowany', '(brak)', 0),
(50, 'decided', 'zdecydowany', '(brak)', 0),
(51, 'think outside the box', 'myśleć poza schematem', '(brak)', 0),
(52, 'risk', 'ryzyko', '(brak)', 0),
(53, 'motivate', 'motywować', '(brak)', 0),
(54, 'work with a lot of effort', 'pracować w dużym wysiłku', '(brak)', 0),
(55, 'have problems making decision', 'mieć problemy w podejmowaniu decyzji', '(brak)', 0),
(56, 'think differently or in a new way', 'myśleć inaczej lub w nowy sposób', '(brak)', 0),
(57, 'want to be more successful than others', 'chcieć być bardziej skutecznym niż inni', '(brak)', 0),
(58, 'want to achieve something', 'chcieć coś osiągnąć', '(brak)', 0),
(59, 'a risk taker', 'osoba podejmująca ryzyko', '(brak)', 0),
(60, 'to be rejected', 'być odrzuconym', '(brak)', 0),
(61, 'reject', 'odrzucać', '(brak)', 0),
(62, 'miserable', 'beznadziejny', '(brak)', 0),
(63, 'in stock', 'w magazynie, na stanie', '(brak)', 0),
(64, 'particular', 'konkretny, szczególny', '(brak)', 0),
(65, 'put on a lot of weight', 'przybrać dużo na wadze', '(brak)', 0),
(66, 'wonderful', 'wspaniały, cudowny', '(brak)', 0),
(67, 'brilliant', 'znakomity', '(brak)', 0),
(68, 'awful', 'okropny', '(brak)', 0),
(69, 'enormous', 'ogromny', '(brak)', 0),
(70, 'exhaust', 'wyczerpać, wydechowy', '(brak)', 0),
(71, 'boiling', 'wrzenie', '(brak)', 0),
(72, 'freezing', 'lodowaty', '(brak)', 0),
(73, 'delicious', 'pyszne', '(brak)', 0),
(74, 'furious', 'wściekły', '(brak)', 0),
(75, 'impossible', 'niemożliwe', '(brak)', 0),
(76, 'crew', 'załoga, ekipa', '(brak)', 0),
(77, 'blast off', 'wystrzelić, odpalić', 'Blast off into space.', 0),
(78, 'a jar', 'słoik', '(brak)', 0),
(79, 'regarding', 'w sprawie', '(brak)', 0),
(80, 'I am writing to you regarding your advertisement for... with i saw on...', 'Piszę do Ciebie w sprawie Twojego ogłoszenia dla... które widziałem na...', '(brak)', 0),
(81, 'I would like to submit an application for the post.', 'Chciałbym złożyć wniosek do urzędu.', '(brak)', 0),
(82, 'submit', 'zgłaszać', '(brak)', 0),
(83, 'Please find my CV attached.', 'Proszę znaleźć moje CV w załączeniu.', '(brak)', 0),
(84, 'I believe that I meet all the requirements you outline in your advertisement.', 'Wieżę, że spełniam wszystkie wymagania które zaznaczyliście w ogłoszeniu.', '(brak)', 0),
(85, 'advertisement', 'reklama, ogłoszenie', '(brak)', 0),
(86, 'requirements', 'wymagania', '(brak)', 0),
(87, 'outline', 'zarys, kontur, szkic', '(brak)', 0),
(88, 'I had hands-on experience of...', 'Mam praktyczne doświadczenie w...', '(brak)', 0),
(89, 'experience', 'doświadczenie', '(brak)', 0),
(90, 'prove', 'udowodnić', '(brak)', 0),
(91, 'proven ability in...', 'Sprawdzona zdolność w...', '(brak)', 0),
(92, 'ability', 'zdolność', '(brak)', 0),
(93, 'require', 'wymagać', '(brak)', 0),
(94, 'If you require any further information, or would like to arrange an interview, please call me on...', 'Jeśli potrzebujesz dodatkowych informacji, lub chcesz umówić się na spotkanie, proszę zadzwonić do mnie na ...', '(brak)', 0),
(95, 'I look forward to hearing from you at your earliest convenience.', 'Czekam na kontakt z Państwem jak najszybciej.', '(brak)', 0),
(96, 'how earliest convenience', 'jak najszybciej', '(brak)', 0),
(97, 'caretaker', 'dozorca, stróż', '(brak)', 0),
(98, 'protector', 'opiekun', '(brak)', 0),
(99, 'Yours sincerely', 'Z poważaniem', '(brak)', 0),
(100, 'interview', 'rozmowa kwalifikacyjna, wywiad', '(brak)', 0),
(101, 'appointment, meeting', 'spotkanie', '(brak)', 0),
(102, 'fired', 'zwolniony', '(brak)', 0),
(103, 'Set up a catering company', 'Założyć firmę cateringową', '(brak)', 0),
(104, 'mediterranean', 'śródziemnomorski', '(brak)', 0),
(105, 'reaching agreement', 'osiągnięcie porozumienia', '(brak)', 0),
(106, 'What about...?', 'Co powiesz na...?', '(brak)', 0),
(107, 'I suggest we focus on...', 'Proponuję skupić się na...', '(brak)', 0),
(108, 'currently', 'aktualnie, obecnie, bieżąco', '(brak)', 0),
(109, 'actually', 'faktycznie, rzeczywiście', '(brak)', 0),
(110, 'career', 'kariera', '(brak)', 0),
(111, 'course', 'kurs, przebieg,', '(brak)', 0),
(112, 'direction', 'kierunek', '(brak)', 0),
(113, 'argument', 'spór, argument', '(brak)', 0),
(114, 'discussion', 'dyskusja', '(brak)', 0),
(115, 'reliable', 'niezawodny', '(brak)', 0),
(116, 'sensible', 'rozsądny, sensowny', '(brak)', 0),
(117, 'easy-going', '\"luzak\"', '(brak)', 0),
(118, 'aggressive', 'agresywny, napastliwy', '(brak)', 0),
(119, 'clever', 'sprytny', '(brak)', 0),
(120, 'bright', 'jasny, bystry', '(brak)', 0),
(121, 'honest', 'uczciwy, szczery', '(brak)', 0),
(122, 'lazy', 'leniwy', '(brak)', 0),
(123, 'punctual', 'punktualny', '(brak)', 0),
(124, 'moody', 'humorzasty, nastrojowy', '(brak)', 0),
(125, 'independent', 'niezależny', '(brak)', 0),
(126, 'I\'m impressed', 'Jestem pod wrażeniem', '(brak)', 0);

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
(2, 'electricity', 'elektryczność', '(brak)', 1),
(3, 'nuclear power', 'energia nulkearna', '(brak)', 1),
(4, 'antibiotics', 'antybiotyki', '(brak)', 1),
(5, 'vaccinations', 'szczepienia', '(brak)', 1),
(6, 'computer networks', 'sieci komputerowe', '(brak)', 1),
(7, 'motorbikes', 'motocykle', '(brak)', 1),
(8, 'genetic engineering', 'inżynieria genetyczna', '(brak)', 1),
(9, 'washing machine', 'pralka', '(brak)', 1),
(10, 'vacuum cleaner', 'odkurzacz', '(brak)', 1),
(11, 'space travel', 'podróż kosmiczna', '(brak)', 1),
(12, 'commercial aeroplanes', 'samoloty komercyjne', '(brak)', 1),
(13, 'solar power', 'energia słoneczna', '(brak)', 1),
(14, 'communications satellites', 'satelity telekomunikacyjne', '(brak)', 1),
(15, 'plug it in', 'włączać to do kontaktu (do prądu)', '(brak)', 1),
(16, 'press the button', 'nacisnąć przycisk', '(brak)', 1),
(17, 'have an injection', 'mieć zastrzyk', '(brak)', 1),
(18, 'have an operation', 'mieć operację', '(brak)', 1),
(19, 'run out of petrol', 'zabraknąć benzyny', '(brak)', 1),
(20, 'break down', 'zepsuć się', '(brak)', 1),
(21, 'get a connection', 'uzyskać połączenie', '(brak)', 1),
(22, 'restart / reboot the computer', 'zresrartować komputer', '(brak)', 1),
(23, 'do an experiment', 'robić eksperyment', '(brak)', 1),
(24, 'switch it on / switch it off', 'włączyć to / wyłączyć to', 'switch the light on - włącz światłoswitch the light off - wyłącz światło', 1),
(25, 'influential', 'wpływowy', '(brak)', 1),
(26, 'advance, progress', 'postęp', '(brak)', 1),
(27, 'at the beginning of the twentieth century', 'na początku 20 wieku', '(brak)', 1),
(28, 'affordable', 'niedrogi, przystępny cenowo', '(brak)', 1),
(29, 'shrink', 'kurczyć się', '(brak)', 1),
(30, 'for the first time in history,', 'po raz pierwszy w historii', '(brak)', 1),
(31, 'somewhere', 'gdzieś', '(brak)', 1),
(32, 'anywhere', 'gdziekolwiek', '(brak)', 1),
(33, 'introduce', 'wprowadzać', '(brak)', 1),
(34, 'fabric', 'materiał, tkanina', '(brak)', 1),
(35, 'nylon', 'nylon, nylonowy', '(brak)', 1),
(36, 'allow', 'pozwolić komuś na coś', '(brak)', 1),
(37, 'travel further away from home', 'podróżować dalej od domu', '(brak)', 1),
(38, 'amplifier', 'wzmacniacz', '(brak)', 1),
(39, 'rock music', 'muzyka rockowa', '(brak)', 1),
(40, 'electric guitar', 'gitara elektryczna', '(brak)', 1),
(41, 'a lot / much / far more', 'gdy chcemy powiedzieć, że coś jest dużo bardziej lub znacznie bardziej \"jakieś\" (np. piękniejsze, bardziej słoneczne)', 'I\'m a lot fatter than Sue.Kate is much more beautiful than Mary.The journey took far more longer than we expected.', 1),
(42, 'a little / a little bit / slighty', 'trochę, troszeczkę - gdy chcemy powiedzieć, że coś jest tylko trochę bardziej \"jakieś\" (np. piękniejsze, bardziej słoneczne)', 'She is a little older than he.My car is a little bit more comfortable than yours.', 1),
(43, 'by far', 'jak dotąd', 'by far + st. najwyższy przymiotnikaIt\'s by far the best pizza I have ever eaten.', 1),
(44, 'one of', 'jeden z', 'one of + st. najwyższy przymiotnika + rzeczownikIt\'s one of the tallest mountains I have ever climbed.', 1),
(45, 'advantage', 'zaleta', '(brak)', 1),
(46, 'disadvantage', 'wada', '(brak)', 1),
(47, 'however,', 'jednak', '(brak)', 1),
(48, 'one of the main advantages', 'jedną z głównych zalet', '(brak)', 1),
(49, 'in addition to this,', 'w dodatku do tego, oprócz tego', '(brak)', 1),
(50, 'on the other hand,', 'z drugiej strony, z innej strony', '(brak)', 1),
(51, 'another disadvantage', 'inną wadą, kolejną wadą', 'another disadvantage of modern technology is...', 1),
(52, 'in my opinion', 'moim zdaniem', '(brak)', 1),
(53, 'the problem is that', 'problemem jest to, że', '(brak)', 1),
(54, 'benefit', 'korzyść, pożytek', '(brak)', 1),
(55, 'harmful', 'szkodliwy', '(brak)', 1),
(56, 'conclusion', 'wniosek', '(brak)', 1),
(57, 'introduction', 'wstęp', '(brak)', 1),
(58, 'the most important advantage is', 'najważniejszą zaletą jest', '(brak)', 1),
(59, 'the main disadvantage is', 'główną wadą jest', '(brak)', 1),
(60, 'although,', 'chociaż, aczkolwiek', '(brak)', 1),
(61, 'as well as that,', 'oprócz tego', '(brak)', 1),
(62, 'and another thing,', 'i kolejną rzeczą...', '(brak)', 1),
(63, 'In general,', 'ogólnie rzecz biorąc (generalnie)', '(brak)', 1),
(64, 'as far as I\'m concerned', 'o ile mi wiadomo, jeśli o mnie chodzi to jestem przekonany', '(brak)', 1),
(65, 'tidal wave', 'pływowa fala', '(brak)', 1),
(66, 'nightmare', 'koszmar', '(brak)', 1),
(67, 'wrestler', 'zapaśnik', '(brak)', 1),
(68, 'wasp', 'osa', '(brak)', 1),
(69, 'prove', 'udowodnić', '(brak)', 1),
(70, 'exactly the same as', 'dokładnie tak samo jak', '(brak)', 1),
(71, 'very similar to', 'bardzo podobny do', '(brak)', 1),
(72, 'he\'s not as tall as...', 'on nie jest tak wysoki jak...', '(brak)', 1),
(73, 'question', 'pytanie; kwestionować', '(brak)', 1),
(74, 'wonder', 'cud; zastanawiać się', '(brak)', 1),
(75, 'discuss', 'dyskutować', '(brak)', 1),
(76, 'debate', 'debata; debatować', '(brak)', 1),
(77, 'responde, reply', 'odpowiadać (np. na list)', '(brak)', 1),
(78, 'answer, reply, response', 'odpowiedź', '(brak)', 1),
(79, 'research', 'badania; prowadzić prace badawcze', '(brak)', 1),
(80, 'investigate', 'prowadzić dochodzenie', '(brak)', 1),
(81, 'inquire, ask', 'zapytać', '(brak)', 1),
(82, 'look into', 'przyjrzeć się czemuś', '(brak)', 1),
(83, 'thesis', 'praca dyplomowa', '(brak)', 1),
(84, 'death penalty', 'kara śmierci', '(brak)', 1),
(85, 'round windows', 'okrągłe okna', '(brak)', 1),
(86, 'inquiry', 'zapytanie', '(brak)', 1),
(87, 'we ran out of coffee', 'skończyła nam się kawa', '(brak)', 1),
(88, 'jellyfish', 'meduza', '(brak)', 1),
(89, 'doughnut', 'pączek', '(brak)', 1),
(90, 'break up', 'rozpaść się', '(brak)', 1),
(91, 'over a volcano', 'nad wulkanem', '(brak)', 1),
(92, 'number of hairs on a head', 'liczba włosów na głowie', '(brak)', 1),
(93, 'mess / messy', 'bałagan / bałaganiarski', '(brak)', 1),
(94, 'hair / hairy', 'włosy / owłosiony', '(brak)', 1),
(95, 'redponse / responsible', 'odpowiedź / odpowiedzialny', '(brak)', 1),
(96, 'love / lovable', 'miłość / kochaniutki, miły', '(brak)', 1),
(97, 'profit / profitable', 'zysk / zyskowny, dochodowy', '(brak)', 1),
(98, 'thank / thankful', 'dziękować / wdzięczny', '(brak)', 1),
(99, 'pain / painful', 'ból / bolesny', '(brak)', 1),
(100, 'peace / peaceful', 'pokój (spokój) / pokojowy (spokojny)', '(brak)', 1),
(101, 'explosion / explosive', 'wybuch, eksplozja / wybuchowy', '(brak)', 1),
(102, 'creativity / creative', 'kreatywność / kreatywny', '(brak)', 1),
(103, 'effect / effective', 'skutek (efekt) / skuteczny', '(brak)', 1),
(104, 'use / useless / useful', 'użytek / bezużyteczny / użyteczny', '(brak)', 1),
(105, 'home / homeless', 'dom / bezdomny', '(brak)', 1),
(106, 'hope / hopeless', 'nadzieja / beznadziejny', '(brak)', 1),
(107, 'biology / biological', 'biologia / biologiczny', '(brak)', 1),
(108, 'poet / poetic', 'poeta / poetycki', '(brak)', 1),
(109, 'value / valuable', 'wartość / wartościowy', '(brak)', 1),
(110, 'ease / easy', 'łatwość / łatwy', '(brak)', 1),
(111, 'even', 'nawet', '(brak)', 1),
(112, 'educate / education', 'kształcić / edukacja', '(brak)', 1),
(113, 'relax / relaxation', 'relaksować się / relaks', '(brak)', 1),
(114, 'imagine / imagination', 'wyobrazić / wyobraźnia', '(brak)', 1),
(115, 'immigrate / immigration', 'imigrować / imigracja', '(brak)', 1),
(116, 'pollute / pollution', 'zanieczyścić / zanieczyszczenie', '(brak)', 1),
(117, 'instruct / instruction', 'instruować / instrukcja', '(brak)', 1),
(118, 'depress / depression', 'deprymować, przygnębiać / depresja', '(brak)', 1),
(119, 'compete / competition', 'rywalizować / konkurs', '(brak)', 1),
(120, 'entertiain / entertainment', 'zabawiać / rozrywka', '(brak)', 1),
(121, 'improve / improvement', 'poprawiać, ulepszać / poprawa, ulepszenie', '(brak)', 1),
(122, 'employ / employment', 'zatrudniać / zatrudnienie', '(brak)', 1),
(123, 'agree / agreement', 'zgodzić się / umowa', '(brak)', 1),
(124, 'run / running', 'biegać / bieganie', '(brak)', 1),
(125, 'smoke / smoking', 'palić / palenie (papierosy)', '(brak)', 1),
(126, 'laugh / laughing', 'śmiać się / roześmiany', '(brak)', 1),
(127, 'eat / eating', 'jeść / zjadanie', '(brak)', 1),
(128, 'weak / weakness', 'słaby / słabość', '(brak)', 1),
(129, 'lonely / loneliness', 'samotny / samotność', '(brak)', 1),
(130, 'happy / happiness', 'szczęśliwy / szczęście', '(brak)', 1),
(131, 'kind / kindness', 'uprzejmy / uprzejmość', '(brak)', 1),
(132, 'stupid / stupidity', 'głupi / głupota', '(brak)', 1),
(133, 'sensitive / sensitivity', 'wrażliwy / wrażliwość', '(brak)', 1),
(134, 'responsible / responsibility', 'odpowiedzialny / odpowiedzialność', '(brak)', 1),
(135, 'it\'s broken down', 'to się zepsuło', '(brak)', 1),
(136, 'it needs recharging', 'to potrzebuje ponownego załadowania', '(brak)', 1),
(137, 'it\'s out of order', 'to nie jest w porządku', '(brak)', 1),
(138, 'it needs fixing', 'trzeba to naprawić, to potrzebuje naprawy', '(brak)', 1),
(139, 'there is no reception', 'nie ma zasięgu', '(brak)', 1),
(140, 'try switching it off', 'spróbuj wyłączenia tego', '(brak)', 1),
(141, 'it keeps making this strange noise', 'to wydaje dziwny dźwięk', '(brak)', 1),
(142, 'it\'s crashed', 'to jest rozbite (po wypadku)', '(brak)', 1),
(143, 'it\'s frozen', 'zawiesił się', '(brak)', 1),
(144, 'it doesn\'t work', 'to nie działa', '(brak)', 1),
(145, 'we have to sort it out', 'musimy to rozwiązać', '(brak)', 1),
(146, 'save it onto a memory stick', 'zapisać to na pamięci (np. pendrive)', '(brak)', 1),
(147, 'shall I print it for you?', 'czy wydrukować to dla ciebie?', '(brak)', 1),
(148, 'try to solve the problem', 'próbować rozwiązać problem', '(brak)', 1),
(149, 'shout at colleagues', 'krzyczeć na kolegów', '(brak)', 1),
(150, 'hit the PC', 'uderzać w komputer', '(brak)', 1),
(151, 'throw parts of the computer', 'rzucać częściami komputerowymi', '(brak)', 1),
(152, 'frustration', 'frustracja', '(brak)', 1),
(153, 'anger', 'złość, gniew', '(brak)', 1),
(154, 'could you hold the line, please?', 'mógłbyś poczekać na lini, proszę?', '(brak)', 1),
(155, 'coulg you give me a refund?', 'mógłbyś mi zwrócić pieniądze', '(brak)', 1),
(156, 'could you tell me who I should speak to?', 'mógłbyś mi powiedzieć z kim powinienem rozmawiać?', '(brak)', 1),
(157, 'could you tell me what the problem is?', 'mógłbyś mi powiedzieć jaki jest problem?', '(brak)', 1),
(158, 'do you know what the problem is?', 'wiesz w czym problem?', '(brak)', 1),
(159, 'would you mind booking us a table?', 'czy miałbyś coś przeciwko żebyś zarezerwował nam stolik?', '(brak)', 1),
(160, 'would you mind coming a little bit earlier?', 'czy miałbyś coś przeciwko żebyś przyszedł trochę wcześniej?', '(brak)', 1),
(161, 'could you tell me what time it is?', 'mógłbyś mi powiedzieć która jest godzina?', '(brak)', 1),
(162, 'do you know how to get there?', 'czy wiesz jak się tam dostać?', '(brak)', 1),
(163, 'do you know what time the shops open?', 'czy wiesz o której otwierają sklepy?', '(brak)', 1);

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
(2, 'anger', 'złość', '(brak)', 0),
(3, 'distress', 'ból, cierpienie', '(brak)', 0),
(4, 'joy', 'radość', '(brak)', 0),
(5, 'surprise', 'niespodzianka, zaskoczenie', '(brak)', 0),
(6, 'disgust', 'obrzydzenie', '(brak)', 0),
(7, 'annoy / annoyed / annoying', 'irytować / zirytowany / irytujący', '(brak)', 0),
(8, 'relaxed / relaxing', 'zrelaksowany / relaksujący', '(brak)', 0),
(9, 'bored / boring', 'znudzony / nudny', '(brak)', 0),
(10, 'frightened / frightening', 'przerażony / przerażający', '(brak)', 0),
(11, 'worried / worrying', 'zmartwiony / niepokojący', '(brak)', 0),
(12, 'embarrassed / embarrassing', 'zakłopotany, zażenowany / żenujący', '(brak)', 0),
(13, 'exhausted / exhausting', 'wyczerpany / wyczerpujący', '(brak)', 0),
(14, 'confused / confusing', 'zmieszany / mylący', '(brak)', 0),
(15, 'shocked / shocking', 'zszokowany / szokujący', '(brak)', 0),
(16, 'satisfied / satisfying', 'zadowolony / satysfakcjonujący', '(brak)', 0),
(17, 'do you find your job satisfying?', 'czy uważasz swoją pracę za satysfakcjonującą?', '(brak)', 0),
(18, 'cause = prompt', 'powodować', '(brak)', 0),
(19, 'induce = evoke', 'wywołać', '(brak)', 0),
(20, 'rotten', 'zepsute (o jedzeniu)', '(brak)', 0),
(21, 'excited / exciting', 'podekscytowany / ekscytujący', '(brak)', 0),
(22, 'terrified / terrifing', 'przerażony / przerażający', '(brak)', 0),
(23, 'astonished / astonishing', 'zdumiony / zdumiewający', '(brak)', 0),
(24, 'tiring / tired', 'męczący / zmęczony', '(brak)', 0),
(25, 'laughter therapy', 'terapia śmiechu', '(brak)', 0),
(26, 'click on', 'kliknąć', '(brak)', 0),
(27, 'try on', 'przymierzyć', '(brak)', 0),
(28, 'get on', 'dogadywać się z kimś', '(brak)', 0),
(29, 'go off', 'zerwać znajomość', '(brak)', 0),
(30, 'take off', 'zdjąć', '(brak)', 0),
(31, 'log off', 'wylogować się', '(brak)', 0),
(32, 'chat sb up', 'zagadać do kogoś', '(brak)', 0),
(33, 'scroll up', 'przewijać', '(brak)', 0),
(34, 'dress down', 'ubrać się nieodpowiednio', '(brak)', 0),
(35, 'calm life', 'spokojne życie', '(brak)', 0),
(36, 'settle down', 'ustatkować się', '(brak)', 0),
(37, 'shut down', 'wyłączyć', '(brak)', 0),
(38, 'cut off', 'odciąć, uciąć', '(brak)', 0),
(39, 'call off', 'odwołać', '(brak)', 0),
(40, 'put off', 'odkładać, odwlekać, przełożyć', '(brak)', 0),
(41, 'check out', 'sprawdzić (także wymeldować)', '(brak)', 0),
(42, 'stand out', 'wyróżniać się', '(brak)', 0),
(43, 'work out', 'wymyślić, rozpracować, rozgryźć', '(brak)', 0),
(44, 'look after', 'opiekować, zadbać, pilnować', '(brak)', 0),
(45, 'take after', 'przypominać, być podobnym', '(brak)', 0),
(46, 'fill in', 'wypełnić, uzupełnić', '(brak)', 0),
(47, 'let ... in', 'wpuścić, wpuszczać', '(brak)', 0),
(48, 'persuade', 'przekonać, namówić', '(brak)', 0),
(49, 'dress up', 'wystroić', '(brak)', 0),
(50, 'raise money', 'kwestować, zbierać pieniądze', '(brak)', 0),
(51, 'hold a sale', 'robić wyprzedaż', '(brak)', 0),
(52, 'do experiments', 'robić eksperymenty', '(brak)', 0),
(53, 'get a seat / take a seat', 'usiąść', '(brak)', 0),
(54, 'jump a queue', 'wpychać się w kolejkę', '(brak)', 0),
(55, 'cut hair', 'obcinać włosy', '(brak)', 0),
(56, 'watch a programme', 'oglądać program', '(brak)', 0),
(57, 'obtain', 'uzyskać', '(brak)', 0),
(58, 'involve', 'angażować', '(brak)', 0),
(59, 'think creatively', 'myśleć kreatywnie', '(brak)', 0),
(60, 'get someone to do you a favour', 'sprawić by ktoś wyświadczył ci przysługę', '(brak)', 0),
(61, 'bargain', 'okazja, promocja', '(brak)', 0),
(62, 'instead', 'natomiast, za to, w zamian', '(brak)', 0),
(63, 'ask for a favour', 'poprosić o przysługę', '(brak)', 0),
(64, 'pass yours exams', 'zdać twoje egzaminy', '(brak)', 0),
(65, 'get a place at university', 'dostać się na uniwersytet', '(brak)', 0),
(66, 'get engaged /get married', 'zaręczyć się / pobrać się', '(brak)', 0),
(67, 'lose your job, money', 'stracić pracę, pieniądze', '(brak)', 0),
(68, 'fail a test', 'oblać test', '(brak)', 0),
(69, 'win a competition, match', 'wygrać zawody, mecz', '(brak)', 0),
(70, 'get promoted', 'awansować, dostać awans', '(brak)', 0),
(71, 'get a degree', 'uzyskać tytuł naukowy', '(brak)', 0),
(72, 'give a reason', 'podać powód', '(brak)', 0),
(73, 'tone of voice', 'ton głosu', '(brak)', 0),
(74, 'prepare your listener', 'przygotuj swojego słuchacza', '(brak)', 0),
(75, 'making people too upset', 'zbytnie martwienie ludzi', '(brak)', 0),
(76, 'give someone good / bad news', 'przekazać komuś dobrą / złą wiadomość', '(brak)', 0),
(77, 'arrangement', 'układ, porozumienie', '(brak)', 0),
(78, 'I\'ve got some good news for you.', 'mam dobrą wiadomość dla ciebie', '(brak)', 0),
(79, 'I\'m really pleased to tell you...', 'Jestem naprawdę zadowolony żeby ci powiedzieć...', '(brak)', 0),
(80, 'Bad news, I\'m afraid.', 'Złe wieści, obawiam się.', NULL, 0),
(81, 'I\'m sorry to have to tell you, but', 'Przykro mi, że muszę ci powiedzieć, ale', '(brak)', 0),
(82, 'I\'m afraid I\'ve got some bad news', 'Obawiam się, że mam złą wiadomość', '(brak)', 0),
(83, 'There\'s something I\'ve got to tell you', 'Jest coś co mam ci do powiedzenia', '(brak)', 0),
(84, 'We\'ve got something to tell you', 'Mamy ci coś do powiedzenia', '(brak)', 0),
(85, 'Congratulations!', 'Gratulacje!', '(brak)', 0),
(86, 'That\'s a shame.', 'Jaka szkoda.', '(brak)', 0),
(87, 'You\'re joking?', 'Żartujesz?', '(brak)', 0),
(88, 'You lucky thing.', 'Ty szczęściarzu.', '(brak)', 0),
(89, 'That\'s terrible', 'To okropne', '(brak)', 0),
(90, 'Well done!', 'Dobra robota!', '(brak)', 0),
(91, 'I\'m so pleased for you.', 'Jestem z ciebie bardzo zadowolony.', '(brak)', 0),
(92, 'I\'m really sorry to hear that.', 'Naprawdę przyro mi to słyszeć.', '(brak)', 0),
(93, 'That\'s really annoying.', 'To jest naprawdę denerwujące.', '(brak)', 0),
(94, 'exaggerate', 'wyolbrzymiać', '(brak)', 0);

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
(1, 'get on well with', 'dobrze dogadywać się z sb', 'I get on well with my neighbour', 0),
(2, 'mind my own business', 'zajmować się własnymi sprawami', 'I prefer to mind my own business so I don\'t ask the neighbours personal question.', 0),
(3, 'over for coffee', 'na kawę', 'I sometimes invite my neighbour over for coffee', 0),
(4, 'nuisance', 'uciążliwy', 'My neighbour\'s dog is a nuisance - he\'s always barking early in the morning (zawsze szczeka wcześnie rano)', 0),
(5, 'get to know', 'poznać', 'We didn\'t get to know our neighbours for years.', 0),
(6, 'disturb', 'przeszkadzać, zaburzać, niepokoić', 'My neighbour has pets but they never disturb me', 0),
(7, 'get on my nerves', 'działają mi na nerwy', 'My neighbours get on my nerves - he\'s always complaining', 0),
(8, 'we made friends', 'staliśmy się przyjaciółmi', 'We made friends with our neighbours immediately. (natychmiast)', 0),
(9, 'I like to keep myself to myself', 'lubię być sobą', 'I like to keep myself to myself so my neighbours hasn\'t been in my house. (kiedy moich sąsiadów nie ma w domu)', 0),
(10, 'be quite noisy', 'być dość hałaśliwym', 'I can be quite noisy so I often ask my neighbors about their lives.', 0),
(11, 'put your feet up', 'możesz odpocząć, wyciągnąć nogi', 'You can sit on this chair.', 0),
(12, 'make yourself at home', 'możesz poczuć się jak u siebie w domu', 'Please you can make oneself at your home.', 0),
(13, 'be my guest', 'poczuj się moim gościem', 'I can expose you permission to use it.', 0),
(14, 'have a seat', 'możesz usiąść', 'Let is just sit down and relax.', 0),
(15, 'help yourself', 'częstuj się', 'I will prepare something to food if you want.', 0);

--
-- Indeksy dla zrzutów tabel
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
