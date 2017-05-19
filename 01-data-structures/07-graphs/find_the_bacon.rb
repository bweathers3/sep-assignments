require_relative 'films'


@film_actor_hash = add_film_hash
@counter = 0
@test_array = []

  def find_kevin_bacon(person)
    @counter == 0 ? @test_array = @film_actor_hash[person] : @test_array
      if person == nil
        puts "Oh No!"
        puts "nil is not a person!"
        puts " "
        return nil
      elsif !@film_actors_guild_array.include?(person)
        puts "Oh No!"
        puts "#{person} is not a members of the film actors guild!"
        puts " "
      elsif  person == "Kevin Bacon"
        result(person)
        return @counter
=begin
      elsif @counter == 0
        #@test_array = first_stack(@film_actor_hash[person])
        @counter = 1
        if @test_array.include?("Kevin Bacon")
          result(person)
          return @counter
        else
          add_to_the_stack(@test_array)
          find_kevin_bacon(person)
        end
=end
      elsif @counter >= 0 && @counter < 7
        @counter += 1
        if @test_array.include?("Kevin Bacon")
          result(person)
          return @counter
        else
          add_to_the_stack(@test_array)
          find_kevin_bacon(person)
        end
      elsif @counter >= 7
        puts "Oh No!"
        puts "We did not find #{person} within 6 degress from Kevin Bacon"
        puts " "
        return @counter
      else
        puts "Oh No!"
        puts "Something unexpected happened"
        puts " "
        return @counter
      end
  end

private

=begin
  def first_stack(array)
    #p array
    #p @counter
    return @test_array = array
  end
=end

  def add_to_the_stack(test_array)
    hold_array = []
    if @counter == 0
      return @test_array
    elsif @counter > 0 && @counter < 7
      test_array.each do |previous_cast|
        @film_actor_hash[previous_cast].each do |person|
          hold_array.push(person)
        end
      end
    end
    return @test_array = hold_array
  end

  def result(person)
    puts "Great Job"
    puts "We found #{person} at #{@counter} degress from Kevin Bacon"
    puts " "
  end

 #find_kevin_bacon("Mike Myers") #2
#find_kevin_bacon("Kevin Bacon") #0
 #find_kevin_bacon("Chris Penn") #1
#find_kevin_bacon("Emily Blunt") #2
 #find_kevin_bacon("Matt Damon") #2
#find_kevin_bacon("Gwyneth Paltrow") #2
#find_kevin_bacon("Julianne Moore") #2
#find_kevin_bacon("Hailee Steinfield") #2
#find_kevin_bacon("Heather Graham") #3
#find_kevin_bacon("Mark Hamill") #none
#find_kevin_bacon("Harrison Ford") #none
find_kevin_bacon("Sam Elliott") #2
#find_kevin_bacon(nil)
#find_kevin_bacon("Bill Bloc") #none
