selenium
========

website test selenium

This test script implement semenium web driver libraries to connect zipcar website and checks for the existance of elements id
from the site pages. 

Files:

selenium-server-standalone.jar: This in selenium server (hub and node)
seleniumStart: this script launchs the server one time as hub and a second time as a node. 
Multiple nodes can be started on a distributed systems.

zip/zip.db:The expected element ids for the various pages are contained on a sqlite database, 
This allow testers to safely modify the test to add more pages and ids without touching the code.
zip/zipcarWithChecking.py: This test file start test with Selenium pointing to zipcarcom website. Then analyze each page for the presence of expected element ids. It runs on Firefox only.
