# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Louis Zhang', image_url: 'https://scontent.fsnc1-2.fna.fbcdn.net/v/t1.0-9/13566978_1338304666183052_5644939161729767612_n.jpg?oh=9f3176f9eadf59f5441627ed5378b5a3&oe=58C62DF1')
User.create(username: 'Jason Li', image_url: 'https://scontent.fsnc1-2.fna.fbcdn.net/v/t1.0-9/15135956_1618473271503026_3221235054076682461_n.jpg?oh=9a3389b3d05c333e6c55c0a35ea5fb8b&oe=58BEC6B9')
User.create(username: 'Henry Huang', image_url: 'https://scontent-sjc2-1.xx.fbcdn.net/t31.0-8/13603657_1303111333051353_4694311482001864579_o.jpg')


Product.create(name: 'Jameson Whiskey', owner: 'Henry H.', description: '5, My favorite drink')
Product.create(name: 'Kirkland Vodka', owner: 'Kris Nalla', description: '10, For the party tonight')
Product.create(name: 'Hennessey', owner: 'YG400', description: '1, Extra')

Product.all.each do |product|
  User.all.each do |user|
    Review.create(user_id: user.id, product_id: product.id, comment: 'Ah yes it\'s pretty good')
  end
end
