class Lesson < ApplicationRecord
  belongs_to :cour 
  validates :title, presence: true, length: { in: 4..50}
  validates :body, presence: true, length: { in: 4..1000}

end
