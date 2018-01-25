/*****    USER TABLES    *****/

INSERT INTO nf_usertypes (usertypeid, usertypedesc)
VALUES (1, 'admin'), (2, 'nerd'), (3, 'client');

INSERT INTO nf_specialismtypes (specialismid, specialismdesc)
VALUES (1, 'Websites'), (2, 'Mobile apps'), (3, 'Tablet apps'), (4, 'Software');

INSERT INTO nf_users (userid, usertypeid, firstname, lastname, email, username, dob, userpassword, passwordhint, premium, profilepic, company, jobtitle, businessarea)
VALUES
  /* ADMINS */
  (1, 1, 'Danny', 'Simpson', 'harryronchetti@gmail.com', 'dsimpson','1993-03-20', '$2y$11$KT5NLgcKtCD0tFsgZ9w0heTTxzikNro6t6wGwn7RI.n1VGzWu0RBu', 'Life in reverse', 1, 'danny-simpson.jpg', 'Nerd Finder', 'Webmaster', 'Technology'),
  (2, 1, 'Charlotte', 'Jarvis', 'harryronchetti@gmail.com', 'cjavris', '1986-05-05', '$2y$11$80Q5abMr12dPyKtkRDBmvubp968PPWxW10gdIJpQ4y/0sRI1pJ1Qu', 'Life in reverse', 1, 'charlotte-jarvis.jpg', 'Nerd Finder', 'Webmaster', 'Technology'),
  /* CLIENTS */
  (3, 3, 'Janet', 'Anderson', 'dale.clement@northumbria.ac.uk', 'janderson', '1982-07-01', '$2y$11$GodHcQ6tbacfTQIOt.OP7ORDaQlewY2hb50tS89XbVPd2ZV.9N6Wu', 'Favourite cupcake', 0, 'janet-anderson.jpg', 'Cupcake Love', 'Managing Director', 'Hospitality'),
  (4, 3, 'Debbie' ,'Michaels', 'dale.clement@northumbria.ac.uk', 'dmichaels', '1971-06-21', '$2y$11$3BtSg0MQgP0.yFDfyTT8SOgb5X.eV.SxfR6cpyw5fYrHYZuLW2UnK', 'Personal goal', 1, 'debbie-michaels.jpg', 'Pwizer', 'Senior Partner', 'Pharmaceuticals'),
  (5, 3, 'Paul', 'Brown', 'dale.clement@northumbria.ac.uk', 'pbrown', '1986-06-21', '$2y$11$BjJ/aHxIzA6iD5d3BS3EAeRQNs1FetFCHqQYIGabVo.GBG5KLq4KG', 'My aim', 0, 'paul-brown.jpg', 'Super Soaps', 'Founder', 'Cosmetics'),
  (6, 3, 'Angela', 'McCarthy', 'dale.clement@northumbria.ac.uk', 'amccarthy', '1991-01-08', '$2y$11$e7K7r8v39vEARDiv/kj8DeSCSNWNMkCxQjd1bedOpaChnw4mcksGi', 'What I do', 1, 'angela-mccarthy.jpg', 'Pearson Spectre', 'Associate', 'Law');

