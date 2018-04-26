require('pry')
require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({'title' => 'The Shawshank Redemption', 'genre' => 'Crime', 'rating' => 9})
movie1.save()
movie2 = Movie.new({'title' => 'The Rooom', 'genre' => 'Drama', 'rating' => 3})
movie2.save()
movie2.title = 'The Room'
movie2.update()
movie3 = Movie.new({'title' => 'Frozen', 'genre' => 'Animation', 'rating' => 7})
movie3.save()

star1 = Star.new({'first_name' => 'Morgan', 'last_name' => 'Freeman'})
star1.save()
star2 = Star.new({'first_name' => 'Tmmy', 'last_name' => 'Wiseau'})
star2.save()
star2.first_name = 'Tommy'
star2.update()
star3 = Star.new({'first_name' => 'Kirsten', 'last_name' => 'Bell'})
star3.save()














binding.pry
nil
