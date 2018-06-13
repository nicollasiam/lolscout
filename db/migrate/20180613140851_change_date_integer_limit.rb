class ChangeDateIntegerLimit < ActiveRecord::Migration[5.2]
  def change
    change_column :matches, :date, :integer, limit: 8
  end
end
