class CreateStrollDogJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :stroll_dog_joins do |t|
    	t.belongs_to :dog, index: true
    	t.belongs_to :stroll, index: true
      t.timestamps
    end
  end
end
