def get_first_name_of_season_winner(data, season)
  # code here
  h = Hash.new
  data[season].each do |hashes|
    hashes.each do |k,v|
      if v == "Winner"
      h = hashes
  end
end
end
h["name"].split[0]
end
#need 

def get_contestant_name(data, occupation)
ha = {}
  data.each do |season, season_deets|
  season_deets.each do |hashes|
  hashes.each do |k,v|
      if v == occupation
        ha = hashes
  end
  end
  end
end
ha["name"]
end

def count_contestants_by_hometown(data, hometown)
counter = 0
  data.each do |season, season_deets|
  season_deets.each do |hashes|
  hashes.each do |k,v|
      if v == hometown
        counter +=1
  end
  end
  end
end
counter
end

def get_occupation(data, hometown)
array2 =[]
has = {}
  data.each do |season, season_deets|
  season_deets.each do |hashes|
  hashes.each do |k,v|
      if v == hometown
        has = hashes
        array2 << has
  end
  end
  end
end
#has["occupation"]
array2[0]["occupation"]
end

def get_average_age_for_season(data, season)
def average1(array)
  
  array.inject(&:+) / (array.size)
end

ages =[]  
  data[season].each do |hashes|
    hashes.each do |k,v|
      if k == "age"
      ages << v.to_f
    end
  end
end
average1(ages).round
end
