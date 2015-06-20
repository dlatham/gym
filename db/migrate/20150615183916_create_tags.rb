class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :uuid
      t.references :users, index: true
      t.string :description
      t.timestamps
    end
  end
end
