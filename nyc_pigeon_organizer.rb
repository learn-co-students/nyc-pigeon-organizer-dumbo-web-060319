
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |attribute, names|
      names.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  data[:color].each do |attribute, names|
    names.each do |name|
      if data[:color][attribute].include?(name)
        pigeon_list[name][:color] << attribute.to_s
      end
    end
  end
  data[:gender].each do |attribute, names|
    names.each do |name|
      if data[:gender][attribute].include?(name)
        pigeon_list[name][:gender] << attribute.to_s
      end
    end
  end
  data[:lives].each do |attribute, names|
    names.each do |name|
      if data[:lives][attribute].include?(name)
        pigeon_list[name][:lives] << attribute.to_s
      end
    end
  end
  pigeon_list
end
