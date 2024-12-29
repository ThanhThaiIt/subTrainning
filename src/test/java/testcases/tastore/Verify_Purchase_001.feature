#Feature: Verify puchasing by a Guest
#
#  Background:
##    * configure driver = { type: 'chrome', showDriverLog: true }
#    * configure driver = { type: 'chrome', showDriverLog: true, headless: false }
#    * def appData = data('tastore','appData')
#    * def homePage = locator('tastore', 'homepage')
#    * def cartPage = locator('tastore', 'cartpage')
#    * def shopPage = locator('tastore', 'shoppage')
##    * startConfig("chrome")
#
#  Scenario: Click on Cart and Return Shop Page, Click Add To Cart
#
#    # 1. Navigate to TaStore
#    * driver appData.url
#
#    # 2. Click on Cart
#    * click(homePage.cartLink)
#    * waitFor(cartPage.emptyCartText)
#    * click(homePage.returnShop)
#
#    # 3. Close Popup
#    * waitFor(shopPage.clickClosePopup)
#    * match text(shopPage.clickClosePopup).trim() == '×'
#    * click(shopPage.clickClosePopup)
#
#    # 4. Add To Cart
#    * waitFor(shopPage.countAddProduct)
#    * def initialCartQuantity = Java.type('java.lang.Integer').parseInt(text(shopPage.countAddProduct).trim())
#    * match initialCartQuantity == 0
#
#    * karate.log('truoc Khi Add: ' + initialCartQuantity)
#
#    * scroll(homePage.clickAddToCart)
#    * click(homePage.clickAddToCart)
#
#
#    * delay(3000)
#    * waitFor(shopPage.countAddProduct)
#    * def updateCartQuantityInt = Java.type('java.lang.Integer').parseInt(text(shopPage.countAddProduct).trim())
#    * match updateCartQuantityInt == initialCartQuantity + 1
#
#    * scroll(shopPage.clickAddToCart)
#    * click(shopPage.clickAddToCart)
#    * match updateCartQuantityInt == initialCartQuantity + 1
#    * delay(3000)
#
#
#
#
#    # 5. check status cart
#    * scroll(homePage.cartLink)
#    * mouse().move(homePage.cartLink).click()
#    * delay(5000)
#
#
#
#
#    # '- Progress is shown correctly: SHOPPING Cart is black bold while CHECKOUT and ORDER STATUS is grey
#    * def classShoppingCartValue = locate(cartPage.shoppingCartStatus).attribute('class')
#    * def classCheckoutValue = locate(cartPage.checkoutStatus).attribute('class')
#    * def classOrderStatusValue = locate(cartPage.ordersStatus).attribute('class')
#
#    * match classShoppingCartValue != classCheckoutValue
#    * match classShoppingCartValue != classOrderStatusValue
#
#
#
#
#
#    #- SHOPPING CART page shows the corrected item (name, price, quantity, total)
#
#    * def sizeOfCart =  Java.type('java.lang.Integer').parseInt(text(shopPage.countAddProduct).trim())
#
#
#    * def tblSize = locateAll(cartPage.tableCart)
#    * match sizeOfCart == karate.sizeOf(tblSize)
#
#    * def name = text("//table[contains( @class,'shop_table shop_table_responsive ')]//tr[contains(@class,'woocommerce-cart-form__cart-item cart_item st-item-meta')]//td[@class='product-details'] //a[contains(@class,'product-title')]")
#
##    *   print 'Danh sách sản phẩm trong Cart:', name
#
#
#    * def nameTableCart = text("//table[contains( @class,'shop_table shop_table_responsive ')]//tr[contains(@class,'woocommerce-cart-form__cart-item cart_item st-item-meta')]//td[@class='product-details'] //a[contains(@class,'product-title')]")
#    * def   priceTableCart = text("//table[contains( @class,'shop_table shop_table_responsive ')]//tr[contains(@class,'woocommerce-cart-form__cart-item cart_item st-item-meta')]//td[@class='product-price'] //bdi")
#
#    * def quantityTableCart = attribute("//table[contains(@class,'shop_table shop_table_responsive ')]//tr[contains(@class,'woocommerce-cart-form__cart-item cart_item st-item-meta')]//td[@class='product-quantity']//input", 'value')
#    * def   totalTableCart = text("//table[contains( @class,'shop_table shop_table_responsive ')]//tr[contains(@class,'woocommerce-cart-form__cart-item cart_item st-item-meta')]//td[@class='product-subtotal']//bdi")
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
