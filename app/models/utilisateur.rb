class Utilisateur < ApplicationRecord
	has_many :pins dependent: :destroy
	validates_associated :pins

	has_many :commentaires
	validates_associated :commentaires

	validates :nom, presence: true, length:{ in: 3..10}, uniqueness: true
	
	
end
