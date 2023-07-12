dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
    sumapalabras = Hash.new
    string.split(' ').each {|word|
        dictionary.each {|palabra|
          if palabra.downcase.index(word.downcase).is_a? Integer
            sumapalabras.has_key?(word) ? sumapalabras[word] += 1 : sumapalabras[word] = 1
          end
        }
    }
    return sumapalabras
end