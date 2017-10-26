class Commentaire < ApplicationRecord
	belongs_to :utilisateur
	belongs_to :pin

	validates :contenu, presence: true
end
