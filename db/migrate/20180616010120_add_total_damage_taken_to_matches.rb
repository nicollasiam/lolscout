class AddTotalDamageTakenToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :total_damage_taken, :integer
  end
end
