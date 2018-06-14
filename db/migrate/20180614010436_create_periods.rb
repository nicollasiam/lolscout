class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.bigint :last_update_at
      t.string :kind

      t.timestamps
    end
  end
end
