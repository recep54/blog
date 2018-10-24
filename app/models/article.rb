class Article < ApplicationRecord
	belongs_to :user
	belongs_to :categorie
	has_many :comments
	has_many :likes

end
