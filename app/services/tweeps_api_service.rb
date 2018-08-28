# frozen_string_literal: true

module TweepsApiService
  class Client
    def tweeps
      tweeps_api_connection.get('/tweeps', '', Username: username)
    end

    private

    def username
      TWEEPS_API_SERVICE['tweeps_http_username']
    end

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