INSERT INTO nf_users (userid, usertypeid, firstname, lastname, email, username, dob, userpassword, passwordhint, premium, profilepic, experience, hourlyrate, nerdcv, portfolioimg1, portfolioimg2, portfolioimg3)
VALUES
  /* NERDS */
  (7, 2, 'Pedro', 'Dacantus', 'jack.breakell@northumbria.ac.uk', 'pdacantus', '1997-09-15', '$2y$11$.8Z9nu/d3zSZANHiGCFFT.YlCj52wi1mlMeYbLZ4EnH5EA6KLa06S', 'The truth', 0, 'pedro-dacantus.jpg', 2, '20.00', 'pedro-dacantus-cv.pdf', 'pedro-dacantus/pedro-1.png', 'pedro-dacantus/pedro-2.png', 'pedro-dacantus/pedro-3.png'),
  (8, 2, 'Tyler', 'Eaton', 'jack.breakell@northumbria.ac.uk', 'teaton', '1988-10-04', '$2y$11$LT/JOAHsaueccJdZxIukl.5gAl.5aQUZywKsWr9n2plc1wna2KtnG', 'My alias', 1, 'tyler-eaton.jpg', 10, '28.00', 'tyler-eaton-cv.pdf', 'tyler-eaton/tyler-1.png', 'tyler-eaton/tyler-2.png', 'tyler-eaton/tyler-3.png'),
  (9, 2, 'Ben', 'Giroux', 'jack.breakell@northumbria.ac.uk', 'bgiroux', '1979-08-24', '$2y$11$mbWNcIFpd9iWCzR7iIqNyuq71UwkwAMo/hfxEYwGPZ9ep41x/nZgS', 'My passion', 0, 'ben-giroux.jpg', 18, '24.00', 'ben-giroux-cv.pdf', 'ben-giroux/ben-1.png', 'ben-giroux/ben-2.png', 'ben-giroux/ben-3.png'),
  (10, 2, 'Hanson', 'Buork', 'jack.breakell@northumbria.ac.uk', 'hbuork', '1991-11-29', '$2y$11$zvcaNmkCNvYBDOrl0hLH0ud5Jpcmd5bC6qQ48GinRx.Ecw5qr2u8i', 'Favourite activity', 1, 'hanson-buork.jpg', 5, '32.00', 'hanson-buork-cv.pdf', 'hanson-buork/hanson-1.png', 'hanson-buork/hanson-2.png', 'hanson-buork/hanson-3.png'),
  (11, 2, 'Penelope', 'Holden', 'jack.breakell@northumbria.ac.uk', 'pholden', '1985-11-29', '$2y$11$ORson47hZsn5Gb73LBAdZ.MpnMDfXf9bkWRDrupNsRrHhT779nhHG', 'Favourite music artist', 1, 'penelope-holden.jpg', 9, '22.00', 'penelope-holden-cv.pdf', 'penelope-holden/penelope-1.png', 'penelope-holden/penelope-2.png', 'penelope-holden/penelope-3.png'),
  (12, 2, 'Alice', 'Murphy', 'jack.breakell@northumbria.ac.uk', 'amurphy', '1994-11-29', '$2y$11$PcO3w6mlNnlEe7TldBmyJuy3OgcWKcddDPtjhXGyRGA5gLFlzKUqu', 'Floaty water things', 1, 'alice-murphy.jpg', 4, '22.00', 'alice-murphy-cv.pdf', 'alice-murphy/alice-1.png', 'alice-murphy/alice-2.png', 'alice-murphy/alice-3.png');

INSERT INTO nf_userspecialisms (userspecialismid, userid, specialismid)
VALUES
  /* PEDRO */
  (1, 7, 1),
  /* TYLER */
  (2, 8, 2),
  /* BEN */
  (4, 9, 3),
  /* HANSON */
  (6, 10, 4),
  /* PENELOPE */
  (7, 11, 1),
  /* ALICE */
  (9, 12, 2);

/*****    PROJECT TABLES    *****/

/* PROJECTS WITH NERDS */

INSERT INTO nf_projects (projectid, clientid, nerdid, specialismid, projectname, projectdescription, budget, posted, deadline, approved, finished, inspirationimg1, inspirationimg2, inspirationimg3)
VALUES
  /*
    PROJECT: PWIZER MOBILE APP
    CLIENT: DEBBIE MICHAELS
    NERD: TYLER EATON
    STATUS: APPROVED
  */
  (1, 4, 8, 2, 'Pwizer Sales Tracking Mobile App',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '2000.00', '2017-12-30', '2018-04-29', 1, 0, 'pwizer-app/pwizer-1.png', 'pwizer-app/pwizer-2.png', 'pwizer-app/pwizer-3.png'),
  /*
    PROJECT: SUPER SOAPS WEBSITE
    CLIENT: PAUL BROWN
    NERD: PEDRO DACANTUS
    STATUS: NOT APPROVED
  */
  (2, 5, 7, 1, 'Super Soaps Website',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '450.00', '2017-12-30', '2018-03-10', 1, 0, 'soaps-website/super-soaps-1.png', 'soaps-website/super-soaps-1.jpg',
   'soaps-website/super-soaps-3.png'),
  /*
    PROJECT: CUPCAKE LOVE LOYALTY MOBILE APP
    CLIENT: JANET ANDERSON
    NERD: ALICE MURPHY
    STATUS: NOT APPROVED
  */
  (3, 5, 12, 2, 'Cupcake Love Loyalty Points Mobile App',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '1000.00', '2017-12-30', '2018-06-05', 1, 0, 'cupcake-app/cupcake-love-1.png', 'cupcake-app/cupcake-love-2.png',
   'cupcake-app/cupcake-love-3.png');

