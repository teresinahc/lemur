module Lemur
  module Connection
    private

    def connection
      options = {
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "User-Agent": "Lemur client"
        },
        url: endpoint
      }

      Faraday.new(options) do |connection|
        connection.use Faraday::Response::ParseJson
        connection.adapter :net_http
      end
    end
  end
end
