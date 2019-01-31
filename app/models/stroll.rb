class Stroll < ApplicationRecord
	belongs_to :dogsitter
	has_many :stroll_dog_joins
	has_many :dogs, through: :stroll_dog_joins
	belongs_to :city
end
