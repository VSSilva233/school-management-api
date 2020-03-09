RailsAdmin.config do |config|

  config.main_app_name = ['School Management', 'Admin']

  config.authorize_with do
    authenticate_or_request_with_http_basic('School Management') do |username, password|
      username == Rails.application.credentials[:admin_username] &&
      password == Rails.application.credentials[:admin_password]
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    show
    edit
    delete
    show_in_app
  end
end
