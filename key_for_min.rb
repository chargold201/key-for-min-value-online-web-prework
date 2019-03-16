# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    nil
  else
    min_value = name_hash.first[1]
    min_key = name_hash.first[0]
    name_hash.collect do |name, number|
      if number < min_value
        min_value = number
        min_key = name
      end
    end
    min_key
  end
end
