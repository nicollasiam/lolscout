class AddDamagePerGoldToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :damage_per_gold, :float
  end
end
