class CreateTutorsSkills < ActiveRecord::Migration
  def change
    create_table :tutors_skills do |t|
    	t.belongs_to :tutor
    	t.belongs_to :skill
    end
    add_index :tutors_skills, [:tutor_id, :skill_id]
  end
  
end


