def nyc_pigeon_organizer (pigeons_data)
  # write your code here!
  new_data = {}
  #find data names for all sets
  pigeons_data.each do |main_key, info|
    names = info.values
    #populate the keys
    names.each do |each_group|
      each_group.each do |each_name|
        if !new_data.has_key?(each_name)
          new_data[each_name] = {color: [], gender: [], lives: []}
        end
      end
    end
  end

  #populate data
  new_data.each do |name, data|
    data.each do |attribute, valuearray|
      pigeons_data[attribute].each do |value, namearray|
        if namearray.include?(name)
          new_data[name][attribute] << value.to_s
        end
      end
    end
  end
  
end