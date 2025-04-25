class CreateHeroes < ActiveRecord::Migration[8.0]
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :alias
      t.integer :age

      t.timestamps
    end
  end
end
