require "pry"

def nyc_pigeon_organizer(data)
  # Create hash to store organized pigeons
  pigeons = {}

  data.map do |category, attributes|
    if category == :color
      attributes.map do |color, names|
        names.map do |name|
          if !pigeons.has_key?(name)
            pigeons[name] = {}
          end
          if !pigeons[name].has_key?(:color)
            pigeons[name][:color] = []
          end  
          # binding.pry 
          if data[category][color].include?(name)    
            pigeons[name][:color].push(color.to_s)
          end
        end
      end
    elsif category == :gender
      attributes.map do |gender, names|
        names.map do |name|
          if !pigeons[name].has_key?(:gender)
            pigeons[name][:gender] = []
          end
          if data[category][gender].include?(name)    
            pigeons[name][:gender].push(gender.to_s)
          end
        end
      end
    elsif category == :lives
      attributes.map do |location, names|
        names.map do |name|
          if !pigeons[name].has_key?(:lives)
            pigeons[name][:lives] = []
          end
          if data[category][location].include?(name)    
            pigeons[name][:lives].push(location.to_s)
          end
        end
      end
    end
  end
  # binding.pry
  pigeons
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)