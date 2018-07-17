movies = {
  BladeRunner2049: 5,
  The_Incredibles: 4.5,
  The_Lego_Batman_Movie: 4
  }

puts "What do you want to do? 
--add--
--update--
--display--
--delete--"

choice = gets.chomp.downcase

case choice
  when "add"
  	puts "What is the title? "
  	title = gets.chomp
  	puts "What is the rating? "
  	rating = gets.chomp
  	if movies[title.to_sym].nil?
       	movies[title.to_sym] = rating.to_i
  			puts "Movie added "
    else 
      puts "The movie is already in the database"
    end 
  when "update"
  	puts "Update which movie? "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "Movie not in database "
    else
      puts "What is your new rating? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Updated "
    end
  when "display"
  	movies.each{ |movie, rating|
      puts "#{movie}: #{rating}"}
  when "delete"
  	puts "What is the title? "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "Movie not in database "
    else
      movies.delete(title)
      puts "Movie deleted "
    end
else
  puts "Error!"
end 

