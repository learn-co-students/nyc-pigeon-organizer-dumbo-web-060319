require 'pry'
require 'byebug'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |category, stats|
    stats.each do |attribute, pigeon_array|
      pigeon_array.each do |pigeon|
        if !pigeon_list[pigeon]
          pigeon_list[pigeon] = {}
        end
        if !pigeon_list[pigeon][category]
          pigeon_list[pigeon][category] = []
        end
        pigeon_list[pigeon][category] << attribute.to_s
      end
    end
  end
  return pigeon_list
end