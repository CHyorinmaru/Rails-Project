class HomeController < ApplicationController
	def index
		@cards = Card.all
	end

	def make_admin
		if current_user.present?
			current_user.admin = true
			current_user.save
		end
		@cards = Card.all

		redirect_to cards_path
	end

	def login_page
	end
end
