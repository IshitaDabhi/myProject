class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :ClientName
      t.string :country

      t.timestamps
    end
  end
end
