class CreateCategoriesCourses < ActiveRecord::Migration
  def change
    create_table :categories_courses do |t|
    	t.belongs_to :category
	    t.belongs_to :course
    end
    add_index :categories_courses, [:category_id, :course_id]
  end
  
  def self.down
    drop_table :categories_courses
  end
end