/* PROJECTS AWAITING NERDS */

INSERT INTO nf_projects (projectid, clientid, specialismid, projectname, projectdescription, budget, posted, deadline, approved, finished, inspirationimg1, inspirationimg2, inspirationimg3)
VALUES
  /*
    PROJECT: PEARSON SPECTRE WEBSITE
    CLIENT: ANGELA MCCARTHY
  */
  (4, 6, 1, 'Pearson Spectre Website',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '4000.00', '2017-12-31', '2018-04-01', 0, 0, 'law-website/pearson-spectre-1.png', 'law-website/pearson-spectre-2.png',
      'law-website/pearson-spectre-3.png'),
  /*
    PROJECT: PEARSON SPECTRE ACCOUNTING SOFTWARE
    CLIENT: ANGELA MCCARTHY
  */
  (5, 6, 4, 'Pearson Spectre Accounting Software',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '7500.00', '2018-01-03', '2018-04-01', 0, 0, 'law-software/pearson-spectre-1.png', 'law-software/pearson-spectre-2.png',
      'law-software/pearson-spectre-3.png'),
  /*
    PROJECT: CUPCAKE LOVE PAYMENT TABLET APP
    CLIENT: JANET ANDERSON
  */
  (6, 5, 3, 'Cupcake Love Easy Pay iPad App',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '800.00', '2018-01-07', '2018-06-15', 0, 0, 'cupcake-software/cupcake-love-1.png', 'cupcake-software/cupcake-love-2.png',
      'cupcake-software/cupcake-love-3.png'),
  /*
    PROJECT: PWIZER SHIPMENT TRACKER MOBILE APP
    CLIENT: DEBBIE MICHAELS
  */
  (7, 4, 2, 'Pwizer Shipment Tracker Mobile App',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '3000.00', '2018-01-11', '2018-03-01', 0, 0, 'pwizer-app/pwizer-1.png', 'pwizer-app/pwizer-2.png', 'pwizer-app/pwizer-3.png'),
  /*
    PROJECT: SUPER SOAPS PRODUCTION SOFTWARE
    CLIENT: PAUL BROWN
  */
  (8, 5, 4, 'Super Soaps Production Software',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '1250.00', '2018-01-18', '2018-05-10', 0, 0, 'soaps-software/super-soaps-1.png', 'soaps-software/super-soaps-2.png',
      'soaps-software/super-soaps-3.png'),
  /*
    PROJECT: SUPER SOAPS MOBILE APP GAME
    CLIENT: PAUL BROWN
  */
  (9, 5, 2, 'Super Soaps Mobile App Game',
      'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
      '850.00', '2018-01-19', '2018-02-25', 0, 0, 'soaps-app/super-soaps-1.png', 'soaps-app/super-soaps-2.png',
      'soaps-app/super-soaps-3.png');

INSERT INTO nf_events (eventid, creatorid, eventname, eventtype, eventdescription, eventdate, starttime, endtime, location)
VALUES
  (1, 1, 'Newcastle Networking Meetup', 1,
   'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><br>•	Ut enim ad minim veniam, quis nostrud exercitation <br><br>•	laboris nisi ut aliquip ex ea commodo consequa<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
   '2018-02-15', '18:00:00', '22:00:00',
   'Northern Design Centre<br>Abbotts Hill<br>Gateshead<br>Newcastle Upon-Tyne<br>NE8 3DF  '),
  (2, 1, 'Newcastle Workshop Meetup', 2,
   'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><br>•	Ut enim ad minim veniam, quis nostrud exercitation <br><br>•	laboris nisi ut aliquip ex ea commodo consequa<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
   '2018-02-22', '18:00:00', '21:00:00',
   'Northern Design Centre<br>Abbotts Hill<br>Gateshead<br>Newcastle Upon-Tyne<br>NE8 3DF  '),
  (3, 2, 'Durham Workshop Meetup', 2,
   'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><br>•	Ut enim ad minim veniam, quis nostrud exercitation <br><br>•	laboris nisi ut aliquip ex ea commodo consequa<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
   '2018-02-25', '18:00:00', '21:00:00', 'Unit 8<br>Parsons Court<br>Welbury Way<br>Newton Aycliffe<br>DL5 6ZE'),
  (4, 2, 'Durham Networking Meetup', 1,
   'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><br>•	Ut enim ad minim veniam, quis nostrud exercitation <br><br>•	laboris nisi ut aliquip ex ea commodo consequa<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
   '2018-03-02', '18:00:00', '22:00:00', 'Unit 8<br>Parsons Court<br>Welbury Way<br>Newton Aycliffe<br>DL5 6ZE');

