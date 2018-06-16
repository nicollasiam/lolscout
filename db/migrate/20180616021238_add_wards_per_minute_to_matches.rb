class AddWardsPerMinuteToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :wards_per_minute, :float
  end
end
