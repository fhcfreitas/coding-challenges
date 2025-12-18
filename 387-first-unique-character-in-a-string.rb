#1. Conta a frequência de cada caractere armazenado num hash com key/value pair
#2. Encontra o primeiro index desse hash que tenha valor 1
#3. Retornar -1 se não encontrar nenhum

def first_uniq_char(s)
  freq = Hash.new(0)
  s.each_char { |c| freq[c] += 1 }

  s.each_char.with_index do |c, i|
      return i if freq[c] == 1
  end

  return -1
end
