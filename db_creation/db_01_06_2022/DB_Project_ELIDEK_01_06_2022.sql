-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 02, 2022 at 11:26 AM
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
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`admin_id`, `admin_name`) VALUES
(3019, 'impedit'),
(3022, 'ea'),
(3030, 'maxime'),
(3031, 'aut'),
(3037, 'iusto'),
(3067, 'et'),
(3072, 'quis'),
(3083, 'ut'),
(3090, 'ea'),
(3103, 'eum'),
(3104, 'dolor'),
(3114, 'sequi'),
(3120, 'aut'),
(3126, 'et'),
(3139, 'et'),
(3154, 'id'),
(3162, 'ratione'),
(3165, 'dolore'),
(3168, 'nihil'),
(3187, 'adipisci');

-- --------------------------------------------------------

--
-- Table structure for table `deliverable`
--

CREATE TABLE `deliverable` (
  `deliverable_title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliverable_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `deliverable_summary` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliverable`
--

INSERT INTO `deliverable` (`deliverable_title`, `deliverable_date`, `project_id`, `deliverable_summary`) VALUES
('Doloremque tempora aut similique doloremque non qui perferendis architecto.', '1970-01-06', 5192, 'Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Queen, but she could not answer without a porpoise.\' \'Wouldn\'t it really?\' said Alice angrily. \'It wasn\'t very civil of you to set.'),
('Veniam repellendus dignissimos totam et tenetur vitae labore.', '1970-02-02', 5093, 'And I declare it\'s too bad, that it seemed quite dull and stupid for life to go through next walking about at the frontispiece if you please! \"William the Conqueror, whose cause was favoured by the.'),
('Omnis non quo rerum repellendus laboriosam.', '1970-02-14', 5424, 'Mouse, turning to Alice for some time busily writing in his sleep, \'that \"I like what I say--that\'s the same height as herself; and when she turned the corner, but the Mouse to Alice severely. \'What.'),
('Debitis illum animi molestias quas sed.', '1970-07-09', 5382, 'Mock Turtle. Alice was rather glad there WAS no one listening, this time, sat down with wonder at the March Hare,) \'--it was at the end of the room again, no wonder she felt sure it would be as well.'),
('Sed repudiandae ducimus facilis inventore dolorum.', '1971-04-19', 5248, 'King. (The jury all brightened up again.) \'Please your Majesty,\' he began, \'for bringing these in: but I hadn\'t begun my tea--not above a week or so--and what with the lobsters, out to sea as you.'),
('Ipsum alias aliquid iste ad nulla.', '1971-06-17', 5297, 'Hearts, carrying the King\'s crown on a branch of a treacle-well--eh, stupid?\' \'But they were playing the Queen put on her lap as if a dish or kettle had been for some time in silence: at last she.'),
('Quis quo consectetur inventore minus.', '1972-03-20', 5005, 'I can\'t quite follow it as well be at school at once.\' However, she soon found out a new idea to Alice, \'Have you seen the Mock Turtle, who looked at it, busily painting them red. Alice thought she.'),
('Officiis asperiores voluptate et alias consequatur necessitatibus quod.', '1972-10-02', 5001, 'Duchess asked, with another dig of her childhood: and how she would manage it. \'They were obliged to write this down on her spectacles, and began picking them up again with a great hurry. An.'),
('Aliquid enim modi voluptatum nobis et.', '1972-12-20', 5009, 'Alice, and her face like the look of the jury asked. \'That I can\'t be Mabel, for I know all sorts of things--I can\'t remember half of fright and half of fright and half of fright and half believed.'),
('Sunt voluptatibus soluta vero nobis fugiat et.', '1973-03-06', 5058, 'Alice did not notice this question, but hurriedly went on, half to itself, \'Oh dear! Oh dear! I shall ever see such a capital one for catching mice--oh, I beg your pardon!\' cried Alice again, for.'),
('Nemo ratione vel dolorum occaecati.', '1973-04-02', 5376, 'That he met in the distance. \'And yet what a Mock Turtle at last, and managed to put it in large letters. It was the first position in which the words don\'t FIT you,\' said the Mouse, getting up and.'),
('Iure repudiandae eligendi maxime quisquam.', '1973-05-23', 5456, 'France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not, would not open any of them. However, on the bank, and of having nothing to what I get\" is the driest.'),
('Ipsa quia natus rerum maxime fuga ut quo.', '1973-09-24', 5009, 'Queen merely remarking that a red-hot poker will burn you if you only kept on good terms with him, he\'d do almost anything you liked with the bread-knife.\' The March Hare interrupted in a bit.\'.'),
('Omnis atque voluptatem eos quae aut non dolores.', '1974-04-30', 5219, 'And she tried her best to climb up one of them.\' In another moment down went Alice like the look of the water, and seemed to be a very small cake, on which the words came very queer indeed:-- \'\'Tis.'),
('Aspernatur iure eum provident ut quis adipisci qui.', '1976-05-21', 5272, 'And the moral of that is, but I can\'t get out again. That\'s all.\' \'Thank you,\' said the Dormouse, without considering at all for any lesson-books!\' And so it was very nearly getting up and say \"How.'),
('A culpa quia inventore illum magni aliquid.', '1976-08-29', 5316, 'Let me see: that would be quite absurd for her to begin.\' He looked at it, busily painting them red. Alice thought over all she could not remember the simple rules their friends had taught them:.'),
('Deserunt quia et optio.', '1976-12-03', 5098, 'Duchess, digging her sharp little chin. \'I\'ve a right to grow here,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that proved it at last, they must be the best thing to.'),
('Occaecati est temporibus ut consequatur et dignissimos cupiditate.', '1976-12-23', 5427, 'Alice had begun to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the sea, though you mayn\'t believe it--\' \'I never saw one, or heard of \"Uglification,\"\' Alice ventured to remark..'),
('Repellendus alias consectetur consequatur rerum.', '1977-03-27', 5058, 'Just then she walked on in a hurry: a large kitchen, which was lit up by wild beasts and other unpleasant things, all because they WOULD not remember ever having heard of uglifying!\' it exclaimed..'),
('Fuga modi similique consequatur quos non nemo dolores.', '1977-12-13', 5014, 'Cat. \'I said pig,\' replied Alice; \'and I wish you were or might have been changed several times since then.\' \'What do you know about it, so she set off at once: one old Magpie began wrapping itself.'),
('Et est est ad possimus.', '1978-04-10', 5141, 'The question is, what?\' The great question is, what?\' The great question certainly was, what? Alice looked all round the court and got behind him, and said to Alice; and Alice heard the Queen\'s.'),
('Ab sunt laboriosam commodi aspernatur unde laborum doloribus.', '1978-09-27', 5429, 'Mouse was swimming away from him, and very soon finished it off. * * * * * * * \'Come, my head\'s free at last!\' said Alice in a piteous tone. And she began nursing her child again, singing a sort of.'),
('Eum odio ut doloremque aut voluptatem exercitationem.', '1978-12-08', 5271, 'Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was ever to get rather sleepy, and went in. The door led right into a conversation. Alice felt a little shriek,.'),
('Non commodi impedit labore neque consequatur.', '1979-07-26', 5086, 'Two. Two began in a helpless sort of present!\' thought Alice. One of the edge of her sister, who was a table, with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking.'),
('Fugiat perspiciatis recusandae quia minus in culpa consequatur incidunt.', '1981-07-17', 5494, 'Gryphon: and Alice looked all round the rosetree; for, you see, so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t put my arm round your waist,\' the Duchess was sitting next to her. \'I.'),
('Placeat nostrum consequuntur odio atque.', '1982-02-21', 5490, 'All this time the Queen said to herself, \'Why, they\'re only a pack of cards: the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a more subdued.'),
('Non beatae in reiciendis consequuntur neque molestiae.', '1983-09-11', 5206, 'Alice. \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t help it,\' she said to herself. \'Of the mushroom,\' said the March Hare: she thought it had been. But her sister on the.'),
('Sint molestiae ea esse dolor nemo quae.', '1983-12-26', 5235, 'Gryphon. Alice did not quite know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she felt that it was neither more nor less than no time to see how he did not sneeze, were the verses.'),
('Minima excepturi molestiae suscipit.', '1984-02-21', 5141, 'I should think it would be QUITE as much as serpents do, you know.\' \'I DON\'T know,\' said the Mock Turtle, and said \'What else have you executed, whether you\'re a little bit, and said \'What else have.'),
('Aut id voluptates minus ipsa similique facilis.', '1986-05-01', 5212, 'Miss, we\'re doing our best, afore she comes, to--\' At this moment Five, who had spoken first. \'That\'s none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a low curtain.'),
('Quam voluptas suscipit molestiae dicta sunt repellendus laboriosam.', '1986-11-01', 5001, 'Said he thanked the whiting kindly, but he would deny it too: but the tops of the words \'DRINK ME,\' but nevertheless she uncorked it and put it right; \'not that it would be like, \'--for they haven\'t.'),
('Magnam distinctio earum distinctio harum porro ducimus dolor et.', '1986-12-11', 5382, 'I\'m a hatter.\' Here the Dormouse go on for some time without hearing anything more: at last it sat for a conversation. \'You don\'t know of any use, now,\' thought poor Alice, and tried to fancy to.'),
('Nihil fugiat sed occaecati excepturi neque voluptas.', '1987-01-29', 5330, 'Lobster; I heard him declare, \"You have baked me too brown, I must go and get in at all?\' said the Cat. \'--so long as I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to kill it in.'),
('Ab rerum quia consequatur ut sunt.', '1987-02-03', 5235, 'Duchess\'s cook. She carried the pepper-box in her lessons in the last time she heard the Rabbit say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as.'),
('Perferendis nostrum iste delectus recusandae est et.', '1988-03-06', 5375, 'I know I have dropped them, I wonder?\' Alice guessed who it was, and, as a partner!\' cried the Mock Turtle at last, with a yelp of delight, and rushed at the other, trying every door, she walked.'),
('Ex dicta quos aut recusandae id quo.', '1988-03-09', 5297, 'See how eagerly the lobsters to the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard it before,\' said Alice,) and round the court with a great hurry. \'You.'),
('Ipsum non impedit expedita sint voluptatibus et voluptate.', '1989-06-10', 5415, 'And so it was growing, and growing, and she put them into a tree. \'Did you speak?\' \'Not I!\' said the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re.'),
('Ab quae architecto ut quis mollitia velit est.', '1990-02-09', 5388, 'Will you, won\'t you join the dance? \"You can really have no answers.\' \'If you can\'t swim, can you?\' he added, turning to Alice. \'Nothing,\' said Alice. \'Well, I can\'t show it you myself,\' the Mock.'),
('Quod repellat voluptate ullam non voluptates voluptatem sunt.', '1990-03-17', 5429, 'I should think you\'ll feel it a very difficult question. However, at last came a rumbling of little birds and beasts, as well as the Caterpillar took the watch and looked at Two. Two began in a.'),
('Aliquam in rerum neque nostrum.', '1990-06-16', 5098, 'I can find it.\' And she began looking at Alice for some time after the rest of the house opened, and a large pigeon had flown into her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush!.'),
('Laudantium quae et dignissimos eum ex.', '1990-07-20', 5040, 'Hatter, \'you wouldn\'t talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'This is Bill,\' she gave her.'),
('Illo dolore repellendus et cum.', '1991-04-21', 5169, 'Gryphon. \'They can\'t have anything to say, she simply bowed, and took the cauldron of soup off the mushroom, and raised herself to some tea and bread-and-butter, and then at the Mouse\'s tail; \'but.'),
('Ea aperiam corporis doloribus praesentium quidem illum.', '1991-09-01', 5277, 'HE was.\' \'I never could abide figures!\' And with that she knew that it was certainly English. \'I don\'t know of any good reason, and as for the next moment she appeared on the same thing a bit!\' said.'),
('Expedita sed est voluptatum similique voluptatem.', '1992-06-13', 5123, 'Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little sharp bark just over her head to keep back the wandering hair that WOULD always get into that lovely garden. I think I can go.'),
('Eaque officia non quas eligendi.', '1992-12-26', 5005, 'This of course, I meant,\' the King was the first figure,\' said the King said to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets!.'),
('Quod ut voluptas rerum at.', '1993-02-12', 5040, 'I\'d hardly finished the guinea-pigs!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. The poor little thing howled so, that he had come to the Cheshire Cat sitting on a bough of a.'),
('Tempore minima molestias aspernatur voluptatum optio dignissimos odit dolores.', '1993-04-05', 5195, 'Mary Ann, and be turned out of sight, they were IN the well,\' Alice said to Alice; and Alice rather unwillingly took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of.'),
('Explicabo esse aliquid repellendus vero maxime.', '1993-09-18', 5026, 'Duck. \'Found IT,\' the Mouse only shook its head to hide a smile: some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you my adventures--beginning from this.'),
('Odit libero in quos commodi quo.', '1993-12-18', 5192, 'I suppose.\' So she began: \'O Mouse, do you know that you\'re mad?\' \'To begin with,\' the Mock Turtle drew a long and a Long Tale They were just beginning to end,\' said the Cat, and vanished. Alice was.'),
('Consectetur repudiandae nesciunt tempore similique aut asperiores natus temporibus.', '1994-07-09', 5247, 'William the Conqueror.\' (For, with all their simple sorrows, and find a pleasure in all directions, tumbling up against each other; however, they got thrown out to sea as you say things are \"much of.'),
('Hic sint ab neque minus et et.', '1995-07-21', 5162, 'Lizard, who seemed too much of a dance is it?\' Alice panted as she could. The next thing is, to get very tired of sitting by her sister sat still just as if a fish came to the jury, who instantly.'),
('Deleniti tenetur et consectetur quae voluptas dolor iste quas.', '1996-01-25', 5316, 'Duchess said to herself. \'I dare say you never even introduced to a lobster--\' (Alice began to say \'I once tasted--\' but checked herself hastily. \'I thought you did,\' said the Hatter grumbled: \'you.'),
('Quaerat et debitis ratione cum in consequatur possimus.', '1996-11-08', 5427, 'I think.\' And she went slowly after it: \'I never said I didn\'t!\' interrupted Alice. \'You must be,\' said the King. Here one of them attempted to explain it is all the rest, Between yourself and me.\'.'),
('Iusto qui praesentium ut consequatur similique voluptatem ex.', '1996-12-20', 5135, 'Knave. The Knave of Hearts, and I could not help bursting out laughing: and when she was saying, and the little door, so she went on, \'if you don\'t know much,\' said the White Rabbit, jumping up and.'),
('Beatae dolor quam qui beatae ipsa et.', '1998-07-28', 5337, 'Alice called out \'The Queen! The Queen!\' and the Queen, and Alice could see, as she tucked it away under her arm, that it might be hungry, in which the wretched Hatter trembled so, that Alice quite.'),
('Doloribus quia mollitia minus architecto maiores.', '1998-12-16', 5432, 'But, now that I\'m perfectly sure I don\'t like them raw.\' \'Well, be off, then!\' said the Pigeon; \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Hatter, \'you wouldn\'t talk about her.'),
('Ut impedit ut praesentium explicabo ut nihil.', '1998-12-22', 5376, 'Alice said very humbly; \'I won\'t indeed!\' said the Mock Turtle. \'Hold your tongue!\' added the Gryphon; and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was.'),
('Quidem voluptatem accusantium ea.', '1999-03-27', 5195, 'Hatter were having tea at it: a Dormouse was sitting on the shingle--will you come to the seaside once in her lessons in here? Why, there\'s hardly room for her. \'I wish I could say if I might.'),
('Autem et nihil inventore ipsum quis sed.', '1999-04-15', 5494, 'She hastily put down the middle, wondering how she would keep, through all her coaxing. Hardly knowing what she did, she picked her way into a butterfly, I should think it would like the wind, and.'),
('Dolorum vero sit exercitationem quo commodi.', '1999-09-07', 5135, 'I must be removed,\' said the White Rabbit blew three blasts on the hearth and grinning from ear to ear. \'Please would you like to be a LITTLE larger, sir, if you like,\' said the Cat, as soon as it.'),
('Odit facere velit facilis.', '1999-09-27', 5086, 'The next witness would be only rustling in the air. She did it so quickly that the pebbles were all shaped like the Queen?\' said the Hatter. \'It isn\'t directed at all,\' said the King. The next.'),
('Consequatur nulla necessitatibus dolorum.', '1999-11-02', 5233, 'I shall see it trying in a day or two: wouldn\'t it be murder to leave it behind?\' She said the Pigeon the opportunity of showing off a head unless there was no use in crying like that!\' By this time.'),
('Eaque id omnis excepturi nam quidem rerum.', '2000-01-16', 5497, 'Dormouse crossed the court, she said to Alice, they all cheered. Alice thought this must be getting somewhere near the right words,\' said poor Alice, \'when one wasn\'t always growing larger and.'),
('Eligendi necessitatibus velit perspiciatis at dolorem ea.', '2000-10-18', 5047, 'Then came a rumbling of little animals and birds waiting outside. The poor little thing sobbed again (or grunted, it was looking up into hers--she could hear the very tones of the house of the.'),
('Nulla distinctio natus maxime nemo.', '2001-09-23', 5322, 'Game, or any other dish? Who would not allow without knowing how old it was, and, as she spoke; \'either you or your head must be the best way to change the subject. \'Go on with the Lory, who at last.'),
('Quae dolor et iusto temporibus aut nam.', '2001-12-12', 5265, 'On which Seven looked up and straightening itself out again, and Alice could hardly hear the very middle of one! There ought to eat her up in a natural way again. \'I should like to try the first.'),
('Qui facere ad quaerat dolor est.', '2003-06-26', 5247, 'Alice. \'Exactly so,\' said the Hatter. \'I deny it!\' said the Duchess: \'and the moral of that is--\"Be what you mean,\' said Alice. \'I\'ve read that in some book, but I grow at a reasonable pace,\' said.'),
('Ut laudantium aut est quasi dolor nemo rem.', '2003-09-11', 5330, 'I say,\' the Mock Turtle replied, counting off the top of his tail. \'As if I must, I must,\' the King very decidedly, and there she saw them, they were trying to find that the reason is--\' here the.'),
('Voluptas dolore delectus hic quia sed eos recusandae.', '2004-02-06', 5456, 'Soup, so rich and green, Waiting in a loud, indignant voice, but she saw them, they were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, and be turned out of sight. Alice.'),
('Nostrum eaque adipisci commodi repudiandae.', '2004-02-20', 5219, 'Like a tea-tray in the morning, just time to see if she were saying lessons, and began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the air. She did not see anything that had.'),
('Consectetur in quas et nesciunt animi fuga fugit.', '2004-07-25', 5388, 'Alice noticed with some difficulty, as it happens; and if I shall think nothing of tumbling down stairs! How brave they\'ll all think me at all.\' \'In that case,\' said the Mock Turtle sang this, very.'),
('Eaque sed culpa odit alias.', '2004-10-15', 5169, 'You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head with great curiosity. \'It\'s a pun!\' the King added in a low, weak voice. \'Now, I give it up,\'.'),
('Delectus ducimus et hic dolores voluptas.', '2005-07-22', 5123, 'ARE you doing out here? Run home this moment, and fetch me a pair of gloves and a crash of broken glass, from which she concluded that it seemed quite dull and stupid for life to go nearer till she.'),
('Quaerat et maiores maxime tempora et.', '2006-03-01', 5497, 'MINE,\' said the White Rabbit, with a pair of white kid gloves, and she tried the effect of lying down with her head!\' Those whom she sentenced were taken into custody by the White Rabbit, trotting.'),
('Inventore quaerat rem error sequi nesciunt.', '2006-05-14', 5277, 'Do you think you\'re changed, do you?\' \'I\'m afraid I don\'t like them!\' When the pie was all very well as I used--and I don\'t take this young lady to see that she was as much as she had this fit) An.'),
('Excepturi aut delectus commodi iure suscipit asperiores.', '2006-12-11', 5093, 'King say in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Mock Turtle in a moment. \'Let\'s go on till you come and join the dance? Will you, won\'t you, will you, won\'t.'),
('Et aspernatur at quia quo iure sapiente.', '2006-12-19', 5099, 'THE KING AND QUEEN OF HEARTS. Alice was beginning to think this a very humble tone, going down on one side, to look over their slates; \'but it seems to suit them!\' \'I haven\'t the least notice of her.'),
('Reprehenderit consequatur quo et amet nulla.', '2007-02-26', 5271, 'The Footman seemed to think to herself, being rather proud of it: for she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this.'),
('Quia ullam nihil quo impedit sit incidunt.', '2009-01-17', 5173, 'I suppose.\' So she sat down and saying \"Come up again, dear!\" I shall remember it in the kitchen that did not dare to disobey, though she felt a violent blow underneath her chin: it had struck her.'),
('Quae corporis repudiandae deserunt aut consequatur iure dolorum.', '2009-11-05', 5375, 'Alice did not wish to offend the Dormouse indignantly. However, he consented to go on in a hurried nervous manner, smiling at everything that was said, and went by without noticing her. Then.'),
('Commodi laudantium et a.', '2010-01-08', 5265, 'Queen to play croquet with the words all coming different, and then hurried on, Alice started to her very much at this, that she began nibbling at the Hatter, and, just as well as she could not.'),
('Eius voluptas ab enim.', '2010-01-22', 5432, 'Alice. \'Come, let\'s hear some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a deep voice, \'What are they doing?\' Alice whispered to the Mock Turtle recovered his.'),
('Reprehenderit quisquam autem numquam nostrum necessitatibus dolor quia.', '2012-07-08', 5047, 'I beg your pardon,\' said Alice sadly. \'Hand it over here,\' said the White Rabbit, \'and that\'s the jury-box,\' thought Alice, \'it\'ll never do to come out among the people that walk with their hands.'),
('Quas repudiandae dolorem qui eaque minima recusandae.', '2012-09-18', 5104, 'I\'m sure I can\'t understand it myself to begin with,\' the Mock Turtle sighed deeply, and began, in rather a handsome pig, I think.\' And she went out, but it was labelled \'ORANGE MARMALADE\', but to.'),
('Dolor aut quae possimus cumque tempore molestiae.', '2013-05-18', 5206, 'She waited for some way, and nothing seems to suit them!\' \'I haven\'t the least notice of them bowed low. \'Would you tell me, Pat, what\'s that in the shade: however, the moment how large she had sat.'),
('Labore qui enim molestiae optio quam qui.', '2013-09-16', 5337, 'The Antipathies, I think--\' (she was rather doubtful whether she could not make out that it might end, you know,\' Alice gently remarked; \'they\'d have been that,\' said the White Rabbit blew three.'),
('Non necessitatibus ea esse quibusdam et quaerat officiis.', '2014-03-04', 5424, 'Alice, and, after waiting till she was trying to find that her idea of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, rather alarmed at the top of.'),
('Repellat et repellendus quae quo.', '2014-06-09', 5162, 'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I must have prizes.\' \'But who is to France-- Then turn not pale, beloved.'),
('Qui beatae quo est eos modi distinctio velit.', '2015-02-16', 5233, 'This did not dare to disobey, though she felt unhappy. \'It was a little of it?\' said the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the while, till at last.'),
('Eum iste error quas repellendus voluptatibus recusandae sed.', '2015-02-20', 5173, 'Alice did not dare to disobey, though she knew the right thing to eat or drink anything; so I\'ll just see what was the White Rabbit, \'but it doesn\'t matter much,\' thought Alice, \'or perhaps they.'),
('Veritatis iusto harum consequatur voluptas.', '2015-03-09', 5099, 'Alice in a sorrowful tone, \'I\'m afraid I\'ve offended it again!\' For the Mouse with an anxious look at me like that!\' He got behind him, and very neatly and simply arranged; the only difficulty was,.'),
('Modi perferendis ut aliquid harum quo.', '2015-07-16', 5014, 'And certainly there was mouth enough for it flashed across her mind that she remained the same thing,\' said the Caterpillar, just as I\'d taken the highest tree in the kitchen that did not at all.'),
('Natus illo et in autem quia commodi alias.', '2016-03-31', 5322, 'I wonder who will put on your head-- Do you think you could only see her. She is such a curious appearance in the distance, and she soon made out the words: \'Where\'s the other two were using it as.'),
('Et quia doloremque ex.', '2017-08-27', 5415, 'White Rabbit, who was peeping anxiously into its eyes were getting so used to call him Tortoise--\' \'Why did they live on?\' said the Gryphon: and Alice was more and more puzzled, but she gained.'),
('Similique facere maiores quasi aspernatur necessitatibus rem expedita reiciendis.', '2018-08-18', 5490, 'While the Duchess sang the second verse of the goldfish kept running in her hands, and she heard a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Rabbit hastily interrupted..'),
('Rerum eos odit aliquid facilis et occaecati.', '2018-10-11', 5212, 'Tillie; and they lived at the bottom of the room. The cook threw a frying-pan after her as she could, for her neck would bend about easily in any direction, like a snout than a pig, my dear,\' said.'),
('Eos voluptas id autem ex ipsa et ut.', '2020-02-10', 5104, 'They all made of solid glass; there was generally a ridge or furrow in the pictures of him), while the rest of my life.\' \'You are old,\' said the Caterpillar. \'I\'m afraid I don\'t want to go through.'),
('Ratione soluta nostrum consequatur aut.', '2021-10-25', 5026, 'Alice\'s elbow was pressed so closely against her foot, that there was room for this, and after a pause: \'the reason is, that I\'m doubtful about the twentieth time that day. \'No, no!\' said the.'),
('Debitis quae vero ullam magni et.', '2022-05-15', 5248, 'Alice had no idea what to beautify is, I can\'t be Mabel, for I know I have none, Why, I wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know.'),
('Dolores debitis architecto et incidunt et adipisci.', '2022-05-23', 5272, 'Cat\'s head began fading away the moment he was obliged to have finished,\' said the last words out loud, and the blades of grass, but she remembered trying to touch her. \'Poor little thing!\' It did.');

-- --------------------------------------------------------

--
-- Table structure for table `employer_manages_project`
--

CREATE TABLE `employer_manages_project` (
  `employer_id` int(11) NOT NULL,
  `org_id` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employer_manages_project`
--

INSERT INTO `employer_manages_project` (`employer_id`, `org_id`, `employer_name`) VALUES
(800, '106456', 'Yasmine Fay'),
(801, '134304', 'Jerrold Bode'),
(806, '118892', 'Prof. Max Hand II'),
(808, '125839', 'Claire Paucek PhD'),
(810, '125574', 'Prof. Akeem Brakus'),
(811, '129619', 'Kirsten Bernhard'),
(812, '106367', 'Lou Bednar PhD'),
(824, '132340', 'Prof. Nikolas Johnson DVM'),
(825, '121857', 'Gayle DuBuque Jr.'),
(834, '110598', 'Ms. Wilma Stracke DDS'),
(843, '133416', 'Paige Schinner IV'),
(846, '121795', 'Melissa Dare'),
(847, '110568', 'Aaron Aufderhar'),
(849, '104763', 'Mikayla Torphy'),
(855, '114906', 'Patricia Purdy'),
(861, '128334', 'Hector Kshlerin Sr.'),
(868, '114878', 'Kamron Hilpert'),
(888, '105550', 'Oda Funk'),
(891, '125199', 'Caroline Satterfield PhD'),
(899, '130087', 'Crystel Gottlieb');

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `org_id` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_postal_code` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimate_budget` float DEFAULT NULL,
  `private_budget` float DEFAULT NULL,
  `private_capital` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`org_id`, `org_name`, `org_street`, `org_number`, `org_postal_code`, `org_city`, `category`, `estimate_budget`, `private_budget`, `private_capital`) VALUES
('104763', 'Kautzer, Considine and Brown', 'Kelli Ferry', '85025', '60141', 'New Anna', ' Research Cebter', 0, 3.3996, NULL),
('105550', 'Medhurst Inc', 'Alexanne Mission', '5244', '12505', 'East Rebaview', ' Research Cebter', 0, 0, NULL),
('106367', 'Gutkowski and Sons', 'Adolf Rue', '0835', '44678', 'Lake Carmela', ' Research Cebter', 191252000, 0, NULL),
('106456', 'Cremin PLC', 'Bernier Harbor', '2516', '74964', 'Lake Fridatown', ' Research Cebter', 0, 6014820, NULL),
('110568', 'Wiza-Bernhard', 'Fadel Lane', '45219', '87748', 'Rueckerside', ' Research Cebter', 0, 0, NULL),
('110598', 'Hills Ltd', 'Eden Place', '312', '79413', 'New Jessikaburgh', ' Company', 0, 0, NULL),
('114878', 'Nicolas, Wunsch and Baumbach', 'Howell Isle', '497', '35416', 'Port Brodychester', ' Company', 0, 0, NULL),
('114906', 'McLaughlin-Hills', 'Schowalter Trail', '548', '81296', 'Spencerland', ' Company', 0, 0, NULL),
('118892', 'Feeney-McGlynn', 'Christopher Circle', '388', '29242', 'West Hobartstad', ' Company', 0, 0, NULL),
('121795', 'Schuster Inc', 'Russel Via', '920', '50374', 'Lake Shaniehaven', ' Company', 0, 0, NULL),
('121857', 'Wiza and Sons', 'Ardella Plaza', '750', '07826', 'New Randallhaven', ' Research Cebter', 0, 0, NULL),
('125199', 'Leffler and Sons', 'Hermiston Knoll', '975', '18922', 'Schoenland', 'University', 0, 0, NULL),
('125574', 'Tillman PLC', 'Emelie Trafficway', '6763', '39921', 'Hilpertburgh', ' Research Cebter', 0, 0, NULL),
('125839', 'Waters-Quigley', 'West Club', '713', '39345', 'New Marjoryberg', 'University', 2.75824, 0, NULL),
('128334', 'Klocko Ltd', 'Chesley Lake', '439', '51137', 'Lake Ari', ' Company', 572849000, 40.52, NULL),
('129619', 'Barton and Sons', 'Becker Extension', '01228', '59034', 'Lake Rubyeville', ' Research Cebter', 4836.66, 324083, NULL),
('130087', 'Stark, Waelchi and Ziemann', 'Taurean Station', '230', '19157', 'Macejkovicshire', ' Research Cebter', 18.0064, 0, NULL),
('132340', 'Cronin-Champlin', 'Herman Court', '6265', '18842', 'South Elisashire', ' Company', 0, 23.8549, NULL),
('133416', 'Powlowski-Breitenberg', 'Brekke River', '07117', '00547', 'Watsicaborough', 'University', 13, 35152900, NULL),
('134304', 'Rempel, Upton and Fay', 'Watsica Circles', '31079', '42020', 'Port Carleton', ' Research Cebter', 0, 686.35, NULL),
('134683', 'Runolfsdottir Ltd', 'Eichmann Tunnel', '37380', '84750', 'Schimmelland', 'University', 0, 12628.4, NULL),
('134742', 'Nienow, Mitchell and Witting', 'Koch Mews', '6342', '08319', 'Beermouth', 'University', 4720, 0, NULL),
('136170', 'Fritsch, Dickens and Pfeffer', 'Kevin Lane', '3891', '50028', 'Port Serena', ' Research Cebter', 31.6301, 0, NULL),
('136408', 'Schmeler-Kunde', 'Brekke Land', '537', '00920', 'Jacobsview', 'University', 59.344, 220586000, NULL),
('139200', 'Nienow-Marvin', 'Shanahan Village', '18147', '99392', 'East Santino', 'University', 0, 0, NULL),
('142181', 'Wolf, Hand and Murphy', 'Fay Valleys', '0649', '52766', 'Nolaton', ' Research Cebter', 10028800, 9469.18, NULL),
('144059', 'Turner LLC', 'Abshire Row', '01505', '25898', 'Port Guadalupe', ' Company', 0, 0.6138, NULL),
('144433', 'Buckridge-Bashirian', 'Schulist Hollow', '754', '61124', 'Lednerbury', 'University', 7897.95, 3970.1, NULL),
('145586', 'Predovic-Leffler', 'Brianne Port', '2443', '26821', 'Lake Cheyanneport', ' Company', 26250, 0, NULL),
('146072', 'Lebsack LLC', 'Heller Shore', '66802', '17324', 'East Adeline', ' Research Cebter', 0, 560.43, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_name`, `program_id`) VALUES
('nihil', 4015),
('aliquid', 4028),
('voluptate', 4030),
('omnis', 4044),
('consectetur', 4048),
('quia', 4053),
('quis', 4054),
('ut', 4061),
('pariatur', 4067),
('nihil', 4070),
('est', 4074),
('quasi', 4080),
('ad', 4082),
('tenetur', 4094),
('deserunt', 4097),
('inventore', 4101),
('similique', 4103),
('corrupti', 4107),
('debitis', 4109),
('architecto', 4117),
('dolor', 4128),
('est', 4129),
('voluptatem', 4141),
('voluptatibus', 4143),
('itaque', 4146),
('ea', 4157),
('consequuntur', 4167),
('ratione', 4173),
('ut', 4187),
('officiis', 4196);

-- --------------------------------------------------------

--
-- Table structure for table `program_belongs_to_admin`
--

CREATE TABLE `program_belongs_to_admin` (
  `admin_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_belongs_to_admin`
--

INSERT INTO `program_belongs_to_admin` (`admin_id`, `program_id`) VALUES
(3019, 4015),
(3022, 4028),
(3030, 4030),
(3031, 4044),
(3037, 4048),
(3067, 4053),
(3072, 4054),
(3083, 4061),
(3090, 4067),
(3103, 4070),
(3104, 4074),
(3114, 4080),
(3120, 4082),
(3126, 4094),
(3139, 4097),
(3154, 4101),
(3162, 4103),
(3165, 4107),
(3168, 4109),
(3187, 4117),
(3019, 4128),
(3022, 4129),
(3030, 4141),
(3031, 4143),
(3037, 4146),
(3067, 4157),
(3072, 4167),
(3083, 4173),
(3090, 4187),
(3103, 4196);

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`project_id`, `project_title`, `description`, `budget`, `start_date`, `end_date`, `duration`) VALUES
(5001, 'Modi perspiciatis molestiae provident exercitationem at.', 'Blanditiis perspiciatis hic ea non dicta sint. Ea reprehenderit nemo maiores quaerat inventore. Sed assumenda magni dolor. Doloribus quia explicabo sint eius quasi similique.', 185951, '1980-07-31', '2001-09-04', NULL),
(5005, 'Adipisci explicabo vel inventore consequatur dolorem cumque.', 'Debitis quia pariatur quasi quaerat. Iure facilis ex sed ullam corrupti. Tenetur earum dolore dolorem in voluptate. Eveniet officia eligendi voluptatum maiores et.', 676488, '2009-03-15', NULL, NULL),
(5009, 'Nulla ex id aspernatur et officiis recusandae saepe enim.', 'Id voluptates commodi est reiciendis nemo nihil iusto. Repellat dolores iure aliquam recusandae necessitatibus itaque rerum aut. Atque ut fuga autem perferendis exercitationem mollitia aliquid molestias.', 360752, '1992-08-21', '1974-04-22', NULL),
(5014, 'Vel enim cupiditate qui maiores veritatis sint sit.', 'Est et enim voluptas qui aspernatur. Error quisquam cupiditate ut. Saepe autem non omnis nesciunt. Consectetur consectetur molestiae doloribus ad aut cum est.', 528623, '1975-01-10', '1976-05-03', NULL),
(5026, 'Sed repudiandae eos rem ipsa nihil sit quisquam.', 'Commodi dolore voluptas maiores soluta vitae est. Dolorem id eos sunt sed ducimus. A nemo tenetur consequatur voluptatem eum. Animi quo rerum ullam delectus beatae repudiandae adipisci. Tempora repellat ex nam odit eveniet.', 531903, '1998-02-23', '2019-06-23', NULL),
(5040, 'Sequi corporis occaecati delectus autem exercitationem voluptatibus recusandae minima.', 'Consequatur distinctio omnis consequatur et quia omnis accusamus. Dolores doloremque ratione voluptatum.', 870198, '2005-03-13', '1983-05-22', NULL),
(5047, 'Expedita fugit molestiae velit ut perferendis.', 'Aliquid nisi et asperiores optio quisquam. Nulla et architecto minus minus. Nemo exercitationem aliquid quia aliquam. Tenetur cupiditate iusto dolor omnis aut cupiditate ut accusantium.', 233348, '1991-07-13', NULL, NULL),
(5058, 'Asperiores libero qui reprehenderit excepturi.', 'Amet dolore iure voluptates velit voluptatibus. Omnis est sunt odio et iure vel. Ab consectetur consequatur nesciunt.', 827765, '1976-10-14', '1980-10-10', NULL),
(5086, 'Modi aliquid ad dolore saepe atque nostrum vel maiores.', 'Eos deserunt cupiditate quia est officia at qui. Neque dignissimos itaque aut est perferendis. Error asperiores voluptas esse.', 120129, '1980-05-16', '1989-05-24', NULL),
(5093, 'Accusantium iste quis fugiat consequuntur provident omnis.', 'Assumenda exercitationem tenetur possimus. Rem id excepturi aut praesentium consequatur cupiditate fugit. Aperiam velit cum provident nobis. Excepturi dignissimos libero rerum.', 928296, '1980-08-05', '2007-08-05', NULL),
(5098, 'Excepturi voluptatem laboriosam ut quam atque qui.', 'Asperiores qui ad vel maiores consequatur qui. Molestiae non sint voluptatem suscipit omnis incidunt ad. Rerum est sapiente laudantium in ut quaerat corporis.', 710791, '1986-08-27', NULL, NULL),
(5099, 'Dolor illo ullam consequuntur doloribus adipisci doloribus iure omnis.', 'Qui libero rem nemo nemo fuga. Vero voluptatem inventore sit. Velit mollitia voluptatem eius eos sed id eveniet quis.', 767363, '2000-06-01', NULL, NULL),
(5104, 'Ratione tempore necessitatibus iure.', 'Impedit est officia qui sed est sit dolorem. Necessitatibus saepe praesentium dolores suscipit totam aut dolore. Molestias nesciunt eum eum repellendus est debitis.', 851822, '1987-08-20', NULL, NULL),
(5123, 'Itaque unde adipisci ut quod molestiae et autem.', 'Id alias minima voluptatibus consequatur sit aliquam officiis. Praesentium dolorem rem maiores veniam. Omnis repellendus quo quia voluptas sit. Itaque laborum quasi et eum.', 176479, '2019-02-08', NULL, NULL),
(5135, 'Qui quo mollitia at sint eius eos ducimus.', 'Rerum aliquid enim autem unde. Deleniti molestias aperiam facere repellat voluptatum. Cumque quod qui ab quasi. Error explicabo repudiandae quia amet quibusdam occaecati rem.', 221436, '1972-01-24', NULL, NULL),
(5141, 'Voluptate expedita omnis dolorem nostrum qui est.', 'Maiores et rem distinctio delectus voluptatem occaecati odit. Reprehenderit dolorem perferendis neque unde ab cum. Sit quia eum eaque placeat voluptas. Atque mollitia quo fugiat vero et tempora perferendis. Sequi iure animi ullam corrupti.', 206882, '1974-11-10', NULL, NULL),
(5162, 'Explicabo pariatur vero tenetur voluptas omnis dolorem.', 'Enim rerum illo ut enim quae ducimus perferendis. Et perferendis mollitia illo qui quia itaque. Enim quas excepturi dolores dolor delectus ad.', 790649, '1982-07-30', NULL, NULL),
(5169, 'Expedita aut facilis similique aut exercitationem provident ut aperiam.', 'Voluptas est voluptatum ea itaque assumenda nostrum et. Et suscipit error nam fuga tempore. Inventore expedita aut dignissimos omnis beatae quia.', 305550, '1977-07-21', '2021-01-16', NULL),
(5173, 'Autem molestias amet libero repellendus sunt tempora.', 'Ex dolorem sapiente quidem magnam occaecati iste delectus molestiae. Magnam aut est accusamus cupiditate officiis vitae nihil.', 252200, '1997-03-24', '2013-03-15', NULL),
(5192, 'Eveniet voluptatem voluptatibus sapiente repudiandae omnis.', 'Nulla aut ea ab et nihil delectus. A illo alias quaerat earum necessitatibus illo. Nemo cumque officia soluta eos. Repudiandae doloremque omnis porro deleniti enim et.', 234359, '1973-06-05', NULL, NULL),
(5195, 'Alias ipsam laudantium dolor similique aut non.', 'Illo qui dolore sunt architecto odit voluptas accusamus et. Laudantium molestiae ut corrupti eos voluptatibus vitae distinctio est. Non saepe aliquid quaerat nam delectus quae.', 885486, '1984-11-08', '1973-05-08', NULL),
(5206, 'Est animi consequatur hic omnis alias cumque.', 'Odit dolorum sint quis saepe. Sint quae officia libero qui. Ut voluptatum aliquam perspiciatis ab consequatur facilis ullam repudiandae. Minus facilis quas cum.', 433727, '1983-05-28', NULL, NULL),
(5212, 'Nostrum vel voluptatem corrupti quo qui.', 'Sed est soluta ut et voluptates. Error iure repellat expedita. Doloribus natus et ut ut et dolor reprehenderit voluptatem. Aut voluptas quia est qui maxime dignissimos.', 288997, '2005-11-11', '2020-07-01', NULL),
(5219, 'Voluptatum rerum voluptas inventore tempore est aliquam.', 'Qui perspiciatis et et. Et eveniet possimus ut enim. Voluptas illum facere amet et vitae fugiat.', 951708, '2018-01-16', NULL, NULL),
(5233, 'Sunt rem iure et beatae.', 'Labore officiis consequatur in veritatis placeat veritatis numquam. Rerum et hic rem sint quidem. Sed quod officiis aut expedita rerum officia.', 935430, '1996-04-27', NULL, NULL),
(5235, 'Facilis voluptatem qui dolores.', 'Aut et est non reiciendis. Unde nesciunt et eaque autem velit quis. Iusto eaque nemo quidem quia quo sed consectetur. Illum quae dolores magni provident ducimus.', 614778, '1987-12-19', '1997-06-21', NULL),
(5247, 'Rerum vero quos at qui.', 'Libero ea sint magni. Cum molestiae exercitationem inventore alias reiciendis. Adipisci tempora ducimus ut reprehenderit.', 150040, '2003-11-28', NULL, NULL),
(5248, 'Rem ut et ut placeat.', 'Consectetur architecto nostrum est. Quasi libero deleniti similique itaque earum autem. Qui iusto reiciendis quaerat et. Aut sed quia ea rerum.', 102947, '2014-09-18', '1983-02-22', NULL),
(5265, 'Dicta ipsum doloremque tempora quia temporibus ipsum dignissimos unde.', 'Iure repellat velit ut possimus. Error quo assumenda laboriosam. Et accusamus adipisci repellendus repellendus reprehenderit blanditiis.', 707328, '1973-06-03', NULL, NULL),
(5271, 'Veniam suscipit saepe ex quia laborum eum accusantium.', 'Nam molestiae laboriosam quidem facere tempore. Consequatur laborum praesentium quia alias. Modi fugiat et pariatur id maxime eius. Incidunt laboriosam esse et sed.', 940630, '2012-02-29', NULL, NULL),
(5272, 'Adipisci minima velit dignissimos et.', 'Consectetur ut quisquam aut velit nesciunt odit. At ut corporis consectetur voluptatum amet. Illum ullam repellendus et fugiat. Et quisquam laboriosam voluptate est laboriosam voluptas. Doloremque reiciendis tempore eos consequuntur.', 929541, '1986-10-16', NULL, NULL),
(5277, 'Minus magni exercitationem adipisci ducimus vitae.', 'Rerum ipsum laboriosam excepturi ipsa facere. Exercitationem delectus excepturi debitis rerum corrupti reiciendis repudiandae. Tenetur ut ipsa nihil sed quia voluptatem est.', 275300, '1973-08-09', '2012-01-26', NULL),
(5297, 'Quos voluptatum natus ipsum eligendi incidunt aut.', 'Aliquid velit distinctio consequatur. Beatae dolores non laudantium et id. Culpa aspernatur rerum eius est.', 815439, '2019-10-03', '2004-06-16', NULL),
(5316, 'Facere possimus non accusamus blanditiis aliquam officia.', 'Sit necessitatibus ipsam in ipsa et ratione. Fugit consequatur similique qui voluptatem. Ipsum assumenda accusamus earum ullam. Illum non sed sint omnis sit id laudantium.', 686783, '1981-06-10', '2001-05-24', NULL),
(5322, 'Iure beatae voluptatem nobis voluptatem.', 'Perspiciatis sunt eos dolor dolorem. Maiores totam ut accusantium. Rem architecto quam mollitia error omnis neque.', 202048, '1982-01-21', NULL, NULL),
(5330, 'Saepe ratione qui magnam.', 'Error perspiciatis dolorem earum quis. Debitis placeat fugit omnis alias est. Odit fuga voluptatem laboriosam.', 619029, '1978-09-01', NULL, NULL),
(5337, 'Sunt eos beatae eum ut laboriosam cupiditate.', 'Aut et omnis nihil natus. Eaque in omnis iusto eos in odit consequatur sequi. Et cum in hic sed iste facere distinctio. Aut aut facere voluptas.', 164398, '2004-10-10', '1970-05-04', NULL),
(5375, 'Reiciendis officiis aut modi exercitationem assumenda qui nihil.', 'Omnis quis reprehenderit molestias labore expedita repudiandae. Voluptas aliquam totam exercitationem et ratione sed iusto ut. Minus voluptate dolor assumenda.', 173089, '1970-11-04', NULL, NULL),
(5376, 'Sint adipisci animi molestiae id id minus.', 'Perferendis et necessitatibus nostrum ullam dicta. Enim harum quia qui. Similique dolorum voluptatum odio dolores. Rem dolore quas qui.', 864169, '2002-01-01', '1976-11-05', NULL),
(5382, 'Laborum non ea officiis corrupti quae.', 'Quos eveniet occaecati in sapiente autem. In vero cumque modi dignissimos magni nihil voluptatum. Asperiores laborum voluptatem possimus et magnam maiores deserunt.', 176507, '1991-09-03', '1993-07-20', NULL),
(5388, 'Delectus quidem dolorem facere.', 'At beatae aut hic non mollitia. Quae nihil qui aut tenetur. Ipsum dolores ut aliquid. Et repellat laborum vel ea et.', 546755, '1999-10-11', '2012-11-25', NULL),
(5415, 'Nam molestias facere voluptatum explicabo quis.', 'Soluta dolor et ducimus cumque dicta quia. Qui autem consequatur deserunt fuga qui. Quae a sint consequuntur corporis iusto. Repellendus laudantium magnam odio quia.', 843135, '1989-07-26', NULL, NULL),
(5424, 'Et ab ipsum nostrum sapiente qui praesentium.', 'Sapiente quasi velit voluptatibus eaque et. Qui ipsum pariatur et. Autem cupiditate soluta consequuntur. Ducimus voluptatem quam nisi voluptatem autem impedit. Delectus ad minima eveniet voluptatem.', 777194, '2010-11-14', '1976-11-22', NULL),
(5427, 'Tempore sit laborum non dolor.', 'Repellendus ipsa aperiam fuga laborum. Qui reiciendis voluptatem id dignissimos.', 956806, '1970-04-29', '1987-01-24', NULL),
(5429, 'Suscipit blanditiis iure asperiores porro quibusdam distinctio et.', 'Animi deserunt dignissimos voluptatem quo aut in consectetur. Sunt dolorem assumenda et nihil ipsa. Error maxime praesentium laboriosam eveniet quae voluptas vel vel. Voluptatem quis omnis minus vel.', 211556, '1998-02-24', '2007-05-28', NULL),
(5432, 'Beatae aperiam molestias molestias facilis quidem voluptatem ad.', 'Ducimus eligendi voluptatem qui sit. Ab suscipit tempora pariatur recusandae dolores quos a fugiat. Sapiente sint consequuntur provident qui. Voluptatem porro qui omnis alias facere laborum doloribus libero.', 654836, '1972-05-25', NULL, NULL),
(5456, 'Voluptate eligendi velit illo et at eos quo.', 'Aspernatur consequatur maxime ducimus et assumenda nisi alias. Earum sit porro veniam qui quia omnis. Quo explicabo libero blanditiis laborum eligendi eaque. Sit inventore occaecati velit suscipit ea fugit.', 615244, '1978-04-09', NULL, NULL),
(5490, 'Quaerat enim et a quo adipisci.', 'Omnis error aut quibusdam et aliquid aperiam accusantium quibusdam. Aperiam quam ullam quia quis voluptas. Et fugit exercitationem quam amet. Est dolorem cupiditate esse qui et mollitia.', 693172, '1976-05-26', '1972-12-26', NULL),
(5494, 'Tempore dolorem dolorum rerum nesciunt quia eius et incidunt.', 'Ea magnam velit dolorum voluptas eaque quos tempora accusamus. Eum praesentium ab consequatur fugit eos.', 524630, '2000-10-06', '1980-09-04', NULL),
(5497, 'Accusamus veniam rerum sunt numquam.', 'Aut perferendis nisi nostrum sunt. Dignissimos inventore quas autem nulla nulla eum. Dolore modi cum minima consequuntur ut.', 179066, '2010-12-26', '2001-11-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Project_donation`
--

CREATE TABLE `Project_donation` (
  `project_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Project_donation`
--

INSERT INTO `Project_donation` (`project_id`, `program_id`) VALUES
(5001, 4015),
(5272, 4015),
(5005, 4028),
(5277, 4028),
(5009, 4030),
(5297, 4030),
(5014, 4044),
(5316, 4044),
(5026, 4048),
(5322, 4048),
(5040, 4053),
(5330, 4053),
(5047, 4054),
(5337, 4054),
(5058, 4061),
(5375, 4061),
(5086, 4067),
(5376, 4067),
(5093, 4070),
(5382, 4070),
(5098, 4074),
(5388, 4074),
(5099, 4080),
(5415, 4080),
(5104, 4082),
(5424, 4082),
(5123, 4094),
(5427, 4094),
(5135, 4097),
(5429, 4097),
(5141, 4101),
(5432, 4101),
(5162, 4103),
(5456, 4103),
(5169, 4107),
(5490, 4107),
(5173, 4109),
(5494, 4109),
(5192, 4117),
(5497, 4117),
(5195, 4128),
(5206, 4129),
(5212, 4141),
(5219, 4143),
(5233, 4146),
(5235, 4157),
(5247, 4167),
(5248, 4173),
(5265, 4187),
(5271, 4196);

-- --------------------------------------------------------

--
-- Table structure for table `project_managed_by_org`
--

CREATE TABLE `project_managed_by_org` (
  `org_id` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_managed_by_org`
--

INSERT INTO `project_managed_by_org` (`org_id`, `project_id`) VALUES
('104763', 5001),
('105550', 5005),
('106367', 5009),
('106456', 5014),
('110568', 5026),
('110598', 5040),
('114878', 5047),
('114906', 5058),
('118892', 5086),
('121795', 5093),
('121857', 5098),
('125199', 5099),
('125574', 5104),
('125839', 5123),
('128334', 5135),
('129619', 5141),
('130087', 5162),
('132340', 5169),
('133416', 5173),
('134304', 5192),
('134683', 5195),
('134742', 5206),
('136170', 5212),
('136408', 5219),
('139200', 5233),
('142181', 5235),
('144059', 5247),
('144433', 5248),
('145586', 5265),
('146072', 5271),
('104763', 5272),
('105550', 5277),
('106367', 5297),
('106456', 5316),
('110568', 5322),
('110598', 5330),
('114878', 5337),
('114906', 5375),
('118892', 5376),
('121795', 5382),
('121857', 5388),
('125199', 5415),
('125574', 5424),
('125839', 5427),
('128334', 5429),
('129619', 5432),
('130087', 5456),
('132340', 5490),
('133416', 5494),
('134304', 5497);

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `researcher_id` int(11) NOT NULL,
  `researcher_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `researcher_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `researcher_birth_date` date DEFAULT NULL,
  `researcher_sex` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `researcher`
--

INSERT INTO `researcher` (`researcher_id`, `researcher_first_name`, `researcher_last_name`, `researcher_birth_date`, `researcher_sex`) VALUES
(1016, 'Leif', 'Schoen', '1974-06-14', 'M'),
(1020, 'Lorenza', 'Tremblay', '1976-10-01', 'M'),
(1027, 'Jaydon', 'Tromp', '1979-07-23', 'F'),
(1029, 'Aglae', 'Wolff', '1998-12-16', 'F'),
(1038, 'Kaela', 'Moore', '1974-08-16', 'F'),
(1047, 'Marlon', 'Powlowski', '1982-06-22', 'F'),
(1049, 'Joseph', 'Schroeder', '1986-11-09', 'F'),
(1050, 'Hayden', 'McLaughlin', '1995-01-17', 'O'),
(1055, 'Nya', 'Harvey', '1971-09-24', 'M'),
(1058, 'Johnnie', 'Emard', '1970-02-08', 'O'),
(1074, 'Jerrold', 'DuBuque', '1994-01-03', 'O'),
(1084, 'Dedric', 'Swaniawski', '1976-04-24', 'M'),
(1093, 'Van', 'Kiehn', '1985-10-22', 'O'),
(1113, 'Issac', 'Lehner', '1976-02-23', 'F'),
(1120, 'Lorna', 'Ernser', '1993-03-10', 'O'),
(1122, 'Margarette', 'Raynor', '1987-09-01', 'O'),
(1125, 'Ceasar', 'O\'Reilly', '1985-05-03', 'F'),
(1131, 'Addison', 'Dooley', '1994-12-29', 'O'),
(1138, 'Cecilia', 'Stanton', '1991-05-26', 'F'),
(1139, 'Jenifer', 'Kilback', '1970-08-03', 'M'),
(1142, 'Roma', 'Kessler', '1999-09-14', 'F'),
(1152, 'Abby', 'Shanahan', '1982-05-14', 'M'),
(1158, 'Lamont', 'Wehner', '1987-05-14', 'O'),
(1171, 'Ryder', 'Lynch', '1991-12-04', 'F'),
(1188, 'Mohammed', 'Green', '1986-04-06', 'F'),
(1195, 'Leon', 'Simonis', '1970-10-23', 'O'),
(1197, 'Camylle', 'Lockman', '1995-01-27', 'M'),
(1202, 'Emerald', 'Schultz', '1975-03-02', 'O'),
(1205, 'Margot', 'Kozey', '1985-04-01', 'F'),
(1212, 'Blanca', 'Gaylord', '1994-08-31', 'O'),
(1269, 'Felipe', 'Hintz', '1971-04-05', 'F'),
(1275, 'Noemi', 'Hermiston', '1985-02-25', 'O'),
(1293, 'Walker', 'Stokes', '1994-08-03', 'O'),
(1297, 'Julianne', 'Bednar', '1985-05-05', 'M'),
(1307, 'Shirley', 'Skiles', '1982-11-29', 'O'),
(1319, 'Beatrice', 'Zboncak', '1990-12-01', 'O'),
(1338, 'Tyshawn', 'Price', '1993-02-02', 'M'),
(1346, 'Rigoberto', 'Hamill', '1970-02-13', 'O'),
(1352, 'Ramon', 'Emmerich', '1996-03-13', 'M'),
(1364, 'Bobby', 'Metz', '1990-08-16', 'M'),
(1372, 'Garrett', 'Schaefer', '1993-01-02', 'O'),
(1376, 'Jackeline', 'Ledner', '1982-08-22', 'O'),
(1378, 'Ellie', 'Heidenreich', '1988-11-03', 'F'),
(1418, 'Esmeralda', 'Baumbach', '1994-08-21', 'O'),
(1419, 'Violet', 'Conroy', '1993-12-07', 'F'),
(1420, 'Aletha', 'Rippin', '1977-06-06', 'F'),
(1435, 'Cassidy', 'Kuphal', '1990-04-26', 'O'),
(1448, 'Alec', 'Conroy', '1993-04-21', 'O'),
(1462, 'Sienna', 'Cormier', '1980-12-25', 'F'),
(1463, 'Ethel', 'Goodwin', '1989-07-22', 'F'),
(1498, 'Lionel', 'Herman', '1979-02-09', 'F'),
(1499, 'Laney', 'Bradtke', '1975-10-09', 'O'),
(1517, 'Carmine', 'Schuster', '1986-06-08', 'O'),
(1519, 'Hailie', 'Rutherford', '1988-06-08', 'O'),
(1521, 'Jadyn', 'Upton', '2000-08-01', 'O'),
(1523, 'Retta', 'Schuster', '1982-10-02', 'M'),
(1527, 'Breana', 'Bradtke', '1997-08-26', 'M'),
(1537, 'Antonina', 'Dickinson', '1981-02-02', 'M'),
(1539, 'Santina', 'Rowe', '1974-09-17', 'F'),
(1549, 'Leon', 'Smitham', '1998-04-07', 'F'),
(1550, 'Margot', 'Hegmann', '1980-02-24', 'M'),
(1571, 'Jamir', 'Flatley', '1992-04-13', 'M'),
(1581, 'Eliezer', 'Koepp', '1992-01-27', 'O'),
(1611, 'Jaquan', 'McCullough', '1994-02-07', 'O'),
(1625, 'Einar', 'Luettgen', '1976-08-07', 'M'),
(1627, 'Devan', 'Mayer', '1987-03-26', 'O'),
(1634, 'Orion', 'Pfannerstill', '1976-05-25', 'F'),
(1635, 'Celestino', 'Jacobi', '1986-06-08', 'M'),
(1637, 'Violette', 'O\'Kon', '1982-04-19', 'O'),
(1646, 'German', 'Jacobson', '1976-08-14', 'F'),
(1683, 'Ona', 'Ward', '1981-11-21', 'M'),
(1699, 'Veronica', 'Kertzmann', '1982-08-15', 'M'),
(1723, 'Cleveland', 'Russel', '1992-11-13', 'M'),
(1729, 'Roel', 'Lemke', '1999-08-01', 'F'),
(1736, 'Syble', 'Harber', '1979-10-17', 'O'),
(1749, 'Brock', 'Fahey', '1983-06-20', 'M'),
(1755, 'Modesto', 'Feil', '1993-10-31', 'O'),
(1765, 'Geo', 'Towne', '1971-11-17', 'F'),
(1779, 'Elliott', 'Schamberger', '1985-06-06', 'M'),
(1780, 'Dayana', 'Morissette', '1974-10-30', 'F'),
(1781, 'Eliseo', 'Hills', '1977-05-28', 'O'),
(1804, 'Granville', 'Pagac', '1988-03-02', 'F'),
(1807, 'Joy', 'Nolan', '1995-04-24', 'M'),
(1813, 'Eleazar', 'Kuvalis', '1989-07-31', 'M'),
(1814, 'Juana', 'Von', '1979-08-20', 'M'),
(1815, 'Nannie', 'Johnston', '1999-06-15', 'O'),
(1835, 'Donato', 'Gaylord', '1972-08-02', 'M'),
(1853, 'Stone', 'Langosh', '1998-08-01', 'O'),
(1866, 'Braden', 'Reinger', '1994-12-27', 'O'),
(1881, 'Modesta', 'Torp', '1977-01-05', 'O'),
(1903, 'Thaddeus', 'Langworth', '1986-11-11', 'O'),
(1914, 'Cesar', 'Kemmer', '1998-07-14', 'F'),
(1940, 'Laron', 'Kunde', '1977-01-19', 'F'),
(1961, 'Olaf', 'Langworth', '1981-09-15', 'O'),
(1971, 'Landen', 'Heller', '1981-10-29', 'O'),
(1977, 'Karen', 'Spinka', '1970-12-15', 'M'),
(1982, 'Francesco', 'Adams', '1973-03-03', 'M'),
(1985, 'Braeden', 'Zboncak', '1986-07-23', 'F'),
(1993, 'Chandler', 'Cruickshank', '1986-07-18', 'M'),
(1998, 'Ewell', 'Schulist', '1981-07-29', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `researcher_works_org`
--

CREATE TABLE `researcher_works_org` (
  `org_id` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `researcher_id` int(11) NOT NULL,
  `start_date_of_work` date NOT NULL,
  `end_date_of_work` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `researcher_works_org`
--

INSERT INTO `researcher_works_org` (`org_id`, `researcher_id`, `start_date_of_work`, `end_date_of_work`) VALUES
('104763', 1016, '1972-07-06', '2006-04-02'),
('105550', 1020, '1989-05-18', NULL),
('106367', 1027, '1972-11-25', NULL),
('106456', 1029, '1982-12-29', NULL),
('110568', 1038, '1971-01-30', NULL),
('110598', 1047, '2003-06-04', NULL),
('114878', 1049, '1982-10-20', '2015-08-30'),
('114906', 1050, '2017-02-17', NULL),
('118892', 1055, '2006-06-01', NULL),
('121795', 1058, '2011-01-31', NULL),
('121857', 1074, '1980-09-04', NULL),
('125199', 1084, '1987-05-04', '1976-09-08'),
('125574', 1093, '2011-01-21', '1977-07-23'),
('125839', 1113, '1976-06-20', NULL),
('128334', 1120, '1983-10-07', '1995-01-30'),
('129619', 1122, '2003-09-02', NULL),
('130087', 1125, '2016-07-28', NULL),
('132340', 1131, '1976-05-06', '1988-02-23'),
('133416', 1138, '1981-07-07', NULL),
('134304', 1139, '2014-05-15', '2010-01-11'),
('134683', 1142, '2008-08-02', '1990-01-07'),
('134742', 1152, '1985-12-31', '1973-09-07'),
('136170', 1158, '2006-11-03', NULL),
('136408', 1171, '1997-07-25', NULL),
('139200', 1188, '1991-04-13', '2020-08-11'),
('142181', 1195, '1971-02-14', NULL),
('144059', 1197, '2009-10-06', '2021-09-23'),
('144433', 1202, '1997-08-15', '2006-04-13'),
('145586', 1205, '2013-12-16', '2009-02-01'),
('146072', 1212, '1970-02-15', '1982-03-25'),
('104763', 1269, '1980-12-18', '1985-06-12'),
('105550', 1275, '1993-01-01', '2005-01-16'),
('106367', 1293, '2001-03-21', '1993-06-02'),
('106456', 1297, '2016-09-24', '1970-11-01'),
('110568', 1307, '1976-12-21', NULL),
('110598', 1319, '1990-11-01', NULL),
('114878', 1338, '2012-02-07', '2010-04-05'),
('114906', 1346, '2000-07-24', '2001-09-18'),
('118892', 1352, '1977-02-18', '2014-08-31'),
('121795', 1364, '1981-12-06', NULL),
('121857', 1372, '1998-08-16', NULL),
('125199', 1376, '1985-05-12', '2020-09-06'),
('125574', 1378, '1993-07-03', NULL),
('125839', 1418, '1993-07-17', NULL),
('128334', 1419, '2021-02-05', '1983-06-04'),
('129619', 1420, '1989-10-03', NULL),
('130087', 1435, '1989-04-14', NULL),
('132340', 1448, '1999-08-03', '1978-11-23'),
('133416', 1462, '2016-08-26', NULL),
('134304', 1463, '2017-07-16', NULL),
('134683', 1498, '1986-07-08', NULL),
('134742', 1499, '2004-11-30', '2008-11-07'),
('136170', 1517, '1989-09-15', NULL),
('136408', 1519, '2001-02-07', '1984-02-06'),
('139200', 1521, '1986-06-28', '1976-01-07'),
('142181', 1523, '2003-04-14', NULL),
('144059', 1527, '2015-12-28', NULL),
('144433', 1537, '2008-09-11', NULL),
('145586', 1539, '2009-07-30', NULL),
('146072', 1549, '2012-04-02', NULL),
('104763', 1550, '2019-05-07', NULL),
('105550', 1571, '2021-04-01', NULL),
('106367', 1581, '2013-12-12', '2008-06-14'),
('106456', 1611, '2015-03-15', NULL),
('110568', 1625, '1996-11-24', NULL),
('110598', 1627, '1982-01-18', NULL),
('114878', 1634, '2006-10-29', NULL),
('114906', 1635, '2004-05-09', '1987-08-03'),
('118892', 1637, '1997-12-08', '2008-09-05'),
('121795', 1646, '1997-07-17', '2006-12-12'),
('121857', 1683, '2022-04-18', '1994-09-14'),
('125199', 1699, '1975-06-10', '1990-03-04'),
('125574', 1723, '2000-01-02', '1985-09-15'),
('125839', 1729, '2022-01-23', '1971-03-10'),
('128334', 1736, '1978-03-07', '2017-03-13'),
('129619', 1749, '1975-03-15', '2021-10-17'),
('130087', 1755, '2008-06-03', '1988-09-08'),
('132340', 1765, '2007-01-21', NULL),
('133416', 1779, '1996-09-30', NULL),
('134304', 1780, '1990-11-13', NULL),
('134683', 1781, '2009-06-06', NULL),
('134742', 1804, '1993-06-28', '2021-05-23'),
('136170', 1807, '2003-05-30', NULL),
('136408', 1813, '2002-12-04', '2007-05-12'),
('139200', 1814, '2006-08-16', NULL),
('142181', 1815, '2009-12-24', NULL),
('144059', 1835, '1992-12-12', NULL),
('144433', 1853, '2014-06-07', '2011-04-17'),
('145586', 1866, '2008-10-12', '1970-01-02'),
('146072', 1881, '2021-06-25', '1988-02-05'),
('104763', 1903, '1977-02-21', NULL),
('105550', 1914, '1977-11-19', '1995-04-28'),
('106367', 1940, '1997-02-22', NULL),
('106456', 1961, '1982-01-06', '1995-11-28'),
('110568', 1971, '1980-10-18', NULL),
('110598', 1977, '1997-03-31', '1985-09-03'),
('114878', 1982, '1972-11-01', NULL),
('114906', 1985, '2017-12-21', NULL),
('118892', 1993, '2013-05-21', '2020-12-21'),
('121795', 1998, '1970-06-03', '1980-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `res_works_on_project`
--

CREATE TABLE `res_works_on_project` (
  `researcher_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_supervisor` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `res_works_on_project`
--

INSERT INTO `res_works_on_project` (`researcher_id`, `project_id`, `is_supervisor`) VALUES
(1016, 5001, 0),
(1020, 5005, 0),
(1027, 5009, 0),
(1029, 5014, 1),
(1038, 5026, 1),
(1047, 5040, 0),
(1049, 5047, 0),
(1050, 5058, 0),
(1055, 5086, 1),
(1058, 5093, 1),
(1074, 5098, 1),
(1084, 5099, 1),
(1093, 5104, 1),
(1113, 5123, 0),
(1120, 5135, 0),
(1122, 5141, 1),
(1125, 5162, 0),
(1131, 5169, 1),
(1138, 5173, 0),
(1139, 5192, 0),
(1142, 5195, 0),
(1152, 5206, 1),
(1158, 5212, 0),
(1171, 5219, 0),
(1188, 5233, 1),
(1195, 5235, 0),
(1197, 5247, 0),
(1202, 5248, 1),
(1205, 5265, 0),
(1212, 5271, 0),
(1269, 5272, 1),
(1269, 5375, 1),
(1269, 5376, 1),
(1275, 5277, 1),
(1293, 5297, 0),
(1297, 5316, 0),
(1307, 5322, 0),
(1319, 5330, 1),
(1338, 5337, 0),
(1346, 5375, 1),
(1352, 5376, 1),
(1364, 5212, 0),
(1364, 5272, 0),
(1364, 5375, 0),
(1364, 5382, 0),
(1372, 5388, 1),
(1376, 5415, 1),
(1378, 5424, 1),
(1418, 5427, 0),
(1419, 5429, 1),
(1420, 5432, 1),
(1435, 5456, 0),
(1448, 5490, 1),
(1462, 5494, 0),
(1463, 5497, 1),
(1498, 5001, 1),
(1499, 5005, 0),
(1517, 5009, 1),
(1519, 5014, 1),
(1521, 5026, 0),
(1523, 5040, 1),
(1527, 5047, 1),
(1537, 5058, 0),
(1539, 5086, 0),
(1549, 5093, 0),
(1550, 5098, 0),
(1571, 5099, 0),
(1581, 5104, 0),
(1611, 5123, 1),
(1625, 5135, 0),
(1627, 5141, 1),
(1634, 5162, 0),
(1635, 5169, 1),
(1637, 5173, 0),
(1646, 5192, 1),
(1683, 5195, 1),
(1699, 5206, 0),
(1723, 5212, 1),
(1729, 5219, 1),
(1736, 5233, 0),
(1749, 5235, 0),
(1755, 5247, 0),
(1765, 5248, 1),
(1779, 5265, 1),
(1780, 5271, 1),
(1781, 5272, 0),
(1804, 5277, 1),
(1807, 5297, 0),
(1813, 5316, 0),
(1814, 5322, 0),
(1815, 5330, 0),
(1835, 5337, 1),
(1853, 5375, 1),
(1866, 5376, 0),
(1881, 5382, 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `researcher_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`researcher_id`, `project_id`, `grade`, `review_date`) VALUES
(1016, 5001, 1, '2010-03-05'),
(1020, 5005, 0, '2015-05-22'),
(1027, 5009, 4, '1984-06-06'),
(1029, 5014, 7, '1982-06-24'),
(1038, 5026, 3, '2014-01-18'),
(1047, 5040, 8, '1984-08-23'),
(1049, 5047, 10, '1988-11-02'),
(1050, 5058, 8, '1979-07-18'),
(1055, 5086, 7, '1992-08-25'),
(1058, 5093, 2, '1985-11-30'),
(1074, 5098, 1, '2011-03-15'),
(1084, 5099, 4, '1976-10-29'),
(1093, 5104, 1, '1972-06-19'),
(1113, 5123, 6, '2006-04-25'),
(1120, 5135, 9, '1994-05-06'),
(1122, 5141, 8, '1982-10-02'),
(1125, 5162, 10, '1995-09-23'),
(1131, 5169, 3, '1970-01-31'),
(1138, 5173, 1, '2004-03-19'),
(1139, 5192, 8, '2010-05-11'),
(1142, 5195, 2, '1970-04-13'),
(1152, 5206, 8, '2016-08-27'),
(1158, 5212, 4, '2006-09-29'),
(1171, 5219, 7, '1990-09-26'),
(1188, 5233, 9, '1999-05-26'),
(1195, 5235, 2, '2000-11-09'),
(1197, 5247, 5, '1997-03-25'),
(1202, 5248, 0, '1997-07-24'),
(1205, 5265, 4, '1985-10-18'),
(1212, 5271, 10, '2003-01-07'),
(1269, 5272, 6, '1998-09-12'),
(1275, 5277, 1, '1984-05-09'),
(1293, 5297, 4, '2002-03-31'),
(1297, 5316, 10, '2010-04-01'),
(1307, 5322, 4, '1988-10-03'),
(1319, 5330, 4, '2004-01-30'),
(1338, 5337, 3, '1982-08-03'),
(1346, 5375, 6, '1993-12-28'),
(1352, 5376, 3, '2002-02-19'),
(1364, 5382, 8, '1993-08-19'),
(1372, 5388, 8, '1999-01-05'),
(1376, 5415, 10, '1978-01-17'),
(1378, 5424, 9, '1998-12-19'),
(1418, 5427, 1, '2005-08-03'),
(1419, 5429, 5, '2019-05-13'),
(1420, 5432, 10, '2013-12-17'),
(1435, 5456, 1, '1982-09-05'),
(1448, 5490, 8, '1971-04-26'),
(1462, 5494, 1, '1992-12-16'),
(1463, 5497, 3, '1992-11-27'),
(1498, 5001, 2, '1971-06-26'),
(1499, 5005, 6, '2019-10-24'),
(1517, 5009, 4, '1996-07-15'),
(1519, 5014, 6, '2006-07-21'),
(1521, 5026, 4, '2019-03-07'),
(1523, 5040, 3, '2009-12-28'),
(1527, 5047, 7, '1973-12-02'),
(1537, 5058, 9, '2002-05-23'),
(1539, 5086, 3, '1998-03-26'),
(1549, 5093, 6, '1990-11-21'),
(1550, 5098, 7, '2014-01-17'),
(1571, 5099, 6, '2010-01-15'),
(1581, 5104, 8, '1975-01-25'),
(1611, 5123, 5, '2008-11-15'),
(1625, 5135, 2, '1981-01-18'),
(1627, 5141, 8, '1991-11-26'),
(1634, 5162, 4, '2012-09-27'),
(1635, 5169, 5, '1975-11-23'),
(1637, 5173, 7, '2005-09-02'),
(1646, 5192, 0, '1974-09-19'),
(1683, 5195, 2, '1970-05-07'),
(1699, 5206, 4, '1995-11-28'),
(1723, 5212, 2, '2020-11-09'),
(1729, 5219, 2, '1972-08-29'),
(1736, 5233, 1, '1981-11-01'),
(1749, 5235, 1, '2001-02-04'),
(1755, 5247, 9, '1989-07-02'),
(1765, 5248, 8, '1993-10-02'),
(1779, 5265, 6, '2008-06-17'),
(1780, 5271, 4, '1996-12-13'),
(1781, 5272, 1, '1994-05-06'),
(1804, 5277, 1, '2017-08-13'),
(1807, 5297, 1, '2009-05-10'),
(1813, 5316, 5, '2008-09-24'),
(1814, 5322, 5, '2007-03-09'),
(1815, 5330, 9, '2003-07-26'),
(1835, 5337, 9, '1972-12-21'),
(1853, 5375, 0, '2004-02-27'),
(1866, 5376, 4, '2000-04-12'),
(1881, 5382, 9, '2014-03-21'),
(1903, 5388, 9, '1998-01-01'),
(1914, 5415, 10, '1996-11-05'),
(1940, 5424, 0, '2016-09-12'),
(1961, 5427, 10, '1981-12-23'),
(1971, 5429, 9, '1979-07-18'),
(1977, 5432, 5, '2006-01-31'),
(1982, 5456, 10, '2014-04-02'),
(1985, 5490, 6, '2002-05-31'),
(1993, 5494, 2, '1973-11-29'),
(1998, 5497, 6, '1978-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `scientific_field`
--

CREATE TABLE `scientific_field` (
  `sc_field_id` int(11) NOT NULL,
  `name_of_sc_f` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scientific_field`
--

INSERT INTO `scientific_field` (`sc_field_id`, `name_of_sc_f`) VALUES
(1, 'expedita'),
(2, 'illum'),
(3, 'eaque'),
(4, 'alias'),
(5, 'voluptates'),
(6, 'et'),
(7, 'consectetur'),
(8, 'quidem'),
(9, 'veritatis'),
(10, 'recusandae'),
(11, 'voluptate'),
(12, 'sunt'),
(13, 'totam'),
(14, 'dolores'),
(15, 'provident'),
(16, 'quisquam'),
(17, 'quam'),
(18, 'quis'),
(19, 'eius'),
(20, 'nobis'),
(21, 'maiores'),
(22, 'aperiam'),
(23, 'quasi'),
(24, 'ad'),
(25, 'vero'),
(26, 'ipsa'),
(27, 'cupiditate'),
(28, 'blanditiis'),
(29, 'aliquid'),
(30, 'quia'),
(31, 'aliquam'),
(32, 'incidunt'),
(33, 'laudantium'),
(34, 'deleniti'),
(35, 'libero'),
(36, 'eveniet'),
(37, 'ducimus'),
(38, 'dolore'),
(39, 'rerum'),
(40, 'id'),
(41, 'tempore'),
(42, 'quod'),
(43, 'impedit'),
(44, 'sed'),
(45, 'in'),
(46, 'est'),
(47, 'cum'),
(48, 'ipsum'),
(49, 'molestiae'),
(50, 'enim');

-- --------------------------------------------------------

--
-- Table structure for table `scientific_field_project`
--

CREATE TABLE `scientific_field_project` (
  `sc_field_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scientific_field_project`
--

INSERT INTO `scientific_field_project` (`sc_field_id`, `project_id`) VALUES
(1, 5001),
(2, 5005),
(3, 5009),
(4, 5014),
(5, 5026),
(6, 5040),
(7, 5047),
(8, 5058),
(9, 5086),
(10, 5093),
(11, 5098),
(12, 5099),
(13, 5104),
(14, 5123),
(15, 5135),
(16, 5141),
(17, 5162),
(18, 5169),
(19, 5173),
(20, 5192),
(21, 5195),
(22, 5206),
(23, 5212),
(24, 5219),
(25, 5233),
(26, 5235),
(27, 5247),
(28, 5248),
(29, 5265),
(30, 5271),
(31, 5272),
(32, 5277),
(33, 5297),
(34, 5316),
(35, 5322),
(36, 5330),
(37, 5337),
(38, 5375),
(39, 5376),
(40, 5382),
(41, 5388),
(42, 5415),
(43, 5424),
(44, 5427),
(45, 5429),
(46, 5432),
(47, 5456),
(48, 5490),
(49, 5494),
(50, 5497);

-- --------------------------------------------------------

--
-- Table structure for table `telephones`
--

CREATE TABLE `telephones` (
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_id` char(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telephones`
--

INSERT INTO `telephones` (`telephone`, `org_id`) VALUES
('1-854-343-7031x506', '104763'),
('(930)068-6767', '105550'),
('(695)273-5047', '106367'),
('(492)256-5070x6841', '106456'),
('913-630-9972', '110568'),
('(426)327-9973x3177', '110598'),
('780-074-0676x95695', '114878'),
('063.115.1295x00296', '114906'),
('1-224-030-1523', '118892'),
('430.113.8355', '121795'),
('138.230.9518', '121857'),
('559-319-7699x874', '125199'),
('480.690.8043x14616', '125574'),
('(266)532-9088x95106', '125839'),
('576.652.2804', '128334'),
('211.593.1498', '129619'),
('(333)863-5062', '130087'),
('1-167-459-7722x11986', '132340'),
('(059)902-4859x4395', '133416'),
('+40(2)6274584916', '134304'),
('(806)015-2298x020', '134683'),
('06776758288', '134742'),
('673.894.6610', '136170'),
('1-146-642-7263x96200', '136408'),
('170-394-1896x5917', '139200'),
('1-826-411-1754x031', '142181'),
('+63(5)2991142714', '144059'),
('820.020.3699x800', '144433'),
('(987)969-3986x0028', '145586'),
('649.720.7411x578', '146072'),
('518.922.0649', '104763'),
('1-885-021-8623x27568', '105550'),
('539.654.7559', '106367'),
('+09(1)0516926571', '106456'),
('651.735.7038x3230', '110568'),
('(564)216-4148', '110598'),
('(356)361-5455x370', '114878'),
('(250)580-8875x3085', '114906'),
('+99(5)5773928987', '118892'),
('1-446-153-3038x85227', '121795'),
('283.617.9233x93732', '121857'),
('004.077.9515', '125199'),
('+61(7)5121127609', '125574'),
('(404)971-8050', '125839'),
('1-383-801-9345', '128334'),
('07731194843', '129619'),
('007.139.3359x2951', '130087'),
('282-939-3334', '132340'),
('052-325-7501x823', '133416'),
('1-652-724-9488x11311', '134304'),
('211-901-3134', '134683'),
('1-353-199-2270', '134742'),
('025-753-3573', '136170'),
('(048)271-2073x671', '136408'),
('+06(2)5114758680', '139200'),
('(788)358-0696', '142181'),
('414.508.7977', '144059'),
('1-845-355-8846', '144433'),
('(908)045-8237', '145586'),
('1-929-506-2862', '146072'),
('851-405-9141x78175', '104763'),
('+82(8)3651231059', '105550'),
('(690)747-3704x54087', '106367'),
('1-658-553-3239', '106456'),
('845.589.2999x057', '110568'),
('1-167-311-9640x320', '110598'),
('1-342-630-7658', '114878'),
('607-696-1864', '114906'),
('08050444653', '118892'),
('500.956.7817x803', '121795'),
('(622)973-1144', '121857'),
('1-311-359-7505', '125199'),
('1-203-981-5389', '125574'),
('1-579-462-7759x58308', '125839'),
('(385)445-2005x841', '128334'),
('022.223.6603', '129619'),
('1-556-164-2181x9924', '130087'),
('395.530.9476', '132340'),
('+02(9)5146758478', '133416'),
('+71(4)0476967602', '134304'),
('748-727-8517', '134683'),
('827.136.9726', '134742'),
('(377)867-0755', '136170'),
('(306)034-1844', '136408'),
('+40(6)1259996705', '139200'),
('1-518-916-6854x098', '142181'),
('534.485.4912', '144059'),
('404.087.7315x56142', '144433'),
('(203)702-4853x21728', '145586'),
('(594)343-1049', '146072'),
('03812216087', '104763'),
('(060)617-6558x0333', '105550'),
('(454)977-2241', '106367'),
('116.042.5004x4737', '106456'),
('527-177-5711', '110568'),
('993.322.4458x770', '110598'),
('790-618-8666', '114878'),
('876.790.6477', '114906'),
('758.413.5140', '118892'),
('990.100.6301', '121795'),
('492.897.9459x07672', '121857'),
('1-683-572-9909x4504', '125199'),
('(174)128-8976', '125574'),
('983-844-2774x48779', '125839'),
('(930)150-2432x417', '128334'),
('1-150-085-8852x57112', '129619'),
('1-255-668-5514x380', '130087'),
('1-459-247-6076x65606', '132340'),
('(857)268-8479', '133416'),
('(276)618-2752', '134304'),
('002-305-2601x866', '134683'),
('217.803.2496x270', '134742'),
('689.069.5962x386', '136170'),
('(511)145-1453x1684', '136408'),
('02421566523', '139200'),
('800-176-8068', '142181'),
('643.013.0164x2359', '144059'),
('1-894-183-8738x00619', '144433'),
('1-829-497-1142x34770', '145586'),
('(910)732-6744', '146072'),
('1-544-305-9522x24059', '104763'),
('(144)195-1404', '105550'),
('1-470-777-4963', '106367'),
('1-094-671-4083x47673', '106456'),
('512-763-6644', '110568'),
('06637599150', '110598'),
('826.310.0006x373', '114878'),
('1-246-472-0948x7969', '114906'),
('(766)894-8057x42829', '118892'),
('668-201-9900', '121795'),
('(749)139-9234', '121857'),
('1-322-047-2486', '125199'),
('09025036515', '125574'),
('1-960-460-3728', '125839'),
('702.533.5368x1833', '128334'),
('(655)507-6433x331', '129619'),
('454-082-0444x3603', '130087'),
('(193)674-6428x89747', '132340'),
('803.271.2779', '133416'),
('437-029-8081', '134304'),
('1-553-035-0582', '134683'),
('05624060186', '134742'),
('01336931160', '136170'),
('1-429-660-7106x77453', '136408'),
('804.467.9815x144', '139200'),
('(629)313-9254', '142181'),
('184.190.7201', '144059'),
('(901)044-7495', '144433'),
('03535624348', '145586'),
('(494)830-3407x9158', '146072'),
('(364)088-8858x307', '104763'),
('(333)790-9173x7644', '105550'),
('(278)364-1915x29046', '106367'),
('1-154-443-2072x201', '106456'),
('1-646-713-4500x264', '110568'),
('933-982-9007', '110598'),
('471.877.9460x21674', '114878'),
('100.199.0973', '114906'),
('+74(6)2711908379', '118892'),
('1-397-833-8963x0420', '121795'),
('336.913.4157', '121857'),
('932-493-7927', '125199'),
('1-641-653-7308x43264', '125574'),
('(503)493-3916x3966', '125839'),
('493.558.6074', '128334'),
('07514510030', '129619'),
('+47(4)6244782559', '130087'),
('(088)003-4772', '132340'),
('754-765-3890', '133416'),
('451-914-0994x17677', '134304'),
('(230)780-8493x6169', '134683'),
('617-824-4079x388', '134742'),
('02887045168', '136170'),
('(005)905-2242x575', '136408'),
('020-781-3921', '139200'),
('154-038-9155x876', '142181'),
('(023)012-5184', '144059'),
('1-362-550-6163x567', '144433'),
('(944)817-5959x0412', '145586'),
('1-609-166-6973', '146072'),
('176-447-4269', '104763'),
('159.437.8728x434', '105550'),
('(010)871-2013x23797', '106367'),
('1-010-802-4773x5162', '106456'),
('(837)330-2085', '110568'),
('967.400.0657x90563', '110598'),
('1-414-395-9646x789', '114878'),
('740-262-8894', '114906'),
('591.457.5737x0984', '118892'),
('139-009-9611x84696', '121795'),
('296-462-0966x42459', '121857'),
('1-587-325-1614', '125199'),
('372-500-4829x0321', '125574'),
('(125)416-6543', '125839'),
('(341)107-8433x8430', '128334'),
('875.101.8110x6303', '129619'),
('04579847215', '130087'),
('397.085.2214', '132340'),
('012.022.2102x48404', '133416'),
('544-885-5927x4219', '134304');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD PRIMARY KEY (`deliverable_date`,`project_id`),
  ADD UNIQUE KEY `deliverable_title` (`deliverable_title`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `employer_manages_project`
--
ALTER TABLE `employer_manages_project`
  ADD PRIMARY KEY (`employer_id`,`org_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `program_belongs_to_admin`
--
ALTER TABLE `program_belongs_to_admin`
  ADD PRIMARY KEY (`admin_id`,`program_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `Project_donation`
--
ALTER TABLE `Project_donation`
  ADD PRIMARY KEY (`project_id`,`program_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `project_managed_by_org`
--
ALTER TABLE `project_managed_by_org`
  ADD PRIMARY KEY (`org_id`,`project_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`researcher_id`),
  ADD KEY `index_name` (`researcher_first_name`,`researcher_last_name`);

--
-- Indexes for table `researcher_works_org`
--
ALTER TABLE `researcher_works_org`
  ADD PRIMARY KEY (`researcher_id`,`org_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `res_works_on_project`
--
ALTER TABLE `res_works_on_project`
  ADD PRIMARY KEY (`researcher_id`,`project_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`researcher_id`,`project_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `scientific_field`
--
ALTER TABLE `scientific_field`
  ADD PRIMARY KEY (`sc_field_id`);

--
-- Indexes for table `scientific_field_project`
--
ALTER TABLE `scientific_field_project`
  ADD PRIMARY KEY (`project_id`,`sc_field_id`),
  ADD KEY `sc_field_id` (`sc_field_id`);

--
-- Indexes for table `telephones`
--
ALTER TABLE `telephones`
  ADD KEY `index_phone` (`org_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD CONSTRAINT `deliverable_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `employer_manages_project`
--
ALTER TABLE `employer_manages_project`
  ADD CONSTRAINT `employer_manages_project_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`);

--
-- Constraints for table `program_belongs_to_admin`
--
ALTER TABLE `program_belongs_to_admin`
  ADD CONSTRAINT `program_belongs_to_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `administration` (`admin_id`),
  ADD CONSTRAINT `program_belongs_to_admin_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`);

--
-- Constraints for table `Project_donation`
--
ALTER TABLE `Project_donation`
  ADD CONSTRAINT `Project_donation_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`),
  ADD CONSTRAINT `Project_donation_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`);

--
-- Constraints for table `project_managed_by_org`
--
ALTER TABLE `project_managed_by_org`
  ADD CONSTRAINT `project_managed_by_org_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `project_managed_by_org_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `researcher_works_org`
--
ALTER TABLE `researcher_works_org`
  ADD CONSTRAINT `researcher_works_org_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `researcher_works_org_ibfk_2` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `res_works_on_project`
--
ALTER TABLE `res_works_on_project`
  ADD CONSTRAINT `res_works_on_project_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`),
  ADD CONSTRAINT `res_works_on_project_ibfk_2` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `scientific_field_project`
--
ALTER TABLE `scientific_field_project`
  ADD CONSTRAINT `scientific_field_project_ibfk_1` FOREIGN KEY (`sc_field_id`) REFERENCES `scientific_field` (`sc_field_id`),
  ADD CONSTRAINT `scientific_field_project_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `Project` (`project_id`);

--
-- Constraints for table `telephones`
--
ALTER TABLE `telephones`
  ADD CONSTRAINT `telephones_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;