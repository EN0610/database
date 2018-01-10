/*    USER TABLES    */

ALTER TABLE nf_users 
ADD FOREIGN KEY (usertypeid) REFERENCES nf_usertypes(usertypeid),
ADD UNIQUE (username);

ALTER TABLE nf_userspecialisms
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid),
ADD FOREIGN KEY (specialismid) REFERENCES nf_specialismtypes(specialismid);

/*    PROJECT TABLES    */

ALTER TABLE nf_projects
ADD FOREIGN KEY (nerdid) REFERENCES nf_users(userid),
ADD FOREIGN KEY (clientid) REFERENCES nf_users(userid),
ADD FOREIGN KEY (specialismid) REFERENCES nf_specialismtypes(specialismid);

/*    EVENT TABLES    */

ALTER TABLE nf_events
ADD FOREIGN KEY (creatorid) REFERENCES nf_users(userid);

ALTER TABLE nf_eventattendance
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid),
ADD FOREIGN KEY (eventid) REFERENCES nf_events(eventid);

/*    COMMUNICATION TABLES    */

ALTER TABLE nf_posts
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid),
ADD FOREIGN KEY (forumid) REFERENCES nf_forums(forumid);

ALTER TABLE nf_comments
ADD FOREIGN KEY (postid) REFERENCES nf_posts(postid),
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid);

ALTER TABLE nf_messages
ADD FOREIGN KEY (senderid) REFERENCES nf_users(userid),
ADD FOREIGN KEY (recieverid) REFERENCES nf_users(userid);

/*    ADMIN TABLES    */

ALTER TABLE nf_techissues
ADD FOREIGN KEY (reporterid) REFERENCES nf_users(userid);