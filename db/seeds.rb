# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Meme.destroy_all
Comment.destroy_all

Meme.create(title:'documentation', image_url:'https://techbeacon.com/sites/default/files/docs_4.png', rating:0)
Meme.create(title:'first day at flatiron', image_url:'https://tr2.cbsistatic.com/hub/i/2014/05/15/f8964afd-bd82-4e0e-bcbe-e927363dcdc1/3b858e39e2cf183b878f54cad0073a67/codedoge.jpg', rating:0)
Meme.create(title:'javascript problems', image_url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxeSSo9YaYHTMB9-UDOXtt1t3hqLXDwNtI4cSh4GBgutFV8ZvVXA', rating:0)
Meme.create(image_url:'https://i.pinimg.com/originals/11/b4/20/11b420fbf1595be3056ad6355277933c.jpg', rating:0)
Meme.create(title:'class-y', image_url:'https://koenig-media.raywenderlich.com/uploads/2015/08/firstclass.png', rating:0)
Meme.create(image_url:'https://i.redditmedia.com/44p1oKwG1Ho1LQIXCw4EvDsaOfVlQEmxpJq7-Mjra2o.png?w=1024&s=93e057b6b483dcaf5787cbe9a1f172f0', rating:0)
Meme.create(image_url:'https://i.redditmedia.com/FPKzY7-nKBTrJwLNhLp4xPzdSToFzbkaWOvnOdCLxbc.jpg?w=662&s=eaecf6467ee2c3a6d7e08799fde1cd5c', rating:0)

25.times do
  meme_id = Meme.all.map {|m| m.id}.sample
  text = Faker::Hacker.say_something_smart
  Comment.create(text:text, rating:0, meme_id:meme_id)
end
