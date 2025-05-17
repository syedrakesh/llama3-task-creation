-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2025 at 06:38 AM
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
-- Database: `apxdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complain_id` varchar(30) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `hotel_section_id` bigint(20) DEFAULT NULL,
  `complain_category_id` bigint(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `complain` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `reply` text DEFAULT NULL,
  `rejection_remarks` text DEFAULT NULL,
  `customer_feedback` text DEFAULT NULL,
  `customer_rating` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `processed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `complain_id`, `name`, `email`, `mobile`, `hotel_id`, `hotel_section_id`, `complain_category_id`, `source`, `complain`, `status`, `reply`, `rejection_remarks`, `customer_feedback`, `customer_rating`, `created_at`, `updated_at`, `processed`) VALUES
(2, 'CF000000002', 'J.kyprianous', 'Jaxkyp657@gmail.com', '0401036180', 2, 17, 7, '1', 'Good job', 1, NULL, NULL, NULL, NULL, '2024-02-11 18:31:04', '2024-02-11 18:31:04', 0),
(4, 'CF000000004', 'Arend', 'Arend.boog@transport.nsw.gov.au', NULL, 2, 51, 15, '1', 'AC not working on arrival. Staff had to reprogram the remote at 10:30pm because room was hot.\r\nFamily above was thumping around well after midnight.\r\nBooking was said to include parking and breakfast; they weren’t.\r\nUnlikely to stay again.', 1, NULL, NULL, NULL, NULL, '2024-02-13 16:39:15', '2024-02-13 16:39:15', 0),
(5, 'CF000000005', 'Angela  Wood', 'academyangelawood@gmail.com', '07305294764', 2, 23, 14, '1', 'Very happy but inside front door need cleaning once inside room so gives wrong impression cleaners are missing them out in thier cleaning but would still use again', 1, NULL, NULL, NULL, NULL, '2024-02-16 23:53:49', '2024-02-16 23:53:49', 0),
(16, 'CF000000006', 'Prema Thasarathan Rajaratnam', 'dhashi09@gmail.com', '0405289187', 2, 6, 6, '1', 'Test', 2, 'Replaying to test', NULL, NULL, NULL, '2024-02-19 14:58:20', '2024-02-19 15:48:58', 0),
(17, 'CF000000017', 'Ziyingwang', 'ziyingwang001227@163.com', '457031741', 2, 277, 10, '1', 'wsjsjsn', 1, NULL, NULL, NULL, NULL, '2024-03-02 21:55:04', '2024-03-02 21:55:04', 0),
(18, 'CF000000018', 'Courtney', 'c_evans2@outlook.com', NULL, 2, 50, 1, '1', 'Absolutely disgusting. Walking into the room the hallway smelt stale. Opening our door the instant smell of human urine was so strong. After investigation it was both lounges that smelt so strong of urine we removed the cushions to place outside. We complained to reception and they bought up a spray bottle with a chemical in it and sprayed over the floor throughout. We went and bought air fresheners and placed throughout the motel to try get rid of the smell and didn\'t have a place to sit anymore as it was all outside where we put it. \r\nThere was cock roaches throughout the place and all in the kitchen where the stove wasn\'t clean and still had oil over it. There is mould growing on walls. What you pay for this motel is way not worth it. No offer of moving us rooms just a spray bottle. Absolutely disgusting and will NEVER be back', 1, NULL, NULL, NULL, NULL, '2024-03-16 21:51:51', '2024-03-16 21:51:51', 0),
(19, 'CF000000019', 'Sophie', 'Raycaarroll92@hotmail.com', '0424000018', 2, 33, 10, '1', 'Oik', 1, NULL, NULL, NULL, NULL, '2024-03-20 01:07:19', '2024-03-20 01:07:19', 0),
(20, 'CF000000020', 'A', 'cfs.adrian@yahoo.com.au', '0411066711', 2, 18, 5, '1', 'No', 1, NULL, NULL, NULL, NULL, '2024-03-22 22:45:48', '2024-03-22 22:45:48', 0),
(21, 'CF000000021', 'Scott', 'daddy_scott@live.com', '0413131390', 2, 46, 5, '1', 'It was greqt. Thank you', 1, NULL, NULL, NULL, NULL, '2024-03-24 15:00:55', '2024-03-24 15:00:55', 0),
(22, 'CF000000022', 'Jason MacBeth', 'NSWG.AP@FCMTRAVEL.COM.AU /', '+61 438040798', 2, 37, 1, '2', 'No HK Task List -Mid Stay Clean for this stay', 2, 'As per Nabin, guest complained  and HK Task was manually added by kai in his booking and Ruby to investigate', NULL, NULL, NULL, '2024-04-09 23:40:39', '2024-04-09 23:42:01', 0),
(23, 'CF000000023', 'Vivek Kumar Gupta', 'vthakur@yamaha-motor-india.com', NULL, 2, 31, 3, '3', 'There is blockage of water in wash room', 1, NULL, NULL, NULL, NULL, '2024-04-11 13:14:56', '2024-04-11 13:14:56', 0),
(24, 'CF000000024', 'Mr Nafly Azhar', 'n/a', NULL, 1, 103, 3, '2', 'as per message of FO : Apt # 56 Problem with door lock | maintenance team is working on it | transferred the guest due to arrive to a different room - room 47', 1, NULL, NULL, NULL, NULL, '2024-04-11 19:15:34', '2024-04-11 19:15:34', 0),
(25, 'CF000000025', 'Vishal Kumar Thakur', 'vthakur@yamaha-motor-india.com', NULL, 2, 81, 10, '3', 'Internet connection in both room is very poor and not able to work . It’s really difficult to connect with team in india', 1, NULL, NULL, NULL, NULL, '2024-04-12 13:09:50', '2024-04-12 13:09:50', 0),
(26, 'CF000000026', 'Vivek Kumar Gupta', 'vthakur@yamaha-motor-india.com', NULL, 2, 31, 10, '3', 'Internet connection in both room is very poor and not able to work . It’s really difficult to connect with team in india', 1, NULL, NULL, NULL, NULL, '2024-04-12 13:10:33', '2024-04-12 13:10:33', 0),
(27, 'CF000000027', 'Zoe (Zeke) Ryan', 'zryan.350061@guest.booking.com', 'N/A', 3, 154, 11, '1', 'As per Lynn-HK \"We need a new shower mixer in the room 604 , this one is making some noise and is turning hard\" Daniel said no need to change room he was able to rectify the complaint', 1, NULL, NULL, NULL, NULL, '2024-04-12 19:12:00', '2024-04-12 19:12:00', 0),
(28, 'CF000000028', 'Zoe (Zeke) Ryan', 'zryan.350061@guest.booking.com', 'N/A', 3, 154, 11, '1', 'As per Lynn-HK \"We need a new shower mixer in the room 604 , this one is making some noise and is turning hard\" Daniel said no need to change room he was able to rectify the complaint', 1, NULL, NULL, NULL, NULL, '2024-04-12 19:12:00', '2024-04-12 19:12:00', 0),
(29, 'CF000000029', 'Shaun Norman', 'hana.mose@homes.nsw.gov.au', NULL, 1, 86, 5, '2', 'guest was asked to check out as per message of FO :\r\n\r\nDrunk , Sleeping in corridor, Bring people from out side, Making noise disturbing to other room guest.', 1, NULL, NULL, NULL, NULL, '2024-04-15 16:08:03', '2024-04-15 16:08:03', 0),
(30, 'CF000000030', 'DANIEL PETER WYBER', 'n/a', NULL, 3, 138, 4, '1', 'copied message of FO :\r\n\r\nguest was complaining about there is a baby next door and he is crying all the night and he cannot sleep and also aircon indoor unit was making some noise but i asked vinko to have a look and he said it is fine and this unit is replaced recently and there shouldn\'t be any issues with that', 1, NULL, NULL, NULL, NULL, '2024-04-15 20:22:52', '2024-04-15 20:22:52', 0),
(31, 'CF000000031', 'STEPHANIE NOELLE MS TONIZZO', 'N/A', 'Traveller did not pr', 3, 135, 3, '1', 'As per Shakeeb shower screen is broken and guest wants to change the room.... room is unused please change the room it just need some alignment which i can do when the reception is not busy\"', 1, NULL, NULL, NULL, NULL, '2024-04-15 22:45:56', '2024-04-15 22:45:56', 0),
(32, 'CF000000032', 'STEPHANIE NOELLE MS TONIZZO', 'N/A', 'Traveller did not pr', 3, 135, 3, '1', 'As per Shakeeb #33604: STEPHANIE NOELLE MS TONIZZO for this guest \r\nI found stains on sofa but all the other complains was just in the air i believe because when I checked I didn\'t find any smell in the room but there was some smell in corridor but not in the room and I checked the bathroom bin and it was the wrapper from toilet roll.\r\n\r\nguest said \r\n\r\nbathroom bin was not empty\r\nstains on sofa\r\nand bad smell', 1, NULL, NULL, NULL, NULL, '2024-04-15 23:09:48', '2024-04-15 23:09:48', 0),
(33, 'CF000000033', 'PRAS GOPAKUMARLEKSHMIKUTTYAMMA', 'N/A', 'Traveller did not pr', 3, 153, 1, '1', 'As per Shakeeb #33606: PRAS GOPAKUMARLEKSHMIKUTTYAMMA guest came to around 5:20pm and said that I am not sure about the bed I feel it uncomfortable to sleep if I sleep on it I might have a sore back.... also mention the stains on sofa and walls. I asked him if would like to change the room he said its fine.... after some time went to his room to check mattress he was not there....', 1, NULL, NULL, NULL, NULL, '2024-04-15 23:12:27', '2024-04-15 23:12:27', 0),
(34, 'CF000000034', 'Noami Cunningham', 'N/A', NULL, 3, 170, 3, '1', 'Copied message from FO on whatsapp GC:\r\n\r\nGuest came to reception and informed me that she tried to close the balcony door but accidentally the balcony door fell down..\r\n\r\nGuest refused to transfer to another room and asking us not to charge anything to her because its not her fault that the door fell down', 1, NULL, NULL, NULL, NULL, '2024-04-17 12:40:34', '2024-04-17 12:40:34', 0),
(35, 'CF000000035', 'Billy Kuhnert', 'n/a', NULL, 1, 106, 3, '1', 'as per messgae of FO in WA GC: guest damaged the toilet bowl. \r\nRoom is blocked for tonight as per Daniel instruction', 1, NULL, NULL, NULL, NULL, '2024-04-17 16:17:11', '2024-04-17 16:17:11', 0),
(36, 'CF000000036', 'Nathan Harrison', 'N/A', '0473160771', 1, 46, 1, '1', 'As per Hemant Link2home guest spoiling the room. Room is full of garbage. Attached photos in the booking ID #18742: Nathan Harrison', 1, NULL, NULL, NULL, NULL, '2024-04-17 17:16:54', '2024-04-17 17:16:54', 0),
(37, 'CF000000037', 'Matthew Hallows', 'Hallows1@gmail.com', NULL, 2, 21, 12, '1', 'My stay was going well until a staff member opened my door without knocking while I was getting changed', 1, NULL, NULL, NULL, NULL, '2024-04-17 19:49:55', '2024-04-17 19:49:55', 0),
(38, 'CF000000038', 'Pauline Ferris', 'pferri.801641@guest.booking.com', '+61 490 037 044', 3, 135, 11, '1', 'As per Shakeeb Guest came to the reception around 5:06pm and complain about balcony door was not locking and also there is some smell in the room when I checked the room initially balcony door was not locking but after some twist and turn I was locking again..... but guest doesn\'t want to stay in the same room and when checked with Daniel he said we can change the room. Transferred guest from Room 403 to 507', 1, NULL, NULL, NULL, NULL, '2024-04-18 04:00:54', '2024-04-18 04:00:54', 0),
(39, 'CF000000039', 'James Duff', 'na95pr6iix@m.expediapartnercentral.com', '61 049 0024597', 2, 42, 15, '3', 'As per Nabin Guest checked out early no any reason mentioned left key and went. FYI The booker of this guest requested for refund as their work ended early. SB approved no refund for the remaining nights. This booking was booked through Expedia.', 1, NULL, NULL, NULL, NULL, '2024-04-18 22:13:19', '2024-04-18 22:13:19', 0),
(40, 'CF000000040', 'Kristy Ruocco', 'kywscb8yb1@m.expediapartnercentral.com', '61 424 925699', 2, 51, 15, '3', 'As per Nabin Guest checked out early no any reason mentioned left key and went. FYI The booker of this guest requested for refund as their work ended early. SB approved no refund for the remaining nights. This booking was booked through Expedia.', 1, NULL, NULL, NULL, NULL, '2024-04-18 22:15:03', '2024-04-18 22:15:03', 0),
(41, 'CF000000041', 'Mr & Mrs Frankie Wilkinson', 'frankietpp2@gmail.com', NULL, 2, 25, 15, '3', 'Smoke smell in the room', 1, NULL, NULL, NULL, NULL, '2024-04-19 12:58:07', '2024-04-19 12:58:07', 0),
(42, 'CF000000042', 'Chayne', 'chayne_pep@hotmail.com', '0415758065', 2, 60, 15, '1', 'General experience was okay. Customer service was poor. There was no lift access for a pram only stairs. The carge tor the room was debited prior to arrival when it was selected \"pay on arrival\" and it was also arranged to pay via a different mode via phone conversation previously. The location of the apartment was good. Very spacious. Booked for 5 only 4 pillows were provided and nil extra bedding/blanket or pillows for the 5th person. The sofa bed mattress was extremely uncomfortable with multiple springs protruding through the mattress. Appliances - toaster was broken, and could not utilise this during our stay. The shower in the ensuit flooded the bathroom floor with the shower door closed. The main bathroom bath tap was not usable. Reception was extremely unhelpful in problem solving and assisting with a misplaced room key which was found and handed in before check out. Charge for a lost or misplaced key was $350.', 1, NULL, NULL, NULL, NULL, '2024-04-20 19:52:29', '2024-04-20 19:52:29', 0),
(43, 'CF000000043', 'Keith Moloney', 'rs.6vf.9u2laexdv2.1.909a@guest.trip.com', '401652592', 1, 51, 1, '1', 'As per Shakeeb #18847: Keith Moloney guest is complaining about room that it has a small hole in sofa and some mold in bathroom under the silicon layer and guest wants a refund or change the room.... I told them we don\'t have any availability and they use the room. Booked in Ctrip and non refundable booking. No refund as per Ms. Ruby. Guest was asking for refund of his bond and parking.', 1, NULL, NULL, NULL, NULL, '2024-04-20 23:03:12', '2024-04-20 23:03:12', 0),
(44, 'CF000000044', 'Michael Tutoka', 'yskx5jvm1v@m.expediapartnercentral.com', '0450648872', 3, 202, 3, '1', 'At 10:18 PM As per Shahab 1107  washing machine drain pipe was disconnected in cabinet, due to that all water flooded into both rooms 1107 & 1106. 1107 Guest put cloths for washing and left hotel, he might come back in night. Due for room transfer as we are full tonight April 20, 2024.', 1, NULL, NULL, NULL, NULL, '2024-04-21 03:04:00', '2024-04-21 03:04:00', 0),
(45, 'CF000000045', 'Jack Lowane', 'marthu.374607@guest.booking.com', 'N/A', 3, 201, 3, '1', 'At  10:18 PM Shahab reported that 1107  washing machine drain pipe was disconnected in cabinet, due to that all water flooded into both rooms 1107 & 1106. Both rooms got full water, unable to walk on carpets, I apologize guests and ask them to manage tonight. Due to transfer tomorrow since we are full house today April 20, 2024', 1, NULL, NULL, NULL, NULL, '2024-04-21 03:06:36', '2024-04-21 03:06:36', 0),
(46, 'CF000000046', 'Satyavathi devi', 'Mysydneylife11@gmail.com', '0406211920', 2, 18, 4, '1', 'Cook top is not working', 1, NULL, NULL, NULL, NULL, '2024-04-26 23:30:29', '2024-04-26 23:30:29', 0),
(47, 'CF000000047', 'Jordan Canobie', 'nobesjord@gmail.com', NULL, 1, 107, 16, '3', 'Dented the roof, come thrown on top of car throughout the night', 2, 'Dear Mr. Canobie,\r\n\r\nThank you for your inquiry regarding the CCTV footage.\r\n\r\nAfter a thorough review of the footage, we observed the following:\r\n\r\nYou parked in private parking and not in hotel parking even though it was clearly marked with signage and a plastic parking cone which made the car park owner upset and he put his personal plastic cone on your car roof gently.  In the video it does not appear to have caused any damage, however, this is a matter for you to resolve.\r\n\r\nAttached to this email, you will find the video footage covering the area where your car was parked during the specified time frame.\r\n\r\nHope this assist in your enquiry.  Have an enjoyable weekend.', NULL, NULL, NULL, '2024-04-27 14:27:45', '2024-04-27 18:17:22', 0),
(48, 'CF000000048', 'Tara Sherry', 'tarasherry18@gmail.com', NULL, 1, 78, 1, '3', 'Hi, \r\n\r\nI am just writing in regard to my recent stay on the 20th April. Booking name Tara Sherry. \r\n\r\nThis is the second time staying at your motel, I had previously stayed once before which I had put in a complaint regarding the room being dirty and being charged for the sofa bed but the sofa bed not being fit to sleep on, and cigarette ash all over the balcony. \r\n\r\nI decided to give your motel a second try so when booking I called and mentioned my previous complaint, in hopes the room will be much nicer and cleaner. \r\n\r\nOnly to find that it was in fact full on bugs and cockroaches, I was lying on the bed and had a cockroach crawl over me. I am absolutely disgusted, upon having one crawl over me I looked around and they were everywhere. \r\n\r\nNot only the cockroaches were the issue, but we actually had no blanket to sleep with as the blanket was covered in yellow urine stains and the spare blanket in the cupboard had black hairs on it when we pulled it out and it looks to be about 50 years old that is not comfortable it looks like something from a second hand shop, once upon a time ago it would have been fluffy and warm. \r\n\r\nSo we slept with sheets. \r\n\r\nAnother issue I had was the room next door had the tv blasting all night which was obviously against our bedroom wall as it was all we could hear. \r\n\r\nI am also shocked at the security deposit procedure. \r\nAny/every motel take credit card details to pay for damages if any occur. Your motel take $200 instantly from our accounts and don’t return it for 5-7 days. \r\n\r\nIf you can take it instantly, you can refund it instantly. \r\n\r\nI am appalled. \r\n\r\nI am requesting a refund of my security deposit by Wednesday and also a refund of my accomodation cost in whole. \r\n\r\nIf this isn’t received by Wednesday at 5pm I will be seeking legal advice and be contacting the NSW Fair Trading, and A Current Affairs, because your motel is filthy, unhygienic and not up to the standards it should be. \r\n\r\nI also have photo evidence which I will attach for your record. \r\n\r\nYou can contact me back via email, I will not be accepting phone calls regarding this matter.', 2, 'Dear Ms. Tara,\r\n\r\nThank you for taking the time to share your experience regarding your recent stay at APX Darling Harbor. We truly appreciate your honesty and taking the time to let us know about your experience.\r\n\r\nWe strive to provide exceptional service and accommodations, and we regret that we did not meet this standard during your visit. Regarding the release of the security bond preauthorization, it has been reversed and was not debited to your account. However; for refund on accommodation it isn’t warranted for this complaint.\r\n\r\nWe understand the importance of a comfortable and enjoyable stay for all our guests, and we are disappointed to learn that we fell short in delivering this to you. Your concerns have been brought to our attention, and we have taken immediate steps to address the issues you mentioned and conducted pest control right after we received your feedback when you checked out. Pest control is being done twice a year, and we apologize that bugs entered your accommodation. \r\n\r\nWe would be grateful for the opportunity to make it up to you and regain your trust. If you would consider giving us another chance, please do not hesitate to contact us directly. We would love to welcome you back and ensure that you have a much more pleasant experience with us.\r\nOnce again, we sincerely apologize for the inconvenience you experienced, and we appreciate your understanding.', NULL, NULL, NULL, '2024-04-27 14:55:32', '2024-04-27 15:24:16', 0),
(49, 'CF000000049', 'Atik Ullah', 'qtg2btu1v@m.expediapartnercentral.com', '61 040 3959040', 3, 141, 1, '1', 'Guest reviewed in Expedia. #35267: Atik Ullah\r\nReception staff was unprofessional, grumpy not friendly, door card wasn’t working properly but the reception staff keep sent me back for three times up and down. Room was dirty, shower door wasn’t working, sofa was dirty looks like didn’t clean, leftover milk on the fridge, tv remote broken and much more', 1, NULL, NULL, NULL, NULL, '2024-04-27 18:27:52', '2024-04-27 18:27:52', 0),
(50, 'CF000000050', 'Rena Warmerdam', 'rena.warmerdam@expandwithace.com', NULL, 1, 24, 15, '3', 'the internet is not working\r\nthere is a dog barking in a room nearby', 1, NULL, NULL, NULL, NULL, '2024-05-03 19:57:24', '2024-05-03 19:57:24', 0),
(51, 'CF000000051', 'Klaus Schneider', 'schneider.kl@t-online.de', NULL, 3, 154, 4, '3', 'copied email from the guest:\r\n\r\nOur room 604 is totally unacceptable noisy. Facing the main street, windows not soundproof, doors clapping from adjacent rooms - what a nightmare.\r\nSleeping impossible.', 1, NULL, NULL, NULL, NULL, '2024-05-04 12:17:42', '2024-05-04 12:17:42', 0),
(52, 'CF000000052', '#19030: Amber Hewson', 'ahewso.445955@guest.booking.com', '+61 421 462 369', 1, 33, 1, '1', 'Received message in extranet booking.com that there is Shocking room. Fridge was not on and has cockroaches in it. Never again. You better put the deposit back in within 7 days from his previous Room 23. As per Hemant Kareem went to her room and checked the refrigerator is in working condition and no cockroach was found. Now she is asking for a swimming pool and gym. Even detail cleaning is done today in APT #23.\r\nAs per Kareem from the time of checking she is full of attitude. Coz of weather problems with the connectivity of TV. Daniel spoke with guest again and agreed to change room', 1, NULL, NULL, NULL, NULL, '2024-05-07 23:07:45', '2024-05-07 23:07:45', 0),
(53, 'CF000000053', 'Matthew Nicol', 'NA', NULL, 2, 8, 15, '1', 'I stayed on Wednesday night and checked out yesterday and I left my watch bracelet and my AirPods in the drawer next to the bed\r\nUpon checking with FO - nothing was retrieved.', 1, NULL, NULL, NULL, NULL, '2024-05-10 16:09:47', '2024-05-10 16:09:47', 0),
(54, 'CF000000054', 'Ella Farraher', 'N/A', NULL, 3, 163, 15, '1', 'As per message of FO in WA GC: Room 704 complain for a lot of bugs ? ? ? in the room', 1, NULL, NULL, NULL, NULL, '2024-05-10 17:12:06', '2024-05-10 17:12:06', 0),
(55, 'CF000000055', 'Steven Linhart', 'na', NULL, 3, 150, 15, '1', 'Was not checked in in NB and was put on no show.', 1, NULL, NULL, NULL, NULL, '2024-05-11 15:11:18', '2024-05-11 15:11:18', 0),
(56, 'CF000000056', 'Louise Pedersen', 'npeder.305992@guest.booking.com', 'N/A', 3, 140, 11, '1', 'As per Faheem #35787 louise pedersen guest wants to cancel the booking she says the room standard is not like advertised and complaints that bed is not comfortable. She says on description it says private pool whereas its a common pool for all guests and also she says it not indoor. Approved by SB refunded the guest.', 1, NULL, NULL, NULL, NULL, '2024-05-11 20:45:39', '2024-05-11 20:45:39', 0),
(57, 'CF000000057', 'Kim', 'William@hotmail.com', '0459403580', 2, 48, 2, '1', 'Love it', 1, NULL, NULL, NULL, NULL, '2024-05-14 12:18:46', '2024-05-14 12:18:46', 0),
(58, 'CF000000058', 'HyeonJung Ha', 'hha.617467@guest.booking.com', '0490344039', 3, 163, 1, '1', 'As per Faye guest complained presence of cockroaches in the room. Initially Vinko went to the room to have it sprayed which guests agreed. When the housekeeping went to the room they do not want to have it sprayed and wanted to change room. SB approved to change room. Guest was transferred from 704 to 1006', 1, NULL, NULL, NULL, NULL, '2024-05-20 15:56:47', '2024-05-20 15:56:47', 0),
(59, 'CF000000059', 'Kylie Hannah Hepburn', 'kylesha2009@hotmail.com', '0424631607', 2, 31, 2, '1', 'How do u work the oven', 1, NULL, NULL, NULL, NULL, '2024-05-23 00:22:34', '2024-05-23 00:22:34', 0),
(60, 'CF000000060', 'Eva Suhami Brighina', 'esuham.528595@guest.booking.com', '+687 79 79 21', 3, 158, 2, '1', 'This guest was move from apt 508 Accessible room to EFS 608 due to aircon by Daniel. Informed that this guest can\'t stay for 3 nights in EFS 608 due to there is a confirmed booking on May 25,2024.As per Daniel he will transfer the guest tomorrow to Accessible 408 until the departure date on May 25,024', 1, NULL, NULL, NULL, NULL, '2024-05-23 23:57:04', '2024-05-23 23:57:04', 0),
(61, 'CF000000061', 'Alvin Chen', 'te9n88k5dn@m.expediapartnercentral.com', '041 6972584', 1, 106, 2, '1', 'As per Shakeeb #19537: Alvin Chen guest is complaining about aircon working on cold only and unable to configure the universal remote. Guest was complaining about Aircon not working on heating mode and when checked with Daniel he said aircon is in replacement. Shakeeb kept a room heater in the room and turned it on', 1, NULL, NULL, NULL, NULL, '2024-05-26 03:02:41', '2024-05-26 03:02:41', 0),
(62, 'CF000000062', 'GEORGE MR CHINGWANGWE', 'NA', NULL, 1, 25, 15, '1', 'as per fo message on wa gc, rm 25 has bad smell. guest was transferred to apt 34', 1, NULL, NULL, NULL, NULL, '2024-05-29 19:11:17', '2024-05-29 19:11:17', 0),
(63, 'CF000000063', 'Jack', 'jackomerrick037@gmail.com', '0491179430', 2, 22, 5, '1', '?', 1, NULL, NULL, NULL, NULL, '2024-05-31 02:47:03', '2024-05-31 02:47:03', 0),
(64, 'CF000000064', 'Alex Cowden', 'N/A', NULL, 3, 151, 1, '1', 'as per message of Faye in WA: guest complained about cockroach and urine smell in the room. requesting to change room', 1, NULL, NULL, NULL, NULL, '2024-06-03 14:20:30', '2024-06-03 14:20:30', 0),
(65, 'CF000000065', 'Monika Lynne Hudson', 'N/A', NULL, 3, 149, 3, '1', '(Kai) as per message of guest through WA GC, guest complained about water leakage from the washing machine | as per daniel instruction guest needs to be moved to 408 as he will try to fix the machine', 1, NULL, NULL, NULL, NULL, '2024-06-05 16:05:27', '2024-06-05 16:05:27', 0),
(66, 'CF000000066', 'Kyaw San', 'N/A', NULL, 1, 111, 3, '1', '(Kai) as per message of hkd in wa gc: one Aircon is not working our Handyman fail to resolve the problem. Guest wanted to change their room', 1, NULL, NULL, NULL, NULL, '2024-06-07 15:39:43', '2024-06-07 15:39:43', 0),
(67, 'CF000000067', 'Kennedy', 'gokenno@yahoo.co,', '0418658030', 2, 7, 5, '1', 'Hello', 1, NULL, NULL, NULL, NULL, '2024-06-07 18:43:54', '2024-06-07 18:43:54', 0),
(68, 'CF000000068', 'Luke  Hawkins', 'ss-greyfox@hotmail.com', '0450651665', 2, 62, 5, '1', 'Very comfortable', 1, NULL, NULL, NULL, NULL, '2024-06-08 03:28:15', '2024-06-08 03:28:15', 0),
(69, 'CF000000069', 'KWOKYAN YAU', 'N/A', NULL, 3, 163, 15, '1', '(Kai) as per message of fo in WA GC, guest complained about cockroach in the room. we offered to transfer to another room but as per fo guest refused to transfer and left', 1, NULL, NULL, NULL, NULL, '2024-06-08 15:47:23', '2024-06-08 15:47:23', 0),
(70, 'CF000000070', 'Taryn Dean', 'tdean.833405@guest.booking.com', '0434 660 933', 1, 105, 4, '1', 'As per Kareem in WhatsApp. This guest checkout early - as per her there was too much sounds from renovation apts. on level 5 and she cannot stay like this. I told her we will shift you to another Apt. she says she made arrangements at her friends place and she want to checkout.', 1, NULL, NULL, NULL, NULL, '2024-06-18 13:48:30', '2024-06-18 13:48:30', 0),
(71, 'CF000000071', '19894: Warren Thompson - Split', 'f23ho1wfs2@m.expediapartnercentral.com', '0427289065', 1, 104, 11, '1', 'As per Faheem room 57 also complaining about the smell due to on going renovation in 5th floor. He was moved to Room 33. Approved by SB', 1, NULL, NULL, NULL, NULL, '2024-06-25 01:24:26', '2024-06-25 01:24:26', 0),
(72, 'CF000000072', '19827: Sydney Findlay', 'j0awmtvm6x@m.expediapartnercentral.com', '0413227119', 1, 105, 11, '1', 'As per Faheem room 58 complaining about the smell due to on going renovation in 5th floor. He was moved to Room 32. Approved by SB', 1, NULL, NULL, NULL, NULL, '2024-06-25 01:27:25', '2024-06-25 01:27:25', 0),
(73, 'CF000000073', 'Fabrizio Coppete', 'N/A', NULL, 3, 197, 4, '1', '(kai) as per faye message on WA gc, guest complained about the noise in the room.\r\nguest moved to 1009', 1, NULL, NULL, NULL, NULL, '2024-06-26 13:19:54', '2024-06-26 13:19:54', 0),
(74, 'CF000000074', 'Henry Taylor', 'Henryjocktaylor@gmail.com', '0451360896', 2, 47, 1, '1', 'The smell in my bathroom smelt like a cigarette testing lab, any cigarette that has ever been smoked has done so in that bathroom. If a smell can ever depart from the deep dark depths of stenchlnd', 1, NULL, NULL, NULL, NULL, '2024-07-07 09:59:26', '2024-07-07 09:59:26', 0),
(75, 'CF000000075', '20171: Ms Touria Tougui', 'Ttougui@hotmail.com', '0422198828', 1, 42, 1, '1', 'GUEST CALL IN AWS (FAY) AND COMPLAIN THAT SHE CANT REACH RECEPTION IN ADH AND ALSO THAT THE ROOM SHE STAYS IN IS DISGUSTING, TOWELS HAVE STAINS ON THEM ETC\r\n\r\nGUEST GOT ADVICED TO TAKE PHOTOS AS WELL\r\n\r\nGUEST REQUEST CANCELLATION OF BOTH BOOKINGS AND FULLY REFUND FOR BOTH BOOKINGS #20171\r\n\r\nChat from Shakeeb #20171: Ms Touria Tougui Group guest wants to cancel both the booking as she cannot stay in the room.....as per @~D i told her thet she already checked in already and no 24hrs notice period....she said she didnt saw the room 24hr before and now she is packing her stuff', 1, NULL, NULL, NULL, NULL, '2024-07-26 15:40:07', '2024-07-26 15:40:07', 0),
(76, 'CF000000076', 'PAUL DORNAN', 'N/A', '416555134', 3, 186, 1, '1', 'Chat from Mirza in WhatsApp Booking #38329: PAUL DORNAN - Can you please change the room. Guest checked-in just now and came down stating that the room is dirty. Daniel is checking the room now. Guest was transferred from 909 to 708. Room was not cleaned by HK', 1, NULL, NULL, NULL, NULL, '2024-07-30 22:28:51', '2024-07-30 22:28:51', 0),
(77, 'CF000000077', '#20119: Megan Crocker', 'l4ulf3md6h@m.expediapartnercentral.com', '16504774704', 1, 28, 10, '1', 'As per Faheem Room 28 wants to change the room. As room has a WIFI issue. Daniel went to the room and was able to fixed the internet. No need to transfer', 1, NULL, NULL, NULL, NULL, '2024-07-30 22:34:44', '2024-07-30 22:34:44', 0),
(78, 'CF000000078', 'Yamna Shafiq', 'yamna_shafiq88@hotmail.com', '3104373290', 2, 51, 10, '1', 'Need Wifi password', 1, NULL, NULL, NULL, NULL, '2024-08-14 19:16:13', '2024-08-14 19:16:13', 0),
(79, 'CF000000079', '#21144: Ethan Jones', 'N/A', '0419 254 385', 1, 96, 5, '1', 'As per Hemant Guest was transferred from 47 to 64 due to paint smell. moved to apt 64 approved by Tasi and SB', 1, NULL, NULL, NULL, NULL, '2024-09-02 11:42:05', '2024-09-02 11:42:05', 0),
(80, 'CF000000080', '#39075: Ian James - Split', 'N/A', '0431719633', 3, 182, 5, '1', 'As per Faye: From yesterday they complaining for the dishwasher\r\nThey complaining for the TV is not a smart TV And also bugs coming out of the drain. BUT they asking for upgrade for free And I refuse I said we can change you room to the same type of room you are using now but if you need an upgrade you will have to pay a fee. And they are not happy. Guest transferred to 1004. Daniel spoke and assisted guest.', 1, NULL, NULL, NULL, NULL, '2024-09-03 05:17:15', '2024-09-03 05:17:15', 0),
(81, 'CF000000081', 'Eden Keats', 'egk0407@gmail.com', '0490862058', 2, 46, 15, '1', 'good', 1, NULL, NULL, NULL, NULL, '2024-09-21 10:35:56', '2024-09-21 10:35:56', 0),
(82, 'CF000000082', 'David Foster', 'thebigfoz66@gmail.com', '0427361314', 2, 38, 5, '1', 'I will never stay with you again an absolute disgrace \r\nWhy because there was an infestation of cockroaches in the whole room I have photos as proof \r\n2 dirty cotton buds were in the bed when my wife turned down the bedding for the sat night sleep \r\nAnd after paying 300 dollars to stay with you I’m expected to pay for my car to park on your premises I have all\r\nPhoto evidence and wish you to consider a full refund there was even ridisule spray over everything from the pest company feel free to ring me as I will never use your hotels again David foster', 1, NULL, NULL, NULL, NULL, '2024-09-22 06:54:57', '2024-09-22 06:54:57', 0),
(83, 'CF000000083', 'Kevin', 'jovenmarlokevin@gmail.com', '0456651581', 2, 34, 5, '1', 'Very comfortable, spacious and neat', 1, NULL, NULL, NULL, NULL, '2024-10-06 04:37:28', '2024-10-06 04:37:28', 0),
(84, 'CF000000084', 'aleirah', 'aleirahwest09@icloud.clm', '0482174101', 2, 29, 10, '1', 'no', 1, NULL, NULL, NULL, NULL, '2024-10-21 13:05:19', '2024-10-21 13:05:19', 0),
(85, 'CF000000085', 'Bekim Nishori', 'BekimNishori@gmail.com', '0423404166', 2, 29, 5, '1', 'Nice', 1, NULL, NULL, NULL, NULL, '2024-11-05 13:35:28', '2024-11-05 13:35:28', 0),
(86, 'CF000000086', 'Michael', 'Msalmon1967@icloud.com', '0432130695', 2, 37, 5, '1', 'Great stay', 1, NULL, NULL, NULL, NULL, '2024-11-11 03:27:52', '2024-11-11 03:27:52', 0),
(87, 'CF000000087', 'Gwangcheol', 'cgc710@naver.com', '0421903686', 2, 276, 10, '1', 'good', 1, NULL, NULL, NULL, NULL, '2024-11-18 15:17:35', '2024-11-18 15:17:35', 0),
(88, 'CF000000088', 'Lawrence', 'Ljgoldie@bigpond.com', '0430196120', 2, 52, 10, '1', 'No feedback just trying to connect to tv', 1, NULL, NULL, NULL, NULL, '2024-11-21 08:27:24', '2024-11-21 08:27:24', 0),
(89, 'CF000000089', 'Steven Vuk', 'stevenvuk@hotmail.com', '0450043082', 2, 18, 5, '1', 'We stayed on Saturday 23 November 2024 in a Executive 1 Bedroom Apartment.\r\nThe apartment was supposed to have a sofabed for an additional paying adult. The couch provided was totally inappropriate - hard a too short even for a small adult. \r\nThis is not what we paid for \r\nWhen I spoke with the gentleman at reception on arrival he said he would get in contact about a solution. I heard nothing. \r\n\r\nThis was a very poor experience. I expect some form of refund is appropriate', 1, NULL, NULL, NULL, NULL, '2024-11-24 02:44:04', '2024-11-24 02:44:04', 0),
(90, 'CF000000090', 'Skye McLean', 'Skyerenee77@gmail.com', '0421985258', 2, 37, 15, '1', 'Great apartment, loads of space. \r\nReally clean.', 1, NULL, NULL, NULL, NULL, '2024-12-06 02:13:32', '2024-12-06 02:13:32', 0),
(91, 'CF000000091', 'Graeme Smith', 'graeme_smith@pacificnational.com.au', NULL, 2, 21, 4, '1', 'The room was disgustingly noisy, some machine rumbling away all night. Bedroom upstairs, bathroom and air conditioner downstairs. Bedroom was uncomfortably warm and NOISY. \nNot happy with check-in process either. I rang ahead to say I will arrive in 5 mins, but still waited 25 mins in the rain. \nI won’t be back.', 1, NULL, NULL, NULL, NULL, '2025-01-17 04:10:39', '2025-01-17 04:10:39', 0),
(92, 'CF000000092', 'MR ABDUL KAREEM R ABUZENAH', 'kareemabuzainah@gmail.com', '0422743563', 2, 26, 5, '1', 'Hhdd', 1, NULL, NULL, NULL, NULL, '2025-02-19 16:23:15', '2025-02-19 16:23:15', 0),
(93, 'CF000000093', 'Brett Mugiven', 'www.brett12@live.com.au', '0439665266', 2, 58, 1, '1', 'Room was spotless on arrival, staff were friendly, had a good stay', 1, NULL, NULL, NULL, NULL, '2025-03-02 03:39:51', '2025-03-02 03:39:51', 0),
(94, 'CF000000094', 'Cassandra white', 'cassiewhitegurdler@gmail.com', '0452519697', 2, 4, 11, '1', 'No TV In Bedroom', 1, NULL, NULL, NULL, NULL, '2025-03-06 14:17:05', '2025-03-06 14:17:05', 0),
(95, 'CF000000095', 'Nam Nguyen', 'thnam.ng0810@gmail.com', '0478712860', 2, 18, 5, '1', 'The room is very comfortable, cozy and clean.', 1, NULL, NULL, NULL, NULL, '2025-03-09 02:17:46', '2025-03-09 02:17:46', 0),
(96, 'CF000000096', 'kharled', 'puripanniti@gmail.com', '0404778254', 2, 6, 10, '1', 'non', 1, NULL, NULL, NULL, NULL, '2025-03-29 12:43:59', '2025-03-29 12:43:59', 0),
(97, 'CF000000097', 'Khaled Fayad', 'khaledfayad@yahoo.com', '0404778254', 2, 1, 7, '1', 'Should get rid of the bond and security deposit. It’s pointless.', 1, NULL, NULL, NULL, NULL, '2025-03-30 23:45:47', '2025-03-30 23:45:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `group_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 13, 8, NULL, NULL),
(18, 4, 18, NULL, NULL),
(20, 2, 20, NULL, NULL),
(21, 4, 21, NULL, NULL),
(24, 8, 24, NULL, NULL),
(25, 8, 25, NULL, NULL),
(26, 8, 26, NULL, NULL),
(27, 12, 27, NULL, NULL),
(29, 12, 29, NULL, NULL),
(30, 8, 30, NULL, NULL),
(33, 8, 33, NULL, NULL),
(35, 8, 35, NULL, NULL),
(36, 12, 36, NULL, NULL),
(37, 1, 1, NULL, NULL),
(38, 2, 1, NULL, NULL),
(39, 3, 1, NULL, NULL),
(40, 4, 1, NULL, NULL),
(41, 5, 1, NULL, NULL),
(42, 6, 1, NULL, NULL),
(43, 7, 1, NULL, NULL),
(44, 8, 1, NULL, NULL),
(45, 9, 1, NULL, NULL),
(46, 10, 1, NULL, NULL),
(47, 11, 1, NULL, NULL),
(48, 12, 1, NULL, NULL),
(49, 13, 1, NULL, NULL),
(50, 14, 1, NULL, NULL),
(51, 15, 1, NULL, NULL),
(97, 1, 37, NULL, NULL),
(98, 4, 17, NULL, NULL),
(114, 1, 15, NULL, NULL),
(115, 2, 15, NULL, NULL),
(116, 3, 15, NULL, NULL),
(117, 4, 15, NULL, NULL),
(118, 5, 15, NULL, NULL),
(119, 6, 15, NULL, NULL),
(120, 7, 15, NULL, NULL),
(121, 8, 15, NULL, NULL),
(122, 9, 15, NULL, NULL),
(123, 10, 15, NULL, NULL),
(124, 11, 15, NULL, NULL),
(125, 12, 15, NULL, NULL),
(126, 13, 15, NULL, NULL),
(127, 14, 15, NULL, NULL),
(128, 15, 15, NULL, NULL),
(132, 6, 32, NULL, NULL),
(134, 1, 39, NULL, NULL),
(135, 5, 39, NULL, NULL),
(136, 9, 39, NULL, NULL),
(137, 6, 28, NULL, NULL),
(138, 10, 28, NULL, NULL),
(179, 6, 31, NULL, NULL),
(180, 10, 31, NULL, NULL),
(181, 15, 5, NULL, NULL),
(185, 13, 9, NULL, NULL),
(242, 15, 6, NULL, NULL),
(243, 15, 12, NULL, NULL),
(262, 13, 7, NULL, NULL),
(263, 15, 16, NULL, NULL),
(264, 12, 34, NULL, NULL),
(265, 8, 38, NULL, NULL),
(281, 1, 41, NULL, NULL),
(282, 2, 41, NULL, NULL),
(283, 3, 41, NULL, NULL),
(284, 4, 41, NULL, NULL),
(285, 5, 41, NULL, NULL),
(286, 6, 41, NULL, NULL),
(287, 7, 41, NULL, NULL),
(288, 8, 41, NULL, NULL),
(289, 9, 41, NULL, NULL),
(290, 10, 41, NULL, NULL),
(291, 11, 41, NULL, NULL),
(292, 12, 41, NULL, NULL),
(293, 13, 41, NULL, NULL),
(294, 14, 41, NULL, NULL),
(295, 15, 41, NULL, NULL),
(298, 1, 3, NULL, NULL),
(299, 2, 3, NULL, NULL),
(300, 3, 3, NULL, NULL),
(301, 4, 3, NULL, NULL),
(302, 5, 3, NULL, NULL),
(303, 6, 3, NULL, NULL),
(304, 7, 3, NULL, NULL),
(305, 8, 3, NULL, NULL),
(306, 9, 3, NULL, NULL),
(307, 10, 3, NULL, NULL),
(308, 11, 3, NULL, NULL),
(309, 12, 3, NULL, NULL),
(310, 13, 3, NULL, NULL),
(311, 14, 3, NULL, NULL),
(312, 15, 3, NULL, NULL),
(318, 1, 42, NULL, NULL),
(319, 2, 42, NULL, NULL),
(320, 3, 42, NULL, NULL),
(321, 4, 42, NULL, NULL),
(322, 14, 42, NULL, NULL),
(323, 6, 23, NULL, NULL),
(324, 8, 23, NULL, NULL),
(325, 10, 23, NULL, NULL),
(327, 15, 44, NULL, NULL),
(330, 7, 45, NULL, NULL),
(331, 8, 45, NULL, NULL),
(332, 11, 45, NULL, NULL),
(333, 12, 45, NULL, NULL),
(334, 13, 4, NULL, NULL),
(335, 2, 19, NULL, NULL),
(355, 4, 22, NULL, NULL),
(371, 13, 13, NULL, NULL),
(372, 13, 14, NULL, NULL),
(373, 4, 43, NULL, NULL),
(393, 1, 46, NULL, NULL),
(394, 2, 46, NULL, NULL),
(395, 2, 49, NULL, NULL),
(426, 1, 51, NULL, NULL),
(427, 2, 51, NULL, NULL),
(428, 3, 51, NULL, NULL),
(429, 4, 51, NULL, NULL),
(430, 5, 51, NULL, NULL),
(431, 6, 51, NULL, NULL),
(432, 7, 51, NULL, NULL),
(433, 8, 51, NULL, NULL),
(434, 9, 51, NULL, NULL),
(435, 10, 51, NULL, NULL),
(436, 11, 51, NULL, NULL),
(437, 12, 51, NULL, NULL),
(438, 13, 51, NULL, NULL),
(439, 14, 51, NULL, NULL),
(440, 1, 10, NULL, NULL),
(441, 2, 10, NULL, NULL),
(442, 5, 10, NULL, NULL),
(443, 6, 10, NULL, NULL),
(444, 9, 10, NULL, NULL),
(445, 10, 10, NULL, NULL),
(446, 14, 10, NULL, NULL),
(447, 1, 11, NULL, NULL),
(448, 2, 11, NULL, NULL),
(449, 5, 11, NULL, NULL),
(450, 6, 11, NULL, NULL),
(451, 9, 11, NULL, NULL),
(452, 10, 11, NULL, NULL),
(453, 14, 11, NULL, NULL),
(496, 1, 52, NULL, NULL),
(497, 2, 52, NULL, NULL),
(498, 3, 52, NULL, NULL),
(499, 4, 52, NULL, NULL),
(500, 5, 52, NULL, NULL),
(501, 6, 52, NULL, NULL),
(502, 7, 52, NULL, NULL),
(503, 8, 52, NULL, NULL),
(504, 9, 52, NULL, NULL),
(505, 10, 52, NULL, NULL),
(506, 11, 52, NULL, NULL),
(507, 12, 52, NULL, NULL),
(508, 13, 52, NULL, NULL),
(509, 14, 52, NULL, NULL),
(524, 1, 53, NULL, NULL),
(525, 2, 53, NULL, NULL),
(526, 3, 53, NULL, NULL),
(527, 4, 53, NULL, NULL),
(528, 5, 53, NULL, NULL),
(529, 6, 53, NULL, NULL),
(530, 7, 53, NULL, NULL),
(531, 8, 53, NULL, NULL),
(532, 9, 53, NULL, NULL),
(533, 10, 53, NULL, NULL),
(534, 11, 53, NULL, NULL),
(535, 12, 53, NULL, NULL),
(536, 13, 53, NULL, NULL),
(537, 14, 53, NULL, NULL),
(538, 1, 40, NULL, NULL),
(539, 2, 40, NULL, NULL),
(540, 3, 40, NULL, NULL),
(541, 4, 40, NULL, NULL),
(542, 5, 40, NULL, NULL),
(543, 6, 40, NULL, NULL),
(544, 7, 40, NULL, NULL),
(545, 8, 40, NULL, NULL),
(546, 9, 40, NULL, NULL),
(547, 10, 40, NULL, NULL),
(548, 11, 40, NULL, NULL),
(549, 12, 40, NULL, NULL),
(550, 13, 40, NULL, NULL),
(551, 14, 40, NULL, NULL),
(552, 15, 40, NULL, NULL),
(553, 5, 50, NULL, NULL),
(554, 9, 50, NULL, NULL),
(555, 14, 47, NULL, NULL),
(556, 1, 54, NULL, NULL),
(557, 5, 54, NULL, NULL),
(558, 9, 54, NULL, NULL),
(559, 1, 2, NULL, NULL),
(560, 2, 2, NULL, NULL),
(561, 3, 2, NULL, NULL),
(562, 4, 2, NULL, NULL),
(563, 5, 2, NULL, NULL),
(564, 6, 2, NULL, NULL),
(565, 7, 2, NULL, NULL),
(566, 8, 2, NULL, NULL),
(567, 9, 2, NULL, NULL),
(568, 10, 2, NULL, NULL),
(569, 11, 2, NULL, NULL),
(570, 12, 2, NULL, NULL),
(571, 13, 2, NULL, NULL),
(572, 14, 2, NULL, NULL),
(573, 15, 2, NULL, NULL),
(574, 1, 55, NULL, NULL),
(575, 3, 55, NULL, NULL),
(576, 5, 55, NULL, NULL),
(577, 7, 55, NULL, NULL),
(578, 9, 55, NULL, NULL),
(579, 11, 55, NULL, NULL),
(580, 1, 48, NULL, NULL),
(581, 5, 48, NULL, NULL),
(582, 9, 48, NULL, NULL),
(583, 1, 56, NULL, NULL),
(584, 3, 56, NULL, NULL),
(585, 4, 56, NULL, NULL),
(586, 5, 56, NULL, NULL),
(587, 7, 56, NULL, NULL),
(588, 8, 56, NULL, NULL),
(589, 9, 56, NULL, NULL),
(590, 11, 56, NULL, NULL),
(591, 12, 56, NULL, NULL),
(592, 13, 56, NULL, NULL),
(593, 14, 56, NULL, NULL),
(594, 1, 57, NULL, NULL),
(595, 2, 57, NULL, NULL),
(596, 3, 57, NULL, NULL),
(597, 4, 57, NULL, NULL),
(598, 5, 57, NULL, NULL),
(599, 6, 57, NULL, NULL),
(600, 7, 57, NULL, NULL),
(601, 8, 57, NULL, NULL),
(602, 9, 57, NULL, NULL),
(603, 10, 57, NULL, NULL),
(604, 11, 57, NULL, NULL),
(605, 12, 57, NULL, NULL),
(606, 13, 57, NULL, NULL),
(607, 14, 57, NULL, NULL),
(608, 1, 58, NULL, NULL),
(609, 5, 58, NULL, NULL),
(610, 9, 58, NULL, NULL),
(615, 15, 59, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_type_id` bigint(20) NOT NULL,
  `subtask_type_id` bigint(20) DEFAULT NULL,
  `task_id` varchar(30) NOT NULL,
  `schedule_task_id` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `hotel_section_id` bigint(20) DEFAULT NULL,
  `complain_id` bigint(20) DEFAULT NULL,
  `priority_id` varchar(30) NOT NULL,
  `task_status` int(11) NOT NULL,
  `targeted_date` datetime NOT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `created_by` text DEFAULT NULL,
  `sb_notes` text DEFAULT NULL,
  `assigner_notes` text DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `assign_to_workgroup` int(11) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `associated_cost` varchar(20) DEFAULT NULL,
  `is_billed` tinyint(1) DEFAULT NULL,
  `bill_person_id` bigint(20) DEFAULT NULL,
  `is_external_billable` tinyint(1) DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_type_id`, `subtask_type_id`, `task_id`, `schedule_task_id`, `description`, `hotel_id`, `hotel_section_id`, `complain_id`, `priority_id`, `task_status`, `targeted_date`, `assign_to`, `created_by`, `sb_notes`, `assigner_notes`, `completed_date`, `assign_to_workgroup`, `source`, `associated_cost`, `is_billed`, `bill_person_id`, `is_external_billable`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'TASK000000001', NULL, 'Very happy but inside front door need cleaning once inside room so gives wrong impression cleaners are missing them out in thier cleaning but would still use again', 2, 23, 5, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(2, 1, 3, 'TASK000000002', NULL, 'Absolutely disgusting. Walking into the room the hallway smelt stale. Opening our door the instant smell of human urine was so strong. After investigation it was both lounges that smelt so strong of urine we removed the cushions to place outside. We complained to reception and they bought up a spray bottle with a chemical in it and sprayed over the floor throughout. We went and bought air fresheners and placed throughout the motel to try get rid of the smell and didn\'t have a place to sit anymore as it was all outside where we put it. \r\nThere was cock roaches throughout the place and all in the kitchen where the stove wasn\'t clean and still had oil over it. There is mould growing on walls. What you pay for this motel is way not worth it. No offer of moving us rooms just a spray bottle. Absolutely disgusting and will NEVER be back', 2, 50, 18, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(3, 1, 55, 'TASK000000003', NULL, 'There is blockage of water in wash room', 2, 31, 23, '1', 1, '2025-05-16 13:27:27', 20, '2', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(4, 2, 13, 'TASK000000004', NULL, 'as per message of FO : Apt # 56 Problem with door lock | maintenance team is working on it | transferred the guest due to arrive to a different room - room 47', 1, 103, 24, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 10, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(5, 2, 56, 'TASK000000005', NULL, 'Internet connection in both room is very poor and not able to work . It’s really difficult to connect with team in india', 2, 81, 25, '1', 1, '2025-05-16 13:27:27', 20, '2', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(6, 2, 56, 'TASK000000006', NULL, 'Internet connection in both room is very poor and not able to work . It’s really difficult to connect with team in india', 2, 31, 26, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 14, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(7, 2, 15, 'TASK000000007', NULL, 'As per Lynn-HK \"We need a new shower mixer in the room 604 , this one is making some noise and is turning hard\" Daniel said no need to change room he was able to rectify the complaint', 3, 154, 27, '3', 1, '2025-05-17 11:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(8, 1, 55, 'TASK000000008', NULL, 'As per Lynn-HK \"We need a new shower mixer in the room 604 , this one is making some noise and is turning hard\" Daniel said no need to change room he was able to rectify the complaint', 3, 154, 28, '3', 1, '2025-05-17 11:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(9, 1, 55, 'TASK000000009', NULL, 'As per Shakeeb shower screen is broken and guest wants to change the room.... room is unused please change the room it just need some alignment which i can do when the reception is not busy\"', 3, 135, 31, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 7, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(10, 1, 2, 'TASK000000010', NULL, 'As per Shakeeb #33606: PRAS GOPAKUMARLEKSHMIKUTTYAMMA guest came to around 5:20pm and said that I am not sure about the bed I feel it uncomfortable to sleep if I sleep on it I might have a sore back.... also mention the stains on sofa and walls. I asked him if would like to change the room he said its fine.... after some time went to his room to check mattress he was not there....', 3, 153, 33, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 5, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(11, 2, 13, 'TASK000000011', NULL, 'Copied message from FO on whatsapp GC:\r\n\r\nGuest came to reception and informed me that she tried to close the balcony door but accidentally the balcony door fell down..\r\n\r\nGuest refused to transfer to another room and asking us not to charge anything to her because its not her fault that the door fell down', 3, 170, 34, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(12, 1, 55, 'TASK000000012', NULL, 'as per messgae of FO in WA GC: guest damaged the toilet bowl. \r\nRoom is blocked for tonight as per Daniel instruction', 1, 106, 35, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 10, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(13, 1, 57, 'TASK000000013', NULL, 'As per Hemant Link2home guest spoiling the room. Room is full of garbage. Attached photos in the booking ID #18742: Nathan Harrison', 1, 46, 36, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 9, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(14, 1, 3, 'TASK000000014', NULL, 'My stay was going well until a staff member opened my door without knocking while I was getting changed', 2, 21, 37, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(15, 1, 3, 'TASK000000015', NULL, 'As per Shakeeb Guest came to the reception around 5:06pm and complain about balcony door was not locking and also there is some smell in the room when I checked the room initially balcony door was not locking but after some twist and turn I was locking again..... but guest doesn\'t want to stay in the same room and when checked with Daniel he said we can change the room. Transferred guest from Room 403 to 507', 3, 135, 38, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 7, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(16, 1, 51, 'TASK000000016', NULL, 'Smoke smell in the room', 2, 25, 41, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(17, 2, 71, 'TASK000000017', NULL, 'General experience was okay. Customer service was poor. There was no lift access for a pram only stairs. The carge tor the room was debited prior to arrival when it was selected \"pay on arrival\" and it was also arranged to pay via a different mode via phone conversation previously. The location of the apartment was good. Very spacious. Booked for 5 only 4 pillows were provided and nil extra bedding/blanket or pillows for the 5th person. The sofa bed mattress was extremely uncomfortable with multiple springs protruding through the mattress. Appliances - toaster was broken, and could not utilise this during our stay. The shower in the ensuit flooded the bathroom floor with the shower door closed. The main bathroom bath tap was not usable. Reception was extremely unhelpful in problem solving and assisting with a misplaced room key which was found and handed in before check out. Charge for a lost or misplaced key was $350.', 2, 60, 42, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 3, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(18, 1, 55, 'TASK000000018', NULL, 'As per Shakeeb #18847: Keith Moloney guest is complaining about room that it has a small hole in sofa and some mold in bathroom under the silicon layer and guest wants a refund or change the room.... I told them we don\'t have any availability and they use the room. Booked in Ctrip and non refundable booking. No refund as per Ms. Ruby. Guest was asking for refund of his bond and parking.', 1, 51, 43, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 9, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(19, 2, 26, 'TASK000000019', NULL, 'At 10:18 PM As per Shahab 1107  washing machine drain pipe was disconnected in cabinet, due to that all water flooded into both rooms 1107 & 1106. 1107 Guest put cloths for washing and left hotel, he might come back in night. Due for room transfer as we are full tonight April 20, 2024.', 3, 202, 44, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(20, 2, 26, 'TASK000000020', NULL, 'At  10:18 PM Shahab reported that 1107  washing machine drain pipe was disconnected in cabinet, due to that all water flooded into both rooms 1107 & 1106. Both rooms got full water, unable to walk on carpets, I apologize guests and ask them to manage tonight. Due to transfer tomorrow since we are full house today April 20, 2024', 3, 201, 45, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(21, 2, 54, 'TASK000000021', NULL, 'Cook top is not working', 2, 18, 46, '2', 1, '2025-05-16 23:27:27', 20, '2', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(22, 1, 55, 'TASK000000022', NULL, 'Hi, \r\n\r\nI am just writing in regard to my recent stay on the 20th April. Booking name Tara Sherry. \r\n\r\nThis is the second time staying at your motel, I had previously stayed once before which I had put in a complaint regarding the room being dirty and being charged for the sofa bed but the sofa bed not being fit to sleep on, and cigarette ash all over the balcony. \r\n\r\nI decided to give your motel a second try so when booking I called and mentioned my previous complaint, in hopes the room will be much nicer and cleaner. \r\n\r\nOnly to find that it was in fact full on bugs and cockroaches, I was lying on the bed and had a cockroach crawl over me. I am absolutely disgusted, upon having one crawl over me I looked around and they were everywhere. \r\n\r\nNot only the cockroaches were the issue, but we actually had no blanket to sleep with as the blanket was covered in yellow urine stains and the spare blanket in the cupboard had black hairs on it when we pulled it out and it looks to be about 50 years old that is not comfortable it looks like something from a second hand shop, once upon a time ago it would have been fluffy and warm. \r\n\r\nSo we slept with sheets. \r\n\r\nAnother issue I had was the room next door had the tv blasting all night which was obviously against our bedroom wall as it was all we could hear. \r\n\r\nI am also shocked at the security deposit procedure. \r\nAny/every motel take credit card details to pay for damages if any occur. Your motel take $200 instantly from our accounts and don’t return it for 5-7 days. \r\n\r\nIf you can take it instantly, you can refund it instantly. \r\n\r\nI am appalled. \r\n\r\nI am requesting a refund of my security deposit by Wednesday and also a refund of my accomodation cost in whole. \r\n\r\nIf this isn’t received by Wednesday at 5pm I will be seeking legal advice and be contacting the NSW Fair Trading, and A Current Affairs, because your motel is filthy, unhygienic and not up to the standards it should be. \r\n\r\nI also have photo evidence which I will attach for your record. \r\n\r\nYou can contact me back via email, I will not be accepting phone calls regarding this matter.', 1, 78, 48, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 11, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(23, 1, 55, 'TASK000000023', NULL, 'Guest reviewed in Expedia. #35267: Atik Ullah\r\nReception staff was unprofessional, grumpy not friendly, door card wasn’t working properly but the reception staff keep sent me back for three times up and down. Room was dirty, shower door wasn’t working, sofa was dirty looks like didn’t clean, leftover milk on the fridge, tv remote broken and much more', 3, 141, 49, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 7, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(24, 1, 70, 'TASK000000024', NULL, 'copied email from the guest:\r\n\r\nOur room 604 is totally unacceptable noisy. Facing the main street, windows not soundproof, doors clapping from adjacent rooms - what a nightmare.\r\nSleeping impossible.', 3, 154, 51, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 5, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(25, 1, 51, 'TASK000000025', NULL, 'Received message in extranet booking.com that there is Shocking room. Fridge was not on and has cockroaches in it. Never again. You better put the deposit back in within 7 days from his previous Room 23. As per Hemant Kareem went to her room and checked the refrigerator is in working condition and no cockroach was found. Now she is asking for a swimming pool and gym. Even detail cleaning is done today in APT #23.\r\nAs per Kareem from the time of checking she is full of attitude. Coz of weather problems with the connectivity of TV. Daniel spoke with guest again and agreed to change room', 1, 33, 52, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 9, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(26, 1, 65, 'TASK000000026', NULL, 'As per message of FO in WA GC: Room 704 complain for a lot of bugs ? ? ? in the room', 3, 163, 54, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 5, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(27, 1, 55, 'TASK000000027', NULL, 'As per Faye guest complained presence of cockroaches in the room. Initially Vinko went to the room to have it sprayed which guests agreed. When the housekeeping went to the room they do not want to have it sprayed and wanted to change room. SB approved to change room. Guest was transferred from 704 to 1006', 3, 163, 58, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 5, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(28, 2, 54, 'TASK000000028', NULL, 'How do u work the oven', 2, 31, 59, '3', 1, '2025-05-17 11:27:27', 20, '2', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(29, 1, 70, 'TASK000000029', NULL, 'as per fo message on wa gc, rm 25 has bad smell. guest was transferred to apt 34', 1, 25, 62, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 9, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(30, 1, 55, 'TASK000000030', NULL, 'as per message of Faye in WA: guest complained about cockroach and urine smell in the room. requesting to change room', 3, 151, 64, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 5, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(31, 2, 26, 'TASK000000031', NULL, '(Kai) as per message of guest through WA GC, guest complained about water leakage from the washing machine | as per daniel instruction guest needs to be moved to 408 as he will try to fix the machine', 3, 149, 65, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(32, 1, 55, 'TASK000000032', NULL, '(Kai) as per message of fo in WA GC, guest complained about cockroach in the room. we offered to transfer to another room but as per fo guest refused to transfer and left', 3, 163, 69, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 5, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(33, 1, 70, 'TASK000000033', NULL, 'As per Kareem in WhatsApp. This guest checkout early - as per her there was too much sounds from renovation apts. on level 5 and she cannot stay like this. I told her we will shift you to another Apt. she says she made arrangements at her friends place and she want to checkout.', 1, 105, 70, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 11, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(34, 2, 64, 'TASK000000034', NULL, 'As per Faheem room 57 also complaining about the smell due to on going renovation in 5th floor. He was moved to Room 33. Approved by SB', 1, 104, 71, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 10, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(35, 2, 64, 'TASK000000035', NULL, 'As per Faheem room 58 complaining about the smell due to on going renovation in 5th floor. He was moved to Room 32. Approved by SB', 1, 105, 72, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 10, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(36, 1, 70, 'TASK000000036', NULL, '(kai) as per faye message on WA gc, guest complained about the noise in the room.\r\nguest moved to 1009', 3, 197, 73, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(37, 1, 55, 'TASK000000037', NULL, 'The smell in my bathroom smelt like a cigarette testing lab, any cigarette that has ever been smoked has done so in that bathroom. If a smell can ever depart from the deep dark depths of stenchlnd', 2, 47, 74, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(38, 1, 4, 'TASK000000038', NULL, 'Chat from Mirza in WhatsApp Booking #38329: PAUL DORNAN - Can you please change the room. Guest checked-in just now and came down stating that the room is dirty. Daniel is checking the room now. Guest was transferred from 909 to 708. Room was not cleaned by HK', 3, 186, 76, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 5, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(39, 2, 22, 'TASK000000039', NULL, 'As per Faheem Room 28 wants to change the room. As room has a WIFI issue. Daniel went to the room and was able to fixed the internet. No need to transfer', 1, 28, 77, '2', 1, '2025-05-16 23:27:27', 15, '2', NULL, NULL, NULL, 11, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(40, 2, 12, 'TASK000000040', NULL, 'As per Faye: From yesterday they complaining for the dishwasher\r\nThey complaining for the TV is not a smart TV And also bugs coming out of the drain. BUT they asking for upgrade for free And I refuse I said we can change you room to the same type of room you are using now but if you need an upgrade you will have to pay a fee. And they are not happy. Guest transferred to 1004. Daniel spoke and assisted guest.', 3, 182, 80, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(41, 1, 55, 'TASK000000041', NULL, 'I will never stay with you again an absolute disgrace \r\nWhy because there was an infestation of cockroaches in the whole room I have photos as proof \r\n2 dirty cotton buds were in the bed when my wife turned down the bedding for the sat night sleep \r\nAnd after paying 300 dollars to stay with you I’m expected to pay for my car to park on your premises I have all\r\nPhoto evidence and wish you to consider a full refund there was even ridisule spray over everything from the pest company feel free to ring me as I will never use your hotels again David foster', 2, 38, 82, '1', 1, '2025-05-16 13:27:27', 15, '2', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(42, 1, 65, 'TASK000000042', NULL, 'Very comfortable, spacious and neat', 2, 34, 83, '3', 1, '2025-05-17 11:27:27', 15, '2', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(43, 2, 22, 'TASK000000043', NULL, 'No feedback just trying to connect to tv', 2, 52, 88, '3', 1, '2025-05-17 11:27:27', 20, '2', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27'),
(44, 1, 70, 'TASK000000044', NULL, 'No TV In Bedroom', 2, 4, 94, '3', 1, '2025-05-17 11:27:27', 20, '2', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 0, NULL, '2025-05-16 05:27:27', '2025-05-16 05:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `task_sources`
--

CREATE TABLE `task_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_sources`
--

INSERT INTO `task_sources` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Customer Feedback', 1, NULL, NULL),
(2, 'GenAI Task', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `emp_category_id` bigint(20) DEFAULT NULL,
  `emp_job_type_id` bigint(20) DEFAULT NULL,
  `primary_location_id` bigint(20) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `whats_app_no` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `phone_no`, `emp_category_id`, `emp_job_type_id`, `primary_location_id`, `photo`, `whats_app_no`, `status`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'System Admin', 'admin@fountainitservice.com', 'admin', '0000-00-00 00:00:00', '$2y$10$psFq/51scqiKS7W0GuMz6uRsj.nHqCwk/To22coPs2s5l5gWCKDzq', '8801885000111', 3, 1, 99999, '2023_12_1701956810-4813.png', '8801885000111', 'APPROVED', 1, 'Xxqo4izRX9pL6Y32SbNyWN1kZkQi0rp67cvZ18g1AtlTBoSfX3MnnlbwIlYZ', '0000-00-00 00:00:00', '2024-05-20 19:59:03'),
(3, 'Spencer Bailey', 'sbailey@apxhotelsapartments.com', 'SpencerB', '0000-00-00 00:00:00', '$2y$10$aWl4Xe2tqLxBiG0RjKN0UeMlD/io.ulhyw0urjdkHapAvSRsEN0W2', '61438689597', 2, 1, 2, '2023_12_1702011779-2969.jpg', '61438689597', 'APPROVED', 1, 'KpSJ4KZUFtPAWreAI9MFAZ93SE0TundcyeKLBxc5tVgEylByF0Xl9wb4ZCD5', '0000-00-00 00:00:00', '2024-09-09 10:50:57'),
(4, 'Ruby Rebecca Paguirigan Baggao', 'urpb026@gmail.com', 'RubyB', '0000-00-00 00:00:00', '$2y$10$Xgh7aMbQykk4P34niwWywugwr7cZ1UvLBg2bvqSq2NJ6L/GE1uRJK', '09687262546', 3, 2, 99999, '2024_03_1710395814-0545.jpg', '09687262546', 'APPROVED', 1, 'BJDg3GykCqOS8Eckjy0XMQKl4qrxReiFhBAdt8TutB6Tuxd4mYvxJS61392f', '0000-00-00 00:00:00', '2024-04-09 23:30:21'),
(5, 'Shaola Camille Baquiran', 'shaolabaquiran@gmail.com', 'ShaolaB', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '+630928211117', 3, 3, 99999, '', '639282111175', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-21 23:45:55'),
(6, 'Rosy Seno', 'rosy_lynn888@yahoo.com', 'RosyS', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '639761109980', 3, 4, 99999, '2023_12_1703141804-6187.jpg', '639761109980', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-22 00:21:58'),
(7, 'Ofel Magalona', 'ofelpm@gmail.com', 'OfelM', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '+639155441068', 3, 5, 99999, '', '639155441068', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2024-05-23 12:44:00'),
(8, 'Franz Camila', 'franziacamila@gmail.com', 'FranzC', '0000-00-00 00:00:00', '$2y$10$MkibrPS.7Xa3GiuXlgQUoO55DJM1U8J/UDZi8isXVjvQ7vqLwlIKe', '+639257390990', 3, 5, 99999, '2023_12_1703601447-5503.jpg', '+639257390990', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2024-05-22 20:06:44'),
(9, 'Louie John Bandolon', 'ljbandolon@outlook.com', 'LouieB', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '+639272704205', 3, 6, 99999, '2023_12_1703143827-3297.jpg', '09272704205', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-30 19:45:09'),
(10, 'Chester Flores', 'chesterkf@gmail.com', 'ChesterF', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '09173630845', 3, 7, 99999, '2023_12_1703146682-8949.jpg', '09173630845', 'APPROVED', 0, '', '0000-00-00 00:00:00', '2024-04-28 21:08:12'),
(11, 'Cee Ann', 'cac@gmail.com', 'CeeannC', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '1111111111111', 3, 7, 99999, '1', '1111111111111', 'APPROVED', 0, '', '0000-00-00 00:00:00', '2024-04-28 21:09:13'),
(12, 'Veronica Tiamson', 'vriennetiamson@gmail.com', 'VeronicaT', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '09455891870', 3, 8, 99999, '2023_12_1703146741-9096.jpg', '09455891870', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-22 00:30:53'),
(13, 'Kaizen Ann Postrado', 'kaizen.matawaran@yahoo.com', 'KaizenP', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '09772778981', 3, 9, 99999, '2023_12_1703146567-7833.jpg', '09772778981', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-22 00:16:07'),
(14, 'Nonie May Aton', 'noniemay.aton@yahoo.com', 'NonieA', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '09620419921', 3, 9, 99999, '2023_12_1703146613-2800.jpg', '09620419921', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-22 00:31:31'),
(15, 'Tasi Rajaratnam', 'fc@apxhotelsapartments.com', 'TasiR', '0000-00-00 00:00:00', '$2y$10$qc/NWH9h3Ss32H4AGDnoz.2DEB8jX/YCRMbrO1lsxxnvO3zC.Szhq', '040528918', 2, 10, 2, '', '61405289187', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-11 21:27:25'),
(16, 'Erandi Maheshi', 'fa@apxhotelsapartments.com', 'ErandiM', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '449530409', 2, 18, 2, '', '0061449530409', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2024-01-10 14:09:59'),
(17, 'Nabin Bhandari', 'inabin77@gmail.com', 'NabinB', '0000-00-00 00:00:00', '$2y$10$vt0gVlLEwbONTp/Z5Uev4uc.OihvFws6ha4.q664n/Dkp.ZBcqlOO', '405661004', 1, 12, 2, '2023_12_1702347237-6922.jpg', '61405661004', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2024-08-29 06:43:12'),
(18, 'Saliq Mohammed', 'mohammedsaliq334@gmail.com', 'SaliqM', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061466435195', 1, 12, 2, '', '0061466435195', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Carey Chee', 'CLesleyChee@hotmail.com', 'CareyC', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061401442264', 1, 13, 2, '', '0061401442264', 'APPROVED', 0, '', '0000-00-00 00:00:00', '2024-03-21 14:52:26'),
(20, 'Dixit Patel', 'pateldixit14295@gmail.com', 'DixitP', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061401539830', 1, 12, 2, '', '0061401539830', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Nabiya Rahman', 'Nabia.rahman1@gmail.com ', 'NabiyaR', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '61416650173', 1, 12, 2, '', '61416650173', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Hemant Das', 'hkr_das@yahoo.com', 'HemantD', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '61430396606', 2, 14, 1, '', '61430396606', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2024-04-03 14:11:30'),
(23, 'Daniel Stojkovski', 'om.aws@apxhotelsapartments.com', 'DanielS', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061468418540', 1, 15, 3, '', '0061468418540', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2024-01-15 18:39:58'),
(24, 'Ziauddin Mirza', 'ziauddin44@yahoo.com', 'ZiauddinM', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061469702943', 1, 12, 3, '', '0061469702943', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Lindsay MacGregor', 'lindsaymacgregor01@gmail.com', 'LindsayM', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061415269399', 1, 12, 3, '', '0061415269399', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Shabuddin Mohammed', 'mdshahab3@mgail.com', 'ShabuddinM', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061450503036', 1, 12, 3, '', '0061450503036', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Sara Elamin', 'sara.elamin1@outlook.com', 'SaraE', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061410331503', 1, 12, 1, '', '0061410331503', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Vinko Firulovic', 'vinko.firulovic@gmail.com', 'VinkoF', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061493512276', 2, 13, 3, '', '0061493512276', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Syed Faheem Ali', 'afaheem297@gmail.com', 'SyedA', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '431628655', 1, 12, 1, '2023_12_1702645299-0251.jpg', '+61431628655', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-16 05:01:39'),
(30, 'Susal Rajbhandari', 'susal.rajbhandari1995@gmail.com', 'SusalR', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061452445331', 1, 12, 3, '', '0061452445331', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Nabil Ahmed Mohammed', 'nabilahmed425@gmail.com', 'NabilA', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '00413236254', 1, 12, 3, '', '00413236254', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-21 03:06:31'),
(32, 'Bidyut Kundu', 'Kundu9116@gmail.com', 'BidyutM', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '047027008', 1, 16, 3, '2023_12_1703049654-4367.jpg', '0061451950007', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-20 21:20:54'),
(34, 'Cherry Ann Agati', 'chynnagati@gmail.com', 'CherryA', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061467939597', 3, 12, 1, '', '0061467939597', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2023-12-22 16:59:54'),
(35, 'Theofania Karanikola', 'fanoyz@hotmail.com', 'TheofaniaK', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '0061401428748', 2, 12, 3, '', '0061401428748', 'APPROVED', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Shakeeb Uddin Ahmed Farooqui', 'shakeebf407@gmail.com ', 'ShakeebF', '0000-00-00 00:00:00', '$2a$12$vAnssCA5da2MqjuTLiohOenVnxQAuxf7DLWH2RW2YYAkVrlzDRizO', '046694495', 1, 12, 1, '2024_04_1712236950-8054.jpg', '0466944954', 'APPROVED', 1, '', '0000-00-00 00:00:00', '2024-04-05 05:22:30'),
(38, 'Zubair Mirza', 'zubairmirza001992@gmail.com', 'ZubairM', NULL, '$2y$10$wyvDErZgtxhYx6EMf1Xm6uZQXstV13IEthynIPxbyrNrfcHotJDaq', '61451950007', 1, 12, 3, '', '61451950007', 'APPROVED', 1, NULL, '2023-12-15 20:37:44', '2024-05-28 01:58:13'),
(39, 'APX Housekeeping', 'perfectppcleaningservices@mail.com', 'APXHK', NULL, '$2y$10$xykgIPm2kFR1EyvJZyh47uJ/VdFGDMRpI3G/zL8Xpi/71BOR92hVm', '61413039744', 1, 14, 99999, '', '61413039744', 'APPROVED', 1, NULL, '2023-12-17 23:57:54', '2023-12-17 23:57:54'),
(40, 'IOS Tester', 'odvuturay@gmail.com', 'ios.user', NULL, '$2y$10$keFn4G8UdUDfx2QwhhvxruyhXsdkrEbJK25ewPavHkVyeV9T4iytC', '01832819722', 3, 14, 99999, '', '01832819722', 'APPROVED', 1, NULL, '2024-01-01 04:49:21', '2024-05-07 22:22:25'),
(41, 'awoxpe', 'odvuturay1@gmail.com', 'android.user', NULL, '$2y$10$VDpXU6dhPNJIT8iT5mXnj.9VGDHu9b62YZwGFo.4V0GmWPGR5tNii', '+93880175620', 2, 14, 99999, '', 'dgplls', 'APPROVED', 1, NULL, '2024-01-01 05:20:06', '2025-02-08 07:36:14'),
(42, 'Yulan Kumar Chaudhary', 'yulanchaudhary9999@gmail.com', 'YulanC', NULL, '$2y$10$aMs668PAq5jKtYZZypzT6OdU4emsthYXneUpyqKwXJP5X.Don3afy', '+61426665972', 1, 12, 2, '2024_05_1717145281-5543.jpg', '61426665972', 'APPROVED', 1, NULL, '2024-01-31 16:46:18', '2024-09-13 16:42:05'),
(43, 'Edelweiss P. Bagayas', 'edzydamian17@gmail.com', 'EdelweissB', NULL, '$2y$10$YgOWFwyF8/Fui202iy00/OXQxPOZGU0zbfYOzRlNBF2RxuJbQszQi', '09295708839', 3, 9, 99999, '2024_02_1707711249-0445.png', '09295708839', 'APPROVED', 1, NULL, '2024-02-12 20:14:09', '2024-02-12 20:14:09'),
(44, 'Francis Iglesias', 'francisiglesias421@gmail.com', 'FrancisI', NULL, '$2y$10$S7SfpMQD1JR8Khrwb.WFUe8uRImj4VYN.czruFiy.TJRrKg8Jkd.u', '09163411861', 3, 3, 99999, '2024_03_1709887982-3853.jpg', '09163411861', 'APPROVED', 1, NULL, '2024-03-09 00:53:02', '2024-03-09 00:53:02'),
(45, 'Mohammed Abdul Kareem', 'eng.mdkareem@gmail.com', 'MohammedK', NULL, '$2y$10$5.vPBIAng7y52QKcCAr0v.parik6GuA6CMtNbfj8.dx0ERBZlAlgO', '+61043560118', 1, 12, 3, '2024_03_1710395683-4547.jpg', '00435601180', 'APPROVED', 1, NULL, '2024-03-14 21:35:49', '2024-05-22 18:12:37'),
(46, 'Ratinesh Sharma', 'ratineshsharma1965@gmail.com', 'SharmaR', NULL, '$2y$10$9jUdNmalmN6dlpPqFAx4iez82trAaiXNgO7RCrpJyblJ2It7I0KKy', '61430098606', 1, 13, 2, '', '61430396606', 'APPROVED', 0, NULL, '2024-03-21 15:03:31', '2024-04-11 13:03:51'),
(47, 'Matias Ramirez', 'matiasmoto0@gmail.com', 'MatiasR', NULL, '$2y$10$NStwsIwAF9bI8bwPSd1lNeaPbvUKh50AnuHKY9eX5f6tQ1F1.bNUm', '61404105710', 1, 16, 1, '', '61404105710', 'APPROVED', 0, NULL, '2024-04-08 18:11:18', '2024-05-13 14:29:44'),
(48, 'KRISTY LYNN  AACHE', 'ashykristylyn@gmail.com', 'KristyA', NULL, '$2y$10$Y0qXh8NEBIemagOuetsYbOfgvSN3nFVOKDIx2v0bF1GXZ25AVwv4S', '61422032661', 1, 12, 99999, '2024_04_1712711692-0369.jpg', '61422032661', 'APPROVED', 0, NULL, '2024-04-10 15:14:52', '2024-05-30 19:30:23'),
(49, 'Daniel Brisola', 'Dbdvargas@gmail.com', 'DanielB', NULL, '$2y$10$zqMtWNlV49UjZyA0xHOVz.5jytQ5yuhOeM61fSgaeTwW3vNKATuy.', '+93407161404', 2, 13, 2, '2024_08_1723304696-7342.jpg', '61407161404', 'APPROVED', 1, NULL, '2024-04-12 12:53:16', '2024-08-11 05:44:56'),
(50, 'TANKA BAHADUR THAPA', 'tankabdrthapa591@gmail.com', 'TankaT', NULL, '$2y$10$TT7NE79N0LBqNZlz635YzuKWeQXIMkE0peMH859rIaYkpuIdEIP0G', '61450526815', 1, 16, 1, '', '61450526815', 'APPROVED', 0, NULL, '2024-04-20 01:22:41', '2024-05-13 14:29:02'),
(51, 'Hazel Jade Corpus', 'hjcorpus@gmail.com', 'HazeljadeC', NULL, '$2y$10$ZBA8fdZ2azhOVhzg1Ky4zu29e0gZfXs.ytch4YUavDLOBFLQGc1xe', '09054351723', 3, 7, 99999, '', '09054351723', 'APPROVED', 1, NULL, '2024-04-22 13:54:18', '2024-04-22 18:15:01'),
(52, 'Mariellie San Jose Reyes', 'daportessjr@gmail.com', 'MariellieR', NULL, '$2y$10$/sKM3ueTRZ4A60FNlkxbjeGYRLtUCZar03ZkHsjzALLWUL3LLLEle', '09816773580', 3, 7, 99999, '', '09816773580', 'APPROVED', 0, NULL, '2024-04-29 13:32:32', '2024-04-30 14:07:42'),
(53, 'Khate Labuson', 'khate.labuson@gmail.com', 'KhateL', NULL, '$2y$10$LtPSDub6XxgrHFuxbq0bE.gs5EJAECaQJY/BUGIyUKOOjWRRqyuqy', '0939352891307', 3, 7, 99999, '', '0939352891307', 'APPROVED', 1, NULL, '2024-05-07 14:27:06', '2024-05-07 14:27:06'),
(54, 'Yukesh Bajgain', 'yukeshbajgain1995@gmail.com', 'YukeshB', NULL, '$2y$10$eM8cfcTvsohlc6.giOnRy.USS/kAu7SSygB5CcOl4V6pltmkwrd42', '+61435459300', 1, 16, 99999, '2024_05_1715602135-0116.jpg', '61435459300', 'APPROVED', 1, NULL, '2024-05-13 14:31:30', '2024-05-14 02:08:55'),
(55, 'Sanjeeb Samba', 'sanjeebsamba@gmail.com', 'SanjeebS', NULL, '$2y$10$8ZQ0Wb9oBJAPb81BuT/LKOzcmL3XMPhtN/qgUtmYIt1M1QcqV8.uK', '61452320267', 1, 12, 99999, '', '61452320267', 'APPROVED', 1, NULL, '2024-05-27 15:09:01', '2024-05-27 15:09:01'),
(56, 'Fazil Parvez Mohammed', 'fazilparvez88@gmail.com', 'FazilparvezM', NULL, '$2y$10$n4vYL1acO9f0QGZGb0hB8uV.9G4JHkdAfaEXJnEw/RB2ISyfMaBL2', '61469058216', 1, 12, 3, '2024_06_1718171457-3355.jpg', '61469058216', 'APPROVED', 1, NULL, '2024-06-12 19:50:57', '2024-06-12 19:50:57'),
(57, 'Malik Subhan Mohammed', 'workmalik01@gmail.com', 'maliksubhanM', NULL, '$2y$10$3epIVruDFIWuQHpm6.aWR.dh6sV/iP2imyXylGd0Ka2UXdxcxrGVe', '61451365752', 1, 13, 3, '2024_06_1719550177-9457.jpg', '61451365752', 'APPROVED', 1, NULL, '2024-06-28 18:49:38', '2024-06-28 18:49:38'),
(58, 'Suman Ghimire', 'sumanghrnp@gmail.com', 'SumanG', NULL, '$2y$10$VgKlQR9tiTul8B6lnW.mkuGbi8HaqOZGpQpnxJ49HuDv6HG2ep55C', '61425183318', 1, 16, 1, '2024_08_1724371340-0549.jpg', '61425183318', 'APPROVED', 1, NULL, '2024-08-23 04:02:20', '2024-08-23 04:02:20'),
(59, 'Ann Sayson', 'saysonrann08@gmail.com', 'AnnsaysoN', NULL, '$2y$10$CLY/wxioFpnbp4fVfSKyU.h7cA3UlFXfqihzF0hrh7JGAWkwMJ4j2', '09178760608', 3, 4, 99999, '2024_09_1727483772-7830.jpg', '09178760608', 'APPROVED', 1, NULL, '2024-09-28 04:36:13', '2024-09-28 04:36:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_sources`
--
ALTER TABLE `task_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `task_sources`
--
ALTER TABLE `task_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
