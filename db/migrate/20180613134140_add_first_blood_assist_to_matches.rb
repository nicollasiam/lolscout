class AddFirstBloodAssistToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :first_blood_assist, :boolean
  end
end
