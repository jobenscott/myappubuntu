class HomeController < ShopifyApp::AuthenticatedController
  def index
  	# https://{shop}.myshopify.com/admin/oauth/authorize?client_id={api_key}&scope={scopes}&redirect_uri={redirect_uri}&state={nonce
  	# @url = "https://#{@shop_session.url}/admin/oauth/access_token?client_id="https://{shop}.myshopify.com/admin/oauth/authorize?client_id={api_key}&scope={scopes}&redirect_uri={redirect_uri}&state={nonce
  #   session = ShopifyAPI::Session.new(self.url, self.access_token)
  	# @something = @shop_session
  	# @something2 = @shop_session.api_key
  	# @something3 = @shop_session.url
  #   session.valid?
    # ShopifyAPI::Base.active_session(session)
    # @orders = ShopifyAPI::Order.find(:all, params: { limit: 10 })
    @url = request.original_url
  end

  def testIndex
  	# @assets = ShopifyAPI::Session.temp(@shopify_session.url, @shopify_session.token) {
  		# @assets = ShopifyAPI::Asset.find(:all)
  		@orders = ShopifyAPI::Order.find(:all)
	# }
  end

  def getAccess 

  end
end
