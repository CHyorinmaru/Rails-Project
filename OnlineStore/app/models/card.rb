class Card < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :shopping_carts
end
