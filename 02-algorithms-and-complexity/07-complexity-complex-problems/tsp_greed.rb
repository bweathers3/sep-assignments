

def nearest_city(cities, starting_city)
  route_cities, possible_cites = [], []
  route_cities << starting_city[0]
  cities.delete(starting_city)
  while cities[0] != nil
    test_city = cities[0]
    cities.each do |item|
      if as_the_crow_flies(starting_city, test_city) > as_the_crow_flies(starting_city, item)
        test_city = item
      end
    end
    starting_city = test_city
    cities.delete(test_city)
    route_cities << starting_city[0]
  end
  p route_cities
end

def as_the_crow_flies(current_city, test_city)
  Math.hypot(test_city[1] - current_city[1], test_city[2] - current_city[2])
end

cities = []

cities << ["Detroit", 15, 4]
cities << ["Seattle", 3, 2]
cities << ["Chicago", 14, 5]
cities << ["Durham", 17, 7]
cities << ["Cincinnati", 15, 6]
cities << ["Indianapolis", 14, 6]
cities << ["Miami", 16, 11]
cities << ["Austin", 9, 10]
cities << ["Dallas", 9, 9]
cities << ["St. Louis", 9, 6.5]
cities << ["LA", 4, 7]
cities << ["New York", 19, 5]
cities << ["Boston", 19.2, 4.5]
cities << ["Portland", 4, 2]
cities << ["Columbia", 16.5, 6.5]


nearest_city(cities, ["Durham", 17, 7])
