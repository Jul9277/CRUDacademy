class Moussaillon < ApplicationRecord
	has_many :gossips
	validates_associated :gossips
end
