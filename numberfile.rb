#!/usr/bin/env ruby
load 'numberfile_helper.rb'

super_hash = initialise_hash

input = gets.chomp.downcase.gsub(/[^a-z\s]/, '').split ' '

numbers = []

input.each { |word| numbers << super_hash[word] unless super_hash[word].nil? }

i=sum=stack=0

while i<numbers.length
  
  n = numbers[i]
  ni= numbers[i-1]

  if i==0 || stack==0
    i+=1
    stack = n
    next
  end

  if n>=1000
    sum+=stack*n
    stack=0
  else
    if ni<n
      stack*=n
    else
      stack+=n
    end
  end
  if ni>=1000 && n<1000
    sum+=stack
    stack=n
  end

  i+=1
end 
sum+=stack

puts sum
