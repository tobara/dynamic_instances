# Dynamic instance variables & attributes

The GenericEntity class should allow any hash to be passed to its initializer which then creates instance variables for each key/value pair in the hash:
```
cat = GenericEntity.new(:color => "black", :favorite_food => "Tuna Fish")
cat.favorite_food #=> "Tuna Fish"
```