INSERT INTO nf_eventattendance (attendanceid, userid, eventid)
VALUES
  /* ADMINS */
  (1, 1, 1),
  (2, 1, 2),
  (3, 1, 3),
  (4, 1, 4),
  (5, 2, 1),
  (6, 2, 2),
  (7, 2, 3),
  (8, 2, 4),
  /* JANET ANDERSON */
  (9, 3, 1),
  (10, 3, 2),
  /* DEBBIE MICHAELS */
  (11, 4, 3),
  (12, 4, 4),
  /* PAUL BROWN */
  (13, 5, 1),
  /* PEDRO DACANTUS */
  (14, 7, 3),
  (15, 7, 4),
  /* TYLER EATON */
  (16, 8, 1),
  (17, 8, 4),
  /* BEN GIROUX */
  (18, 9, 2),
  (19, 9, 3),
  /* ALICE MURPHY */
  (20, 12, 1),
  (21, 12, 2),
  (22, 12, 3),
  (24, 12, 4);

INSERT INTO nf_forums (forumid, forumname)
VALUES
  (1, 'Tips & Tricks'),
  (2, 'Miscellaneous'),
  (3, 'Frequently asked questions'),
  (4, 'Service problems');

INSERT INTO nf_posts (postid, userid, forumid, postcontent, posttime)
VALUES
  (1, 3, 3, 'Can I use Nerd Finder for re-designing my website?', '2018-01-18 09:04:19'),
  (2, 4, 1, 'Hire nerds with more experience, Tyler transformed by business!', '2018-02-03 18:10:46'),
  (3, 7, 4, 'My client hasn&#39;t paid me, what should I do?', '2018-01-26 17:09:01'),
  (4, 7, 2, 'Is being a full-time freelancer on Nerd Finder a good full time job?', '2018-01-27 22:56:08'),
  (5, 10, 1, 'Get Nerd Finder premium, it&#39;s amazing!', '2018-01-29 01:29:21'),
  (6, 11, 3, 'Are there any new features of Nerd Finder in development?', '2018-02-06 09:13:24'),
  (7, 11, 3, 'I work nights, are there any clients who have a similar schedule?', '2018-01-01 03:16:52'),
  (8, 12, 1, 'Include portfolio images that are the kind of work you&#39;d like to do!', '2018-02-07 11:34:30');

INSERT INTO nf_comments (commentid, postid, userid, commentcontent, posted, approved)
VALUES
  (1, 1, 1, 'Hi Janet, you can use Nerd Finder for any development work related to websites, mobile apps, tablet apps and software. This means you can contact Nerds about creating new websites, fixing old ones and adjusting small tweaks! For more information about the service we provide check out our &#39;How it works&#29; page', '2018-01-18 09:51:21', 1),
  (2, 6, 9, 'Bet they aren&#39;t even updating anything, their customer service is crap!', '2018-02-06 09:15:24', 0),
  (3, 7, 8, 'Pedro, the world is your oyster! If you are passionate about working as a freelancer full-time I recommend looking at articles in .net magazine for inspiration and advice on how to price work effectively per hour.', '2018-01-28 09:31:13', 0);

INSERT INTO nf_messages (messageid, senderid, recieverid, messagecontent, messagesent)
VALUES
  (1, 6, 7, 'Hi Pedro, I see you&#39;re a specialist in website development. Would you be interested in working on the Pearson Spectre site?', '2018-01-10 10:51:21'),
  (2, 7, 6, 'Hi Angela, yes I am very interested! Do you have an style guides or regulations I would need to abide to?', '2018-01-10 10:52:35'),
  (3, 6, 7, 'Yes, we do actually, I&#39;ll send them over in a minute', '2018-01-10 10:53:26');

INSERT INTO nf_techissues (issueid, reporterid, issuedescription, issuesent)
VALUES
  (1, 1, 'Server storage almost full, contact web development team immediately', '2018-01-18 11:34:12');