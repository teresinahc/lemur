module Lemur
  class Client
    include Connection
    include Request

    DEFAULT_ENDPOINT = 'https://dadosabertos.camara.leg.br/api/v2'.freeze

    attr_accessor :endpoint

    def initialize(endpoint = nil)
      @endpoint = endpoint || DEFAULT_ENDPOINT
    end
  end
end
