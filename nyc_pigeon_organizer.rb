require "pry"
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, info|
  	info.each do |spec, names|
  	  names.each do |name|
  	    if !new_hash.include?(name)
  	      new_hash[name] = {attribute => [spec.to_s]}
  	    elsif !new_hash[name].include?(attribute)
          new_hash[name][attribute] = [spec.to_s]
        else
  	  	  new_hash[name][attribute].push(spec.to_s)
  	    end
  	  end
    end
  end
  new_hash
end