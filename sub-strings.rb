# primera aproximacion (mal entendido), aqui buscamos la string en el diccionario

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
    sumapalabras = Hash.new
    string.split(' ').each do |word|
        dictionary.each do |palabra|
          if palabra.downcase.index(word.downcase).is_a? Integer
            sumapalabras.has_key?(word) ? sumapalabras[word] += 1 : sumapalabras[word] = 1
          end
    return sumapalabras
end

# ejercicio real, aqui buscamos el diccionario en la string

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
    sumapalabras = Hash.new
    dictionary.each do |palabra|
       if string.downcase.scan(palabra.downcase).length > 0 
        sumapalabras[palabra] = string.downcase.scan(palabra.downcase).length
       end
    return sumapalabras
end