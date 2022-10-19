class Customer < ActiveRecord::Base
    has_many :orders
    has_many :coffees, through: :orders

    def order_coffee(coffee_title,price)
        coffee=Coffee.find_by(title: coffee_title)
        Order.create(price:price, coffee_id:coffee, customer_id: self)
    end

    def total_purchases_amount
        orders.sum(:price)
    end

    def dislike_coffee(coffee_title)
        # self
        # self refers to instance that we are calling method on.
        coffee=self.coffees.find_by(title:coffee_title)

        orders = coffee.orders.filter do |order|
                    order.customer_id == self.id
                end
    
        orders.destroy
        # find the instance that we need to access, look at data and add/seed more options if needed.
        # understand self by running alone

        puts"#{name} has been refunded$#{order.price}"

    end
end
