class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :designatory
      t.decimal :daily_rate
      t.string :languages
      t.string :skillset
      t.boolean :publish 

      t.timestamps
    end
  end
end
