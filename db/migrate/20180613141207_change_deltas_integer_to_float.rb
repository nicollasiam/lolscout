class ChangeDeltasIntegerToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :matches, :creeps_per_min_deltas_0_10, :float, precision: 2
    change_column :matches, :creeps_per_min_deltas_10_20, :float, precision: 2
    change_column :matches, :creeps_per_min_deltas_20_30, :float, precision: 2
    change_column :matches, :creeps_per_min_deltas_30_end, :float, precision: 2
    change_column :matches, :xp_per_min_deltas_0_10, :float, precision: 2
    change_column :matches, :xp_per_min_deltas_10_20, :float, precision: 2
    change_column :matches, :xp_per_min_deltas_20_30, :float, precision: 2
    change_column :matches, :xp_per_min_deltas_30_end, :float, precision: 2
    change_column :matches, :gold_per_min_deltas_0_10, :float, precision: 2
    change_column :matches, :gold_per_min_deltas_10_20, :float, precision: 2
    change_column :matches, :gold_per_min_deltas_20_30, :float, precision: 2
    change_column :matches, :gold_per_min_deltas_30_end, :float, precision: 2
  end
end
