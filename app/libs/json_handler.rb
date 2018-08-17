# frozen_string_literal: true

require 'net/http'

module JsonHandler
  class Json
    attr_reader :http

    def self.build(arguments)
      uri = URI.parse(arguments[:uri])
      new(Net::HTTP.new(uri.host, uri.port))
    end

    def initialize(arguments)
      @http = arguments
    end

    def get(path, params)
      request_json(:get, path, params)
    end

    private

    def request_json(method, path, params)
      response = request(method, path, params)
      body = JSON.parse(response.body)

      OpenStruct.new(code: response.code, body: body)
    rescue JSON::ParserError
      response
    end

    def method_missing(meth_name, *args)
      if meth_name.match?(/request/)
        rest_verb = args[0]
        path      = args[1]
        params    = args[2]
        full_path = join_path_params(path, params)
      else
        super
      end
      byebug
      http.method(rest_verb).call(full_path)
    end

    def respond_to_missing?(meth_name, include_private = false)
      meth_name.start_with?('request') || super
    end

    def join_path_params(p, pr)
      [p, pr].join('?')
    end
  end
end