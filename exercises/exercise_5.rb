require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@all_stores = Store.sum(:annual_revenue)
puts @all_stores


@avg_stores = Store.average(:annual_revenue)
puts @avg_stores


@all_stores_1MiL = Store.where("annual_revenue > :annual_revenue",
  {:annual_revenue => 1000000}).count

puts @all_stores_1MiL