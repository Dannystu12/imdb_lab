require_relative("../db/sql_runner")

class Movie

  attr_reader :id
  attr_accessor :title, :genre, :rating

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @rating = options['rating']
  end

  def save()
    sql = "INSERT INTO movies
    (title, genre, rating)
    VALUES
    ($1, $2, $3)
    RETURNING id"
    values = [@title, @genre, @rating]
    movie = SqlRunner.run( sql, values ).first
    @id = movie['id'].to_i
  end

  def delete()
    sql = "DELETE FROM movies WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update()
    sql = "UPDATE movies SET (title, genre, rating) = ($1, $2, $3) WHERE id = $4"
    values = [@title, @genre, @rating, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM movies"
    SqlRunner.run(sql)
  end

  def self.select_all()
    sql = "SELECT * FROM movies"
    results = SqlRunner.run(sql)
    self.map_all(results, self)
  end

  def self.map_all(results, class_)
    results.map{|result_hash| class_.new(result_hash)}
  end

end
