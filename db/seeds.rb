carmel = Coffee.create(title:"caramel macchiato")
mocha = Coffee.create(title:"mocha frappe")
apple = Coffee.create(title:"apple crisp oatmilk frappuccino")
pumpkin = Coffee.create(title:"pumpkin cream cold brew")
vanilla = Coffee.create(title:"iced toasted vanilla oatmilk shaken espresso")

brooke = Customer.create(name:"Brooke")
dan = Customer.create(name:"Dan")
otto = Customer.create(name:"Otto the Cat")
sofia = Customer.create(name: "Sofia")
sassy = Customer.create(name:"Sassy the Cat")


xs= Order.create(price:1,coffee_id:apple.id,customer_id:sassy.id)
small = Order.create(price:10,coffee_id:carmel.id,customer_id:brooke.id)
medium = Order.create(price:25,coffee_id:vanilla.id,customer_id:otto.id)
large = Order.create(price:99,coffee_id:mocha.id,customer_id:dan.id)
xl= Order.create(price:200,coffee_id:pumpkin.id,customer_id:sofia.id)
last= Order.create(price:120,coffee_id:apple.id,customer_id:brooke.id)