/*    USER TABLES    */

ALTER TABLE nf_users
ADD FOREIGN KEY (usertypeid) REFERENCES nf_usertypes(usertypeid) ON DELETE CASCADE,
ADD FOREIGN KEY (userspecialismid) REFERENCES nf_userspecialisms(userspecialismid) ON DELETE CASCADE;

ALTER TABLE nf_userspecialisms
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid) ON DELETE CASCADE,
ADD FOREIGN KEY (specialismid) REFERENCES nf_specialismtypes(specialismid) ON DELETE CASCADE;

/*    PROJECT TABLES    */

ALTER TABLE nf_projects
ADD FOREIGN KEY (nerdid) REFERENCES nf_users(userid) ON DELETE CASCADE,
ADD FOREIGN KEY (clientid) REFERENCES nf_users(userid) ON DELETE CASCADE,
ADD FOREIGN KEY (specialismid) REFERENCES nf_specialismtypes(specialismid) ON DELETE CASCADE;

/*    EVENT TABLES    */

ALTER TABLE nf_events
ADD FOREIGN KEY (creatorid) REFERENCES nf_users(userid) ON DELETE CASCADE;

ALTER TABLE nf_eventattendance
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid) ON DELETE CASCADE,
ADD FOREIGN KEY (eventid) REFERENCES nf_events(eventid) ON DELETE CASCADE;

/*    COMMUNICATION TABLES    */

ALTER TABLE nf_posts
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid) ON DELETE CASCADE,
ADD FOREIGN KEY (forumid) REFERENCES nf_forums(forumid) ON DELETE CASCADE;

ALTER TABLE nf_comments
ADD FOREIGN KEY (postid) REFERENCES nf_posts(postid) ON DELETE CASCADE,
ADD FOREIGN KEY (userid) REFERENCES nf_users(userid) ON DELETE CASCADE;

ALTER TABLE nf_messages
ADD FOREIGN KEY (senderid) REFERENCES nf_users(userid) ON DELETE CASCADE,
ADD FOREIGN KEY (recieverid) REFERENCES nf_users(userid) ON DELETE CASCADE;

/*    ADMIN TABLES    */

ALTER TABLE nf_techissues
ADD FOREIGN KEY (reporterid) REFERENCES nf_users(userid) ON DELETE CASCADE;
