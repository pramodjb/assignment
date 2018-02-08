OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '194761838059-10gbmd0ko145suiq00ijife0a0bc4onn.apps.googleusercontent.com', '0zMIRhOTsSmYcPQQn1fN-b95', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end