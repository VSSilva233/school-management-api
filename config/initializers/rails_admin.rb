RailsAdmin.config do |config|
  config.main_app_name = ['Gerenciamento escolar', 'Admin']
   config.excluded_models = ['NotificationStudent']

  config.authorize_with do
    authenticate_or_request_with_http_basic('Gerenciamento escolar') do |username, password|
      username == Rails.application.credentials[:admin_username] &&
      password == Rails.application.credentials[:admin_password]
    end
  end

  config.actions do
    dashboard
    index
    new
    show
    edit do
      except ["Notification"]
    end
    delete
    show_in_app
    export
  end
end
