class Dog < ApplicationRecord
	has_many :stroll_dog_joins
	belongs_to :city
end
