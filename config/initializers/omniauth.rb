Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,  Rails.application.secrets.google_client_id,  Rails.application.secrets.google_client_secret, {}
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end