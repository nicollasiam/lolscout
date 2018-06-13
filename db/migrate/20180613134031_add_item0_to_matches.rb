class AddItem0ToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :item_0, :string
  end
end
