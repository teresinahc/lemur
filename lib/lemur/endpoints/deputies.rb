module Lemur
  module Endpoints
    module Deputies
      def deputies(body = {})
        get('deputados', body)
      end

      def deputy(deputy_id)
        get("deputados/#{deputy_id}")
      end

      def deputy_expenses(deputy_id, body = {})
        get("deputados/#{deputy_id}/despesas", body)
      end

      def deputy_events(deputy_id, body = {})
        get("deputados/#{deputy_id}/eventos", body)
      end

      def deputy_organs(deputy_id, body = {})
        get("deputados/#{deputy_id}/orgaos", body)
      end
    end
  end
end
