gaming = Category.find_or_create_by(name: 'Gaming')
home = Category.find_or_create_by(name: 'Home')
electronics = Category.find_or_create_by(name: 'Electronics')
clothing = Category.find_or_create_by(name: 'Clothing')

buyer1 = Buyer.find_or_create_by(name: 'Lola Bunny', sex: 'female')
buyer2 = Buyer.find_or_create_by(name: 'John Wick', sex: 'male')
buyer3 = Buyer.find_or_create_by(name: 'Kamado Tanjiro', sex: 'male')
buyer4 = Buyer.find_or_create_by(name: 'Alice', sex: 'female')

product1 = Product.find_or_create_by(name: 'PS5', price: 500, category: gaming)
product2 = Product.find_or_create_by(name: 'Xbox Series X', price: 500, category: gaming)
product3 = Product.find_or_create_by(name: 'Nintendo Switch', price: 300, category: gaming)
product4 = Product.find_or_create_by(name: 'Bucket', price: 10, category: home)
product5 = Product.find_or_create_by(name: 'Toaster', price: 50, category: home)
product6 = Product.find_or_create_by(name: 'TV', price: 500, category: electronics)
product7 = Product.find_or_create_by(name: 'Laptop', price: 1000, category: electronics)
product8 = Product.find_or_create_by(name: 'Shirt', price: 20, category: clothing)
product9 = Product.find_or_create_by(name: 'Pants', price: 30, category: clothing)
product10 = Product.find_or_create_by(name: 'Shoes', price: 50, category: clothing)

# Adds 30 orders to the database
30.times do
  order = Order.find_or_create_by(buyer: Buyer.all.sample)
  order.products = Product.all.sample(rand(1..3))
  order.calculate_total
end
