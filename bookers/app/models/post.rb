class Post < ApplicationRecord
	belongs_to :user
	validates :user_id , presence: true
	validates :body, length:0..200
	attachment :image
end
