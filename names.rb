
a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Mikee", :last_name => "Buyco"}
e = {:first_name => "Diana", :last_name => "Manlulu"}
names = [a, b, c, d, e]


puts 'There are '+names.length.to_s+' names in current list'
names.each{|arr| print " \n The name is "; arr.each{|key, value| print value, ""}}
print "\n"

