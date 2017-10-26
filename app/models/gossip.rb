class Gossip < ApplicationRecord
  belongs_to :moussaillon

  
	validates :body, presence: true, length: { in: 4..150}
end
