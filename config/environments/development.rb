Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.quiet = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  # SMTP
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    api_key: 'key-642b487429617d518d555f4fd35d0b41',
    #address: 'smtp.mailgun.org',
    address: '184.173.153.200',
    port: 587,
    #url: 'https://api.mailgun.net/v3/sandbox65683e5566f64b109aa19e715dae7e8f.mailgun.org',
    #domain: 'smtp.sandbox65683e5566f64b109aa19e715dae7e8f.mailgun.org',
    domain: 'http://localhost:3000/',
    authentication: 'plain',
    user_name: 'postmaster@sandbox65683e5566f64b109aa19e715dae7e8f.mailgun.org',
    password: 'df6e93588e5b92eec32af5f5d9d65327'


    # gmail
    # address: 'smtp.gmail.com',
    # port: 587,
    # domain: "gmail.com",
    # authentication: 'plain',
    # user_name: 'rickyspires@gmail.com',
    # password: 'B1t13a14',
    # enable_starttls_auto: true,
    # openssl_verify_mode: 'none'
  }

  # config.paperclip_defaults = {
  #   storage: :s3,
  #   path: ':class/:attachment/:id/:style/:filename',
  #   s3_host_name: 's3-ap-southeast-2.amazonaws.com',
  #   s3_credentials: {
  #     bucket: 'YOUR_S3_BUCKET_NAME',
  #     access_key_id: 'YOUR_S3_ACCESS_KEY',
  #     secret_access_key: 'YOUR_S3_SECRET_ACCESS_KEY',
  #     s3_region: 'ap-southeast-2'
  #   }
  # }
end
