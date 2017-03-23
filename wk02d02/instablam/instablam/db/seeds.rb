# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pic1 = Picture.create({img: "https://s3.eu-west-2.amazonaws.com/instablam/IMG_20131216_172007.jpg" , caption:"First Image"})
pic2 = Picture.create({img: "https://s3.eu-west-2.amazonaws.com/instablam/IMG_20150416_170936.jpg" , caption:"Second Image"})
pic3 = Picture.create({img: "https://s3.eu-west-2.amazonaws.com/instablam/IMG_20150423_162425.jpg" , caption:"Third Image"})

user = User.create({name: "Steve"})
user2 = User.create({name: "Sal"})
user3 = User.create({name: "Sam"})
user4 = User.create({name: "Osvaldo"})


comment1 = Comment.create({content: "haha very funny"})
comment2 = Comment.create({content: "loooool"})
comment3 = Comment.create({content: "nice!!!!!!"})
comment4 = Comment.create({content: "nice work dude!"})


user.pictures.push pic1
user2.pictures.push pic2
user.pictures.push pic3

pic1.comments.push comment1
pic1.comments.push comment2
pic2.comments.push comment3
pic3.comments.push comment4

user2.comments.push comment1
user3.comments.push comment2
user4.comments.push comment3
user2.comments.push comment4

user2.liked.push pic2
user3.liked.push pic1
user4.liked.push pic3
user4.liked.push pic1

user1.followers.push user2
user1.followers.push user3
user1.followers.push user4
