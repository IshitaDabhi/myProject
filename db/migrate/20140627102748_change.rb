class Change < ActiveRecord::Migration
  def change
  	change_table :organizations do |t|  
  

  	t.change :start_date, :datetime 
  end
  end
end
