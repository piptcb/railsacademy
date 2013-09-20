# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create!([
  {
    title: "Building app using rails",
    short_title: "Building app using rails",
    duration: 9,
    cost_per_day: 100.00 ,
    summary: "learn how to use all the rails feature and components in order to create a cool app"
   
    
  },

  {
    title: "Building app using objective c ",
    short_title: "Building app using objective c",
    duration: 9,
    cost_per_day: 100.00 ,
    summary: "learn how to use all the rails feature and components in order to create a cool app"
    
    
  },

  {
    title: "Building app using cake php",
    short_title: "Building app using cake php",
    duration: 9,
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

Categorisation.create!([

  {
    course_id: 1,
    category_id: 3 
  },

  {
    course_id: 2,
    category_id: 3  
  },

  {
    course_id: 3,
    category_id: 3  
  },

  {
    course_id: 2,
    category_id: 1  
  }

])


