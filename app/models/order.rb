class Order < ActiveRecord::Base
    belongs_to :coffee
    belongs_to :customer

    def receipt
        "#{self.customer.name} ordered a #{self.coffee.title} for $#{self.price}"
    end

end
