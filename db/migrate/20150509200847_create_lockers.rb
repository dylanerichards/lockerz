class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.string :size

      t.timestamps
    end
  end
end
