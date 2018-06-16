class AddGoldParticipationToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :gold_participation, :float
  end
end
