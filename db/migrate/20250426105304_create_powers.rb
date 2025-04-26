class CreatePowers < ActiveRecord::Migration[8.0]
  def change
    create_table :powers do |t|
      t.string :name
      t.text :description
      t.references :hero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
