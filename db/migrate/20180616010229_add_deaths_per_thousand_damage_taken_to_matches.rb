class AddDeathsPerThousandDamageTakenToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :deaths_per_thousand_damage_taken, :float
  end
end
