class ShoppingCart

    def initialize(token:)
        @token = token
    end

    def order
        @order ||= Order.find_or_create_by(token: @token) do |order|
            order.sub_total = 0
        end
    end
    
end
