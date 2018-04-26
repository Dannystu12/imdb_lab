require_relative('../models/casting')
require_relative('../models/movie')
require_relative('../models/star')

movie1 = Movie.new({'Title' => 'The Shawshank Redemption', 'genre' => 'Crime', 'rating' => 9})
movie1.save()
movie2 = Movie.new({'Title' => 'The Room', 'genre' => 'Drama', 'rating' => 3})
movie2.save()
movie3 = Movie.new({'Title' => 'Frozen', 'genre' => 'Animation', 'rating' => 7})
movie3.save()

star1 = Star.new({'first_name' => 'Morgan', 'last_name' => 'Freeman'}),
star1.save
star2 = Star.new({'first_name' => 'Tommy', 'last_name' => 'Wiseau'}),
star2.save
star2 = Star.new({'first_name' => 'Kirsten', 'last_name' => 'Bell'}),
star3.save












binding.pry
nil
