# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create :email => 'mary@example.com', :password => 'foobar'
Category.create [{:name => 'Programming'}, 
                  {:name => 'Event'}, 
                  {:name => 'Travel'}, 
                  {:name => 'Music'}, 
                  {:name => 'TV'}]
user.articles.create :title => 'Advanced Active Record', :body => 'Models need to relate to each other. In the real world ...', :published_at => Date.today
user.articles.create :title => 'One-to-many associations', :body => 'One-to-many associations describe a pattern that you see in real world ...', :published_at => Date.today
user.articles.create :title => 'Assciations', :body => 'Active Record makes working with associations easy ...', :published_at => Date.today
