class AddGoldWithVisionWardsToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :gold_with_vision_wards, :float
  end
end
