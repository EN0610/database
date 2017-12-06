/*****    USER TABLES    *****/

INSERT INTO nf_usertypes (usertypeid, usertypedesc)
VALUES (1,'admin'), (2,'nerd'), (3,'client');

INSERT INTO nf_specialismtypes (specialismid, specialismdesc)
VALUES (1, 'Websites'), (2, 'Mobile apps'), (3, 'Tablet apps'), (4, 'Software');

INSERT INTO nf_users (userid, usertypeid, fullname, email, dob, userpassword, passwordhint, premium, profilepic, company, jobtitle, businessarea)
VALUES 
/* ADMINS */
(1, 1, 'Danny Simpson', 'harryronchetti@gmail.com', '1993-03-20', 'Nospmis1', 'Life in reverse', 1, 'danny-simpson.jpg', 'Nerd Finder', 'Webmaster', 'Technology'),
(2, 1, 'Charlotte Jarvis', 'harryronchetti@gmail.com', '1986-05-05', 'Sivraj1', 'Life in reverse', 1, 'charlotte-jarvis.jpg', 'Nerd Finder', 'Webmaster', 'Technology'),
/* CLIENTS */
(3, 3, 'Janet Anderson', 'dale.clement@northumbria.ac.uk', '1982-07-01', 'Redvelvet1', 'Favourite cupcake', 0, 'janet-anderson.jpg', 'Cupcake Love', 'Managing Director', 'Hospitality'),
(4, 3, 'Debbie Michaels', 'dale.clement@northumbria.ac.uk', '1971-06-21', 'Bewiser1', 'Personal goal', 1, 'debbie-michaels.jpg', 'Pwizer', 'Senior Partner', 'Pharmaceuticals'),
(5, 3, 'Paul Brown', 'dale.clement@northumbria.ac.uk', '1986-06-21', 'Clean4lyf', 'My aim', 0, 'paul-brown.jpg', 'Super Soaps', 'Founder', 'Cosmetics'),
(6, 3, 'Angela McCarthy', 'dale.clement@northumbria.ac.uk', '1991-01-08', 'Wincase5', 'What I do', 1, 'angela-mccarthy.jpg', 'Pearson Spectre', 'Associate', 'Law');

INSERT INTO nf_users (userid, usertypeid, fullname, email, dob, userpassword, passwordhint, premium, profilepic, experience, hourlyrate, nerdcv, portfolioimg1, portfolioimg2, portfolioimg3)
VALUES
/* NERDS */
(7, 2,'Pedro Dacantus','jack.breakell@northumbria.ac.uk','1997-09-15', 'code15life', 'The truth', 0, 'pedro-dacantus.jpg', 2, '20.00', 'pedro-dacantus-cv.pdf', 'pedro-dacantus/pedro-1.png', 'pedro-dacantus/pedro-2.png', 'pedro-dacantus/pedro-3.png'),
(8, 2,'Tyler Eaton','jack.breakell@northumbria.ac.uk','1988-10-04', 'Codem4ster', 'My alias', 1, 'tyler-eaton.jpg', 10, '28.00', 'tyler-eaton-cv.pdf', 'tyler-eaton/tyler-1.png', 'tyler-eaton/tyler-2.png', 'tyler-eaton/tyler-3.png'),
(9, 2,'Ben Giroux','jack.breakell@northumbria.ac.uk','1979-08-24', 'Devt1ngs', 'My passion', 0, 'ben-giroux.jpg', 18, '24.00', 'ben-giroux-cv.pdf', 'ben-giroux/ben-1.png', 'ben-giroux/ben-2.png', 'ben-giroux/ben-3.png'),
(10, 2,'Hanson Buork','jack.breakell@northumbria.ac.uk','1991-11-29', 'Sk8rboy', 'Favourite activity', 1, 'hanson-buork.jpg', 5, '32.00', 'hanson-buork-cv.pdf', 'hanson-buork/hanson-1.png', 'hanson-buork/hanson-2.png', 'hanson-buork/hanson-3.png'),
(11, 2,'Penelope Holden','jack.breakell@northumbria.ac.uk','1985-11-29', 'Edsheer4n', 'Favourite music artist', 1, 'penelope-holden.jpg', 9, '22.00', 'penelope-holden-cv.pdf', 'penelope-holden/penelope-1.png', 'penelope-holden/penelope-2.png', 'penelope-holden/penelope-3.png'),
(12, 2,'Alice Murphy','jack.breakell@northumbria.ac.uk','1994-11-29', 'Bubble5', 'Floaty water things', 1, 'alice-murphy.jpg', 4, '22.00', 'alice-murphy-cv.pdf', 'alice-murphy/alice-1.png', 'alice-murphy/alice-2.png', 'alice-murphy/alice-3.png');

INSERT INTO f_userspecialisms (userspecialismid, userid, specialismid)
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

INSERT INTO nf_projects (projectid, clientid, nerdid, specialismid, projectname, projectdescription, budget, deadline, approved, inspirationimg1, inspirationimg2, inspirationimg3)
VALUES
/* 	
	PROJECT: PWIZER MOBILE APP 
	CLIENT: DEBBIE MICHAELS
	NERD: TYLER EATON
*/
(1, 4, 8, 2, 'Pwizer Mobile App', 'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
'2000.00', '2018-04-29', 1, 'pwizer-app/pwizer-1.png', 'pwizer-app/pwizer-2.png', 'pwizer-app/pwizer-3.png'),
/*
	PROJECT: SUPER SOAPS WEBSITE
	CLIENT: PAUL BROWN
	NERD: PEDRO DACANTUS
*/
(2, 5, 7, 1, 'Super Soaps Website', 'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
'450.00', '2018-03-10', 0, 'soaps-website/super-soaps-1.png', 'soaps-website/super-soaps-1.jpg', 'soaps-website/super-soaps-3.png'),
/*
	PROJECT: CUPCAKE LOVE GAME
	CLIENT: JANET ANDERSON
	NERD: ALICE MURPHY
*/
(3, 5, 12, 2, 'Cupcake Love App', 'Project description dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in',
'1000.00', '2018-06-05', 0, 'soaps-website/super-soaps-1.png', 'soaps-website/super-soaps-1.jpg', 'soaps-website/super-soaps-3.png'),

/* PROJECTS AWAITING NERDS */
