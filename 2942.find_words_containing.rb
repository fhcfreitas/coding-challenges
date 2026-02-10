#1. Criar array indexes para receber os indices
#2. Iterar sobre cada elemento do array e verificando se possui o caracter
#3. Se sim, insere o número do index em indexes

def find_words_containing(words, x)
  indexes = Array.new()

  words.each_with_index do |w, i|
    indexes << i if w.include?(x)
  end

  indexes
end
