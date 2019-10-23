$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  names = []
  index = 0

  while index < source.length do
    names << source[index][:name]
    index += 1
  end

def total_gross(source)
  grand_total = 0
  all_directors_total = directors_totals(source)
  all_director_name = list_of_directors(source)
  index = 0
  while index < all_director_name.length do
    each_director_name = all_director_name[i]
    grand_total += all_directors_total[]
    index += 1
  end
  grand_total
end


