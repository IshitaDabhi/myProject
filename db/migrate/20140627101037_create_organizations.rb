class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :code
      t.text :description
      t.string :billing_type
      t.string :start_date
      t.string :dead_date
      t.string :end_date
      t.string :git_url
      t.string :status

      t.timestamps
    end
  end
end
