class Cour < ApplicationRecord
	validates :title, presence: true,length: { in: 4..50}, uniqueness: true
	validates :description, presence: true, length: { in: 4..150}
	has_many :lessons
	validates_associated :lessons

end
	