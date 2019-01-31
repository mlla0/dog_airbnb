class Stroll < ApplicationRecord
	belongs_to :dogsitter
	has_many :stroll_dog_joins
	belongs_to :city
end
