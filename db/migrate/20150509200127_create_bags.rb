class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.string :size
      t.references :locker, index: true

      t.timestamps
    end
  end
end
