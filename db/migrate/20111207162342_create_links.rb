class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :status
      t.integer :pauth
      t.integer :dauth

      t.timestamps
    end
  end
end
