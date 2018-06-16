class AddKillParticipationToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :kill_participation, :float
  end
end
