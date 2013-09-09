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
        #try: self.assertEqual("Car Sharing, an alternative to car rental and car ownership - Zipcar", driver.title)
	try: re.match("Car Sharing.*",driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
	#Here we click on the "how it works" tab then retrieve from the DB the ids to be matched"
        self.matchElements("how it works")
    
    def matchElements(self,w):
        con = lite.connect('zip.db')
	con.text_factory=str
	print "opening page:" + w
	cmpDriver=self.driver
        cmpDriver.find_element_by_link_text(w).click()
	print "matching elements for:" + w
	#allPage=cmpDriver.find_elements_by_xpath("//*")
        with con:    
            cur = con.cursor()    
            cur.execute("SELECT element FROM elements where window=:win", {"win" : w})
            rows = cur.fetchall()
            for element in rows:
		print "found element in DB:" + element[0]
	        try: cmpDriver.find_element_by_id(element[0])
        	except NoSuchElementException, e: return False
		#Future implementation of search by text and by element name		
		#elem = cmpDriver.find_element_by_xpath("//body[contains(text()),element[0]]")
		#self.is_element_present("name",element[0])

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
