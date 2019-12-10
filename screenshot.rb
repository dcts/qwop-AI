browser = BrowserPool.instance.get_browser
driver.navigate.to 'https://francium.tech'
width  = driver.execute_script("return Math.max(document.body.scrollWidth, document.body.offsetWidth, document.documentElement.clientWidth, document.documentElement.scrollWidth, document.documentElement.offsetWidth);")
height = driver.execute_script("return Math.max(document.body.scrollHeight, document.body.offsetHeight, document.documentElement.clientHeight, document.documentElement.scrollHeight, document.documentElement.offsetHeight);")
driver.manage.window.resize_to([width+100, 1500].min, [height+100, 3000].min) #Restrict to maximum of 1500 x 3000
driver.save_screenshot("sample.png")
