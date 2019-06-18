def nyc_pigeon_organizer(data)
  # write your code here!
  name_hash = {}
  #iterate over key, value pairs of pigeon data (keys are color, gender, lives; values are hashes of colors, genders, and locations)
  data.each do |key, value|
    #iterate over key, value pairs of values (keys are colors, genders and locations; values are the names of pigeons)
    value.each do |new_value, names|
      #iterate over pigeon names, if the pigeon name isn't yet a key for our new name_hash, then add it and set it's value to an empty hash
      names.each do |name|
        if !name_hash[name]
          name_hash[name] = {}
        end
        # if the pigeon in question doesn't yet have all of their keys set, set the current key to an empty array
        if !name_hash[name][key]
          name_hash[name][key] = []
        end
        # finally add the "new_value" which was a key in our second iteration above (colors, genders, locations) to our array
        name_hash[name][key] << new_value.to_s
      end
    end
  end
  name_hash
end
