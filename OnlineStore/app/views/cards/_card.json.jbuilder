json.extract! card, :id, :name, :desc, :price, :created_at, :updated_at
json.url card_url(card, format: :json)
