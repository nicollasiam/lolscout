class AddFirstBloodKillToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :first_blood_kill, :boolean
  end
end
