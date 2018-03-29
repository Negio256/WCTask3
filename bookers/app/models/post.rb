class Post < ApplicationRecord
	belongs_to :user
	# validates :user_id , presence: true
	validates :body, length: { maximum:200 }
	attachment :image
end
