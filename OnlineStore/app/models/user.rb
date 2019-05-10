class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	private
	before_create :confirmation_token
	def confirmation_token
	    if self.confirm_token.blank?
	        self.confirm_token = SecureRandom.urlsafe_base64.to_s
	    end
	end
end
