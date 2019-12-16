class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :year
      t.references :make, null: false, foreign_key: true

      t.timestamps
    end
  end
end
