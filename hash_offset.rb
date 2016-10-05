#Martha has created a hash with letter symbols as keys to represent items that start with their keys.
# However, she realized everything is off by one letter.
#Write a program hash_correct that takes this wrong hash and returns the correct one.

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

def hash_correct(hash)
 #newHash = Hash[hash.map { |k, v| [k.succ, v] }]

 #newHash = hash.map { |k, v| [k.succ, v] } #this doesn't work
 return newHash
end

print hash_correct(wrong_hash)
