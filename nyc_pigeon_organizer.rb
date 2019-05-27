def nyc_pigeon_organizer(data)
  new_hash = {}

  data.map do |category, attributes|
    if category == :gender
      attributes.map do |gender, names|
        names.map {|name| puts name}
      end
    elsif category == :color
      attributes.map do |color, names|
        names.map {|name| puts name}
      end
    elsif category == :lives
      attributes.map do |location, names|
        names.map {|name| puts name}
      end
    end
  end

end