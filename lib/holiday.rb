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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, data|
      data.each do |attribute, value|
      if season == :winter
        holiday_hash[:winter][:christmas] << "Balloons"
        holiday_hash[:winter][:new_years] << "Balloons"
         holiday_hash
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |season, data|
       data
     end.flatten
  end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
      puts "#{season.capitalize}:"
      holidays.each do |holiday, decorations|
        puts"  #{holiday.to_s.split('_').collect {|word| word.capitalize }.join(' ') }: #{decorations.join(", ")}"
        # binding.pry
      end
    end
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_symbols = []
 holiday_hash.collect do |season, holidays|
   holidays.collect do |holiday, supplies|
     if supplies.include?("BBQ")
       holiday_symbols << holiday
     end
   end
 end
 holiday_symbols
end
