require 'openid/store/filesystem'

OmniAuth.config.full_path = "https://www.pooptrack.com"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_id, OpenID::Store::Filesystem.new('./tmp')
  use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end