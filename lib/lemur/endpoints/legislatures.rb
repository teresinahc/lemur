module Lemur
  module Endpoints
    module Legislatures
      def legislatures(body = {})
        get('legislaturas', body)
      end

      def legislature(legislature_id)
        get("legislaturas/#{legislature_id}")
      end

      def legislature_table(legislature_id, body = {})
        get("legislaturas/#{legislature_id}/mesa", body)
      end
    end
  end
end
