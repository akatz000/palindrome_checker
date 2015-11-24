require 'pry'

def palindrome?(string)
  string = string.downcase.delete(' ')
  len = string.length
  if len == 0
    false
  else
    for i in 0..(len / 2) - 1
      return false unless string[i] == string[-i - 1]
    end
    true
  end
end
