Rails Project App
Hop Click

* Ruby version
2.6.3
* Rails version 
5.2.3

Basic office and life management application.
Simply createa a new office or home task, assign it to a user and remove the task when completed. 

Schema must be dropped and reloaded before use.
Schema seeds can be adjusted, removed or replaced to best suit your needs.

Step 1. Adjust rake seed file for personal use

*    a. You can add users, username and email
*    b. You can set up groups for specific tasks 
*    c. You can pre populate your data table with tasks

Step 2. run rake db:reset
*    a. This will ensure that you are working with a fresh database

Step 3 (if necessary). run rake db:seed
*    a. This will prepopulate your database with the seed file attributes you created earlier

Created with Devise, Javascript, jQuery, and OmniAuth for Facebook
