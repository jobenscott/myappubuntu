ShopifyApp.configure do |config|
  config.api_key = ENV['SHOPIFY_CLIENT_API_KEY']
  config.secret = ENV['SHOPIFY_CLIENT_API_SECRET']
  config.scope = 'read_customers, read_orders, read_products, read_themes, write_themes'
  config.embedded_app = true
  # config.redirect_uri = 'https://radiant-savannah-16136.herokuapp.com/auth/shopify/callback'
end