class CreateCoursesTextbooks < ActiveRecord::Migration
  def change
    create_table :courses_textbooks do |t|
	    t.belongs_to :textbook
	    t.belongs_to :course
    end
    add_index :courses_textbooks, [:textbook_id, :course_id]
  end
end
