Feature: Verify puchasing by a Guest
  Background:
    * startConfig("chrome")
    * def appData = data('tastore','appData')
    * def homePage = locator('tastore', 'homepage')
    * def cartPage = locator('tastore', 'cartpage')


  Scenario:
    # 1. Navigate to TaStore
    * driver appData.url

    # 2. Click on Cart
    * click(homePage.cartLink)

    * waitFor(cartPage.emptyCartText)
    * click(homePage.returnShop)
    * print 'Test completed'
    * scroll(homePage.clickAddToCart)
    * click(homePage.clickAddToCart)
    * delay(5000)
    * scroll(homePage.cartLink)
    * mouse().move(homePage.cartLink).click()
    * delay(10000)



