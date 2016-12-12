class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Asset.find(:all, params: { limit: 10 })
  end

  def testIndex
  	# @assets = ShopifyAPI::Session.temp(@shopify_session.url, @shopify_session.token) {
  		# @assets = ShopifyAPI::Asset.find(:all)
  		@orders = ShopifyAPI::Order.find(:all)
	# }
  end
end
