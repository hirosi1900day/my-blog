# frozen_string_literal: true

Rails.application.configure do
  config.lograge.enabled = Rails.env.production? || Rails.env.staging?
  config.lograge.formatter = Lograge::Formatters::Json.new
  config.lograge.custom_payload do |controller|
    {
      host: controller.request.host,
      remote_ip: controller.request.remote_ip,
    }
  end
  config.lograge.custom_options = lambda do |event|
    exceptions = %w(controller action format id)
    {
      time: event.time,
      host: event.payload[:host],
      remote_ip: event.payload[:remote_ip],
      params: event.payload[:params].except(*exceptions),
      exception_object: event.payload[:exception_object],
      exception: event.payload[:exception],
      backtrace: event.payload[:exception_object].try(:backtrace),
    }
  end
end
