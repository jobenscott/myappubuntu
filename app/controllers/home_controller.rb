class HomeController < ShopifyApp::AuthenticatedController
  def index
  	# https://{shop}.myshopify.com/admin/oauth/authorize?client_id={api_key}&scope={scopes}&redirect_uri={redirect_uri}&state={nonce
  	# @url = "https://{@shopify_session.name}.myshopify.com/admin/oauth/authorize?client_id={api_key}&scope={scopes}&redirect_uri={redirect_uri}&state={nonce"
  #   session = ShopifyAPI::Session.new(self.url, self.access_token)
  	# @something = @shop_session
  	# @something2 = @shop_session.api_key
  	# @something3 = @shop_session.url
  #   session.valid?
    # ShopifyAPI::Base.active_session(session)
    # @orders = ShopifyAPI::Order.find(:all, params: { limit: 10 })
   	# redirect_to "https://radiant-savannah-16136.herokuapp.com/getAccess"
   	session = ShopifyAPI::Session.new(@shopify_session.name, @shopify_session.token)
   	ShopifyAPI::Base.active_session(session)
   	ShopifyAPI::ScriptTag.create(:event => "onload", :src => 'https://radiant-savannah-16136.herokuapp.com/assets/javascripts/test.js')
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
