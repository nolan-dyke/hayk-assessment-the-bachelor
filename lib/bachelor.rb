def get_first_name_of_season_winner(data, season)
  data.each do |season_var, contestants|
      if season_var == season 
      contestants.each do |people| 
        if people["status"] == "Winner"
        first_name = people["name"].split(' ')
        return_name = first_name.first 
        return return_name
        end 
      end 
    end 
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season_var, contestants|
    contestants.each do |people| 
      if people["occupation"] == occupation
      return people["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_var, contestants|
    contestants.each do |people| 
      if people["hometown"] == hometown 
        counter += 1 
      end 
    end 
  end 
  counter
end

def get_occupation(data, hometown)
  data.each do |season_var, contestants|
    contestants.each do |people| 
      if people["hometown"] == hometown 
        return people["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  age_sum = 0
  counter = 0
  data.each do |season_var, contestants|
    if season_var == season 
    contestants.each do |people| 
      counter += 1 
      age_sum += people["age"].to_f
    end 
  end 
  end 
  result = age_sum / counter 
  return result.round
end
