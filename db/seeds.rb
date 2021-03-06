# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    first_student = Student.create(first_name: 'Kevin', last_name: 'Vahdat', age: 23, education: 'College')

    course_one = Course.create(course_name: 'Gypsy Jazz Fundamentals', hours: 4)

    first_instructor = Instructor.create(first_name: 'Paul', last_name: 'Gilbert', age: 52, salary: 45000, education: 'PHD' )

    cohort_one = Cohort.create(name: 'Rhythm Basics Spring 2019', start_date: Date.parse('March 20th 2019'), end_date: Date.parse('May 10th 2019'))