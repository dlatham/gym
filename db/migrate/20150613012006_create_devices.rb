class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :uuid
      t.references :users, index: true
      t.string :description
      t.timestamps
    end
  end
end
