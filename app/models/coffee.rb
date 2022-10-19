class Coffee < ActiveRecord::Base
    has_many :orders
    has_many :customers, through: :orders

    def unique_customer_names
        names = self.customers.pluck(:name)
        names.uniq
    end

    def self.most_ordered
        # coffees.max_by{|i| coffees.count(i)}
        all.max_by{|coffee| coffee.orders.length}
        all.includes(:orders).max_by{|coffee| coffee.orders.length
    end

    # def self.most_expensive
    #     order_list = self.all.map do |coffee|
    #         coffee.orders
    #     end
    #     #flatten nested arrays and find max price
    #     order_list.flatten(1).max_by {|order| order.price} 
    # end



end
