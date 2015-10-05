OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    provider :facebook, Rails.application.secrets.facebook_app_id, Rails.application.secrets.facebook_app_secret,
             :scope => 'email,public_profile', :image_size => 'large', :display => 'popup'
  else
    provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
             :scope => 'email,public_profile', :image_size => 'large', :display => 'popup'
  end

end
