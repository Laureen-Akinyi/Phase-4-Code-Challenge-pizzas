puts "Lets Make pizzas"

5.times do 
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address 
    )
end

Pizza.create(
    name: "Bianca",
    ingredients: "Tomato sauce, Garlic, Olive oil"
)
Pizza.create(
    name: "Salame",
    ingredients: "Tomato sauce, Mozzarella, Italian salami"
)
Pizza.create(
    name: "Vegetariana",
    ingredients: "Tomato sauce, Mozzarella, Vegetables"
)
Pizza.create(
    name: "Apizza",
    ingredients: "Clams, Pecorino Romano, Garlic, Olive oil, Oregano"
)
Pizza.create(
    name: "Hawaii",
    ingredients: "Tomato sauce, Cheese, Pineapple, Ham"
)

20.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id: Pizza.all[rand(Pizza.count)].id,
        restaurant_id: Restaurant.all[rand(Restaurant.count)].id
    )
end

puts "Ready pizzas."
