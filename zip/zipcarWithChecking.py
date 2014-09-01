from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
import unittest, time, re
import sqlite3 as lite
import sys
class Menues1(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(30)
        self.base_url = "http://www.zipcar.com"
        self.verificationErrors = []
        self.accept_next_alert = True
    
    def test_menues1(self):
        driver = self.driver
        driver.get(self.base_url )
	try: re.match("Car Sharing.*",driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
	#Here we click on the "is zipcar for me" tab then retrieve from the DB the ids to be matched"
        self.matchElements("is zipcar for me?")
    
    def matchElements(self,w):
        con = lite.connect('zip.db')
	con.text_factory=str
	print "opening page:" + w
	cmpDriver=self.driver
        cmpDriver.find_element_by_link_text(w).click()
	print "matching elements for:" + w
        with con:    
            cur = con.cursor()    
            cur.execute("SELECT element FROM elements where window=:win", {"win" : w})
            rows = cur.fetchall()
            for element in rows:
		      print "found element in DB:" + element[0] + " now finding it in page '" + w + "'"
	        try: cmpDriver.find_element_by_id(element[0])
        	except NoSuchElementException, e: return False
        	except: raise 

    def is_element_present(self, how, what):
        try: self.driver.find_element(by=how, value=what)
        except NoSuchElementException, e: return False
        return True

    def is_alert_present(self):
        try: self.driver.switch_to_alert()
        except NoAlertPresentException, e: return False
        return True
    
    def close_alert_and_get_its_text(self):
        try:
            alert = self.driver.switch_to_alert()
            alert_text = alert.text
            if self.accept_next_alert:
                alert.accept()
            else:
                alert.dismiss()
            return alert_text
        finally: self.accept_next_alert = True
    
    def tearDown(self):
        self.driver.quit()
        self.assertEqual([], self.verificationErrors)

if __name__ == "__main__":
    unittest.main()
