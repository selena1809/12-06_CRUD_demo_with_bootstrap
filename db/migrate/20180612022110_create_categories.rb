class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :code

      t.timestamps
    end
  end
end
