class CreateCategorisations < ActiveRecord::Migration
  def change
    create_table :categorisations do |t|
    	t.belongs_to  :category 
    	t.belongs_to  :course   
        t.timestamps
    end
  end
end
