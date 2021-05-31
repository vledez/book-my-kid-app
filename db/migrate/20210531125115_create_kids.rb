class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :age
      t.string :localisation
      t.string :service
      t.integer :price

      t.timestamps
    end
  end
end
