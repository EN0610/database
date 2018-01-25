
/*    USER TABLES    */

CREATE TABLE nf_users 
( 
    userid INT(10) NOT NULL AUTO_INCREMENT, 
    usertypeid INT(10) NOT NULL, 
    firstname  VARCHAR(100) NOT NULL, 
    lastname  VARCHAR(100) NOT NULL, 
    email VARCHAR(200) NOT NULL, 
    username VARCHAR(200) NOT NULL,
    dob DATE NOT NULL, 
    userpassword VARCHAR(100) NOT NULL, 
    passwordhint VARCHAR(200) NOT NULL, 
    premium TINYINT(1) NOT NULL, 
    profilepic VARCHAR(200) NOT NULL, 
    company VARCHAR(100), 
    jobtitle VARCHAR(100), 
    businessarea VARCHAR(100),
    /*   NERD ONLY   */ 
    experience INT(2), 
    hourlyrate DECIMAL(5,2), 
    nerdcv VARCHAR(200), 
    portfolioimg1 VARCHAR(200), 
    portfolioimg2 VARCHAR(200), 
    portfolioimg3 VARCHAR(200), 
    PRIMARY KEY (userid), 
    CHECK (dob>=18),
    UNIQUE (username)
) Engine = InnoDB;

CREATE TABLE nf_usertypes 
( 
    usertypeid INT(10) NOT NULL AUTO_INCREMENT, 
    usertypedesc VARCHAR(100) NOT NULL, 
    PRIMARY KEY (usertypeid)
) Engine = InnoDB;

CREATE TABLE nf_userspecialisms 
( 
    userspecialismid INT(10) NOT NULL AUTO_INCREMENT, 
    userid INT(10) NOT NULL, 
    specialismid INT(10) NOT NULL, 
    PRIMARY KEY (userspecialismid)
) Engine = InnoDB;

CREATE TABLE nf_specialismtypes 
(
    specialismid INT(10) NOT NULL AUTO_INCREMENT, 
    specialismdesc VARCHAR(100) NOT NULL, 
    PRIMARY KEY (specialismid)
) Engine = InnoDB;

/*    PROJECT TABLES    */

CREATE TABLE nf_projects 
( 
    projectid INT(10) NOT NULL AUTO_INCREMENT, 
    clientid INT(10) NOT NULL, 
    nerdid INT(10), 
    specialismid INT(10) NOT NULL, 
    projectname VARCHAR(200) NOT NULL, 
    projectdescription VARCHAR(500) NOT NULL, 
    budget DECIMAL(10,2) NOT NULL,
    posted DATE NOT NULL,
    deadline DATE NOT NULL, 
    approved TINYINT(1) NOT NULL,
    finished TINYINT(1) NOT NULL, 
    inspirationimg1 VARCHAR(200), 
    inspirationimg2 VARCHAR(200), 
    inspirationimg3 VARCHAR(200),
    PRIMARY KEY (projectid)
) Engine = InnoDB;

/*    EVENT TABLES    */

CREATE TABLE nf_events 
( 
    eventid INT(10) NOT NULL AUTO_INCREMENT, 
    creatorid INT(10) NOT NULL, 
    eventname VARCHAR(200) NOT NULL,
    eventtype VARCHAR(200) NOT NULL, 
    eventdescription VARCHAR(500) NOT NULL, 
    eventdate DATE NOT NULL, 
    starttime TIME NOT NULL, 
    endtime TIME NOT NULL, 
    location VARCHAR(200) NOT NULL, 
    PRIMARY KEY (eventid)
) Engine = InnoDB;

CREATE TABLE nf_eventattendance 
( 
    attendanceid INT(10) NOT NULL AUTO_INCREMENT, 
    userid INT(10) NOT NULL, 
    eventid INT(10) NOT NULL, 
    PRIMARY KEY (attendanceid)
) Engine = InnoDB;

/*    COMMUNICATION TABLES    */

CREATE TABLE nf_forums 
( 
    forumid INT(10) NOT NULL AUTO_INCREMENT, 
    forumname VARCHAR(100) NOT NULL,
    PRIMARY KEY (forumid)
) Engine = InnoDB;

CREATE TABLE nf_posts
(
    postid INT(10) NOT NULL AUTO_INCREMENT, 
    userid INT(10) NOT NULL, 
    forumid INT(10) NOT NULL, 
    postcontent VARCHAR(200) NOT NULL,
    posttime DATETIME NOT NULL,
    PRIMARY KEY (postid)
) Engine = InnoDB;

CREATE TABLE nf_comments 
( 
    commentid INT(10) NOT NULL AUTO_INCREMENT, 
    postid INT(10) NOT NULL, 
    userid INT(10) NOT NULL, 
    commentcontent VARCHAR(500) NOT NULL, 
    posted DATETIME NOT NULL,
    approved TINYINT(1) NOT NULL,
    PRIMARY KEY (commentid)
) Engine = InnoDB;

CREATE TABLE nf_messages 
( 
    messageid INT(10) NOT NULL AUTO_INCREMENT, 
    senderid INT(10) NOT NULL, 
    recieverid INT(10) NOT NULL, 
    messagecontent VARCHAR(500) NOT NULL, 
    messagesent DATETIME NOT NULL,
    PRIMARY KEY (messageid)
) Engine = InnoDB;

/*    ADMIN TABLES    */

CREATE TABLE nf_techissues 
( 
    issueid INT(10) NOT NULL AUTO_INCREMENT, 
    reporterid INT(10) NOT NULL, 
    issuedescription VARCHAR(500) NOT NULL, 
    issuesent DATETIME NOT NULL,
    PRIMARY KEY (issueid) 
) Engine = InnoDB;