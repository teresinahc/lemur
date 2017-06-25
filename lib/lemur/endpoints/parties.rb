module Lemur
  module Endpoints
    module Parties
      def parties(body = {})
        get('partidos', body)
      end

      def party(party_id)
        get("partidos/#{party_id}")
      end
    end
  end
end
