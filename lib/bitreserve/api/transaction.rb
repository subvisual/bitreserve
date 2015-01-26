module Bitreserve
  module API
    module Transaction
      def all_public_transactions
        request_data = RequestData.new(
          Endpoints::TRANSACTIONS,
          Entities::Transaction,
          authorization_header
        )
        Request.perform_with_objects(:get, request_data)
      end

      def find_public_transaction(id: id)
        request_data = RequestData.new(
          Endpoints::TRANSACTIONS + "/#{id}",
          Entities::Transaction,
          authorization_header
        )
        Request.perform_with_object(:get, request_data)
      end
    end
  end
end