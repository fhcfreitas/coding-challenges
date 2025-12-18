#1. Transformar string em array, excluindo strings vazis
#2. Pegar o ultimo o tamanho do ultimo elemnto

def length_of_last_word(s)
  words = s.split
  result = words[-1].length

  result
end
