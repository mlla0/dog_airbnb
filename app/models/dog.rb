class Dog < ApplicationRecord
	has_many :stroll_dog_joins
	has_many :strolls, through: :stroll_dog_joins
	belongs_to :city
end