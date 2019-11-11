class AddCategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :category, :string
    add_column :products, :style, :string
  end
end
