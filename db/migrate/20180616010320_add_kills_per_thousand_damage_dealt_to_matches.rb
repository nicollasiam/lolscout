class AddKillsPerThousandDamageDealtToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :kills_per_thousand_damage_dealt, :float
  end
end
