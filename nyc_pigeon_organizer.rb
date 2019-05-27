def nyc_pigeon_organizer(data)
  puts "hello"
 result={}
 data.each do |k1,v1| #k1=:color v1=:purple => ["Theo", "Peter Jr.", "Lucky"],
  v1.each do |k2,v2|  #k2=:purple v2=["Theo", "Peter Jr.", "Lucky"]
    v2.each do |name|
      result[name]={color:[],gender:[],lives:[]}
    end
  end
 end
 data.each do |k1,v1| #k1=:color v1=:purple => ["Theo", "Peter Jr.", "Lucky"],
  v1.each do |k2,v2|  #k2=:purple v2=["Theo", "Peter Jr.", "Lucky"]
    v2.each do |name|
      result[name][k1]<< k2.to_s
    end
  end
end
result
end

