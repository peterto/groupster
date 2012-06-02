Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['310991792308829'], ENV['088cd7383941e94e8144b47e6edddcd5']
end