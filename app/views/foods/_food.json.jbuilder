json.extract! food, :id, :name, :code, :price, :created_at, :updated_at
json.url food_url(food, format: :json)