require_relative 'cart'
require_relative 'item'

item1 = Item.new({price: 101, weight: 230, name: 'Car'})
item2 = Item.new({price: 100, weight: 230, name: 'Car'})

cart = Cart.new 
cart.add_item item1
cart.add_item item2 

cart.delete_invalid_items 

p cart.items