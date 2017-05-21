require_relative 'films'


@people = add_film_hash
@counter = 0
@test_array = []
@films_array = []

  def find_kevin_bacon(person)
    @counter != 0 ? @test_array = @preivous_cast : @test_array.push(person)
    film_names = nil
      if person == nil
        puts "Oh No!"
        puts "nil is not a person!"
        puts
        return nil
      elsif !@film_actors_guild_array.include?(person)
        puts "Oh No!"
        puts "#{person} is not a members of the film actors guild!"
        puts
      elsif  person == "Kevin Bacon"
        result(person)
        return @counter
      elsif @counter >= 0 && @counter < 7
        @counter += 1
        @test_array.each do |previous_cast_item|
        @preivous_cast = []
          if @people[@film_actors_guild_array.index(previous_cast_item)] != nil
            pointer = @people[@film_actors_guild_array.index(previous_cast_item)].head
            loop do
              break if pointer == nil
              if pointer.cast.include?("Kevin Bacon")
                @films_array.push(pointer.title)
                result(person)
                return @counter
              else
                pointer.cast.each do |p|
                  @preivous_cast.push(p)
                end
                film_names == nil ? film_names = pointer.title : film_names = film_names + "  +  " + pointer.title
              end
            pointer = pointer.next
            end
          end
        end
        @films_array.push(film_names)
        find_kevin_bacon(person)
      elsif @counter >= 7
        puts "Oh No!"
        puts "We did not find #{person} within 6 degress from Kevin Bacon"
        puts
        return @counter
      else
        puts "Oh No!"
        puts "Something unexpected happened"
        puts
        return @counter
      end
  end

private

  def result(person)
    puts
    puts
    puts "Great Job"
    puts "We found #{person} at #{@counter} degress from Kevin Bacon"
    puts
    puts "The films used were:"
    puts @films_array
    puts
  end

#find_kevin_bacon("Mike Myers") #2
#find_kevin_bacon("Kevin Bacon") #0
#find_kevin_bacon("Chris Penn") #1
#find_kevin_bacon("Emily Blunt") #2
#find_kevin_bacon("Matt Damon") #2
#find_kevin_bacon("Gwyneth Paltrow") #2
#find_kevin_bacon("Julianne Moore") #2
#find_kevin_bacon("Hailee Steinfield") #2
#find_kevin_bacon("Mark Hamill") #none
#find_kevin_bacon("Harrison Ford") #none
#find_kevin_bacon("Sam Elliott") #2
#find_kevin_bacon(nil)
find_kevin_bacon("Bill Bloc") #none
