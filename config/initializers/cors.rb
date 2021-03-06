Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins(*ENV.fetch('ALLOW_REQUESTS_FROM').split(','))

    resource(
      '*',
      headers: :any,
      methods: %i(get post put delete patch options)
    )
  end
end
