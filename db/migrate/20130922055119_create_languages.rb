class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :en
      t.references :tutor, index: true 
      t.timestamps
    end
  end
end
