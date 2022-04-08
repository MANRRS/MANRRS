class CreateMasterkeys < ActiveRecord::Migration[6.1]
  def change
    create_table :masterkeys do |t|
      t.string :key

      t.timestamps
    end
  end
end
