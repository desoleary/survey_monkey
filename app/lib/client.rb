class Client
  ACCESS_TOKEN = Rails.application.secrets.survey_monkey[:access_token]

  def surveys
    survey_api = SwaggerClient::SurveysPagesAndQuestionsApi.new(client)

    handle_response do
      survey_api.get_surveys_with_http_info(opts)
    end
  end

  private

  def opts
    @opts ||= begin
                opts = {}
                opts[:header_params] = { Authorization: "Bearer #{ACCESS_TOKEN}" }
                opts[:return_type] = 'String'
                opts
              end
  end

  def client
    @client ||= SwaggerClient::ApiClient.new
  end

  def handle_response(&block)
    data, = block.call
    JSON.parse(data, symbolize_names: true)
  end
end
