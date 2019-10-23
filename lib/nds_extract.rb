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
  total = 0
  dir_to_earnings_hash = directors_totals(source)
  director_names = list_of_directors(source)
  index = 0
  while index < director_names.length do
    director_name = director_names[index]
    total += dir_to_earnings_hash[director_name]
    index += 1
  end
  total
end

