class Pin < ApplicationRecord
	has_many :commentaires
	validates_associated :commentaires

	belongs_to :utilisateur

	validates :liens, presence: true
end
