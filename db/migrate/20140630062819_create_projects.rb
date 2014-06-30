class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :code
      t.text :description
      t.string :billing_type
      t.date :start_date
      t.date :deadline_date
      t.date :end_date
      t.string :git_url
      t.string :status

      t.timestamps
    end
  end
end
