module ContentfulModel
  class Client < Contentful::Client

    PREVIEW_API_URL = "preview.contentful.com"

    def initialize(configuration)
      if ContentfulModel.use_preview_api
        configuration[:api_url] = PREVIEW_API_URL
        configuration[:access_token] = configuration[:preview_access_token]
      end
      super({ raise_errors: true, dynamic_entries: :auto }.merge(configuration))
    end
  end
end
