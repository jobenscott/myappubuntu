class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end

  def testIndex
  	@assets = ShopifyAPI::Session.temp(@shopify_session.url, @shopify_session.token) {
  		ShopifyAPI::Asset.find(:all)
	}
  end
end
