class Article < ApplicationRecord
	belongs_to :user
	belongs_to :categorie
	has_many :likes
	has_many :commentaires
end
