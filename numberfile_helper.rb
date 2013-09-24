#!/usr/bin/env ruby
def initialise_hash
digits=%w[zero one two three four five six seven eight nine]
digits_hash = Hash[digits.map.with_index.to_a]

teens=%w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

teens_hash = Hash[teens.each_with_index.map {|x, i| [x, i+10]}]

tens=%w[twenty thirty forty fifty sixty seventy eighty ninety hundred]

tens_hash = Hash[tens.each_with_index.map {|x, i| [x, (i+2)*10]}]

multipliers = %w[thousand million billion trillion quadrillion quintillion 
  sextillion septillion octillion nonillion decillion undecillion 
  duodecillion tredecillion quattuordecillion quindecillion]

multipliers_hash = Hash[multipliers.each_with_index.map{ |x, i| [x, (1000**(i+1)) ]}]

super_hash = digits_hash.merge(teens_hash).merge(tens_hash).merge(multipliers_hash)
end