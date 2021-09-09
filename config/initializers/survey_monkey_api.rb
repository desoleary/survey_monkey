SwaggerClient.configure do |config|
  config.api_key = 'UZh9sb9A3e2P4GuzW9qyo-MZ.AxDAFCynxa57YArn7Snvb0Ip9wOMiPyR68GIdYw8Q4AqatDlFFnx269N7VPgWM.mm2ziy3gm8TDmHPxO3MQ0a7OU2-GDia8iuYFDe48'
  config.base_path = ''
  config.debugging = ActiveModel::Type::Boolean.new.cast(ENV['SURVEY_MONKEY_API_DEBUG'])
  config
end
