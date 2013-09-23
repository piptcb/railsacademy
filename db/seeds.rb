# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.delete_all
Category.delete_all
Objective.delete_all
Textbook.delete_all
Skill.delete_all
Tutor.delete_all

Course.create!([
  {
    title: "Building app using rails",
    short_title: "Building app using rails",
    duration: 8,
    cost_per_day: 100.00 ,
    summary: "learn how to use all the rails feature and components in order to create a cool app"
      
  },

  {
    title: "Building app using objective c ",
    short_title: "Building app using objective c",
    duration: 7,
    cost_per_day: 100.00 ,
    summary: "learn how to use all the rails feature and components in order to create a cool app"
        
  },

  {
    title: "Building app using cake php",
    short_title: "Building app using cake php",
    duration: 10,
    cost_per_day: 100.00 ,
    summary: "learn how to use all the rails feature and components in order to create a cool app",
    published: true
    
  }

])


Objective.create!([

  {
    name: "Learn to code",
    course_id: 1
  },

  {
    name: "Learn to code 1",
    course_id: 1
  },

  {
    name: "Learn to code 2",
    course_id: 1
  },

  {
    name: "Learn to code 3",
    course_id: 2
  },

  {
    name: "Learn to code 4",
    course_id: 2
  },

  {
    name: "Learn to code 5",
    course_id: 3
  }

])


Category.create!([

  {
    name: "Rails Programming Courses in Cambodia"
  },

  {
    name: "Rails3  Programming Courses in Cambodia"
  },

  {
    name: "Rails4 Programming Courses in Cambodia"
  }

])


cat1 = Category.first
cat1.courses.push(Course.first)
cat1.save

cat1 = Category.first
cat1.courses.push(Course.last)
cat1.save


cat1 = Category.last
cat1.courses.push(Course.first)
cat1.save

Textbook.create!([

  {
    title: "Begin ruby on rails"
  },

  {
    title: "HTML5 Programming"
  },

  {
    title: "Pro Python"
  },

  {
    title: "Ruby advance"
  },

  {
    title: "Grammer in programming language"
  }

])


cat1 = Course.first
cat1.textbooks.push(Textbook.first)
cat1.save

cat1 = Course.first
cat1.textbooks.push(Textbook.last)
cat1.save


cat1 = Course.last
cat1.textbooks.push(Textbook.first)
cat1.save





Skill.create!([ 
  
  { 
    name: "Ruby"
  },

  {
    name: "Rails"
  },

  {
    name: "PHP"
  },

  {
    name: "Javascript"
  }, 

  {
    name: "Javascript"
  },

  {
    name: "Jquery"
  }, 
    
  {
    name: "HTML5"
  }


])  

Language.create(en: 'English')
Language.create(en: 'French')
Language.create(en: 'Khmer')
Language.create(en: 'Thai')

