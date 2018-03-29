class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts , dependent: :destroy
  attachment :image
  validates :name, presence: true, length:2..20
  validates :introduction, length:0..50, allow_blank: true
end
