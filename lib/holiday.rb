require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, supply_array|
        supply_array << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |name, supply_array|
        supply_array << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies_array = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, supply_array|
        winter_supplies_array.concat supply_array
      end
    end
  end
  winter_supplies_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
<<<<<<< HEAD
    puts "#{season.capitalize}:"
    holiday.each do |name, supplies|
      name_string = "#{name}"
      cap_name_string = name_string.split("_").each{|i| i.capitalize!}.join(" ")
      #capitalized_name_array = []
      #name_array.each do |element|
      #  capitalized_name_array << element.capitalize
    #  end
      #new_name_string = "#{capitalized_name_array.join(" ")}"
      puts "  #{cap_name_string}: #{supplies.join(", ")}"
=======
    holiday.each do |name, supplies|
      name_string = "#{name}"
      name_array = name_string.split("_")
      capitalized_name_array = []
      #capitalized_name_array << name_array.collect{|string| string.capitalize}
      binding.pry
      name_array.each do |element|
        capitalized_name_array << element.capitalize
      end
      new_name_string = "#{capitalized_name_array.join(" ")}"
      puts "#{season.capitalize}:"
      puts "  #{new_name_string.capitalize}: #{supplies.join(", ")}"
>>>>>>> 665476adc66045ca0e7b7da5a612ff6688597617
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbqs = []
  holiday_hash.each do |season, holiday|
      holiday.each do |name, supplies|
        if supplies.include?("BBQ")
          holidays_with_bbqs << name
        end
      end
  end
  holidays_with_bbqs
end
