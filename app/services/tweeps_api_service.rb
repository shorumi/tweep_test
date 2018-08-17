# frozen_string_literal: true

module TweepsApiService
  class Client
    def tweets
      tweeps_api_connection.get
    end

    private

    def tweeps_api_uri
      TWEEPS_API_SERVICE['tweeps_uri']
    end

    def tweeps_api_connection
      JsonHandler::Json.build(
        uri: tweeps_api_uri
      )
    end
  end
end
