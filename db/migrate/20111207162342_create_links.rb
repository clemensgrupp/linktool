class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :status
      t.integer :pauth
      t.integer :dauth
      t.references :domain
      
      t.timestamps
    end
    
    add_index :links, :domain_id
  end
end
