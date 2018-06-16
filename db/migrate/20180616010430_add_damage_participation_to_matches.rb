class AddDamageParticipationToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :damage_participation, :float
  end
end
