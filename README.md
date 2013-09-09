selenium
========

website test selenium

This test script implements selenium web driver libraries to connect zipcar website and checks for the existance of elements id
from the site pages. 

Files:

selenium-server-standalone.jar: This in selenium server (hub and node)
seleniumStart: this script launchs the server one time as hub and a second time as a node. 
Multiple nodes can be started on a distributed systems.

zip/zip.db:The expected element ids for the various pages are contained on a sqlite database, 
This allow testers to safely modify the test to add more pages and ids.
zip/zipcarWithChecking.py: This test file start test with Selenium pointing to zipcar.com website. 
Then analyzes the page for the presence of expected element ids. It runs on Firefox only. In the db there is also an invalid element to 
verify that the code actually catch the error.

Prerequisites:

Firefox
jre
sqlite
python

To Run test:

Selenium/seleniumStart 

Then on a separate terminal: cd zip and then python zipcarWithChecking.py
Test opens firefox and directos to the website.
The terminal shows the elements searched.


Known Issues: Sometime the test hungs while the website is waiting for api.nanigans.com to respond. In this case click on the
'x' on the browser to have the test to proceed. 
