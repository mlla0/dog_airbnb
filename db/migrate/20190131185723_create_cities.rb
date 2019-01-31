class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
    	t.string :name
      t.timestamps
    end
    add_reference :dogsitters, :city, foreign_key: true
    add_reference :dogs, :city, foreign_key: true
    add_reference :strolls, :city, foreign_key: true
  end
end
