from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time
op = Options()
op.add_argument("--no-sandbox")
op.add_argument("--headless")
#op.add_experimental_option("detach", True)
driver = webdriver.Chrome(options=op)
toplam = 0

while True:
  try:
    driver.get("https://codesandbox.io/p/devbox/sweet-http-62rlpc")
    toplam += 1
    print(f"Toplam: {toplam}")
  except Exception as e:
    print(e)  
  time.sleep(15)
  pass