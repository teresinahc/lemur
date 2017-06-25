module Lemur
  module Request
    def get(path, body = {})
      request(:get, path, body)
    end

    private

    def request(method, path, body)
      raise ArgumentError, "HTTP verb #{method} not allowed." if method != :get

      response = connection.send(method) do |request|
        path = URI.encode(path)
        request.url(path, body)
      end

      response.body
    end
  end
end
