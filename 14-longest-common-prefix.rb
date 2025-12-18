#1. Encontrar a menor string do array
#2. Inicializar uma nova string para o prefixo
#3. Iterar sobre cada caractere da menor string
#4. Na iteração, armazenar o caractere atual da menor string
#5. Comparar esse caractere com todas as outras strings
#6. Se alguma string não possui o mesmo caractere na posição i, retorna o prefixo encontrado até o momento
#7. Se todas as strings possuem o caractere, adiciona ao prefixo

def longest_common_prefix(strs)
  return "" if strs.empty?

  min_str = strs.min_by(&:length)
  prefix = String.new

  (0...min_str.length).each do |i|
    char = min_str[i]
    strs.each do |str|
      return prefix if str[i] != char
    end

    prefix << char
  end

  prefix
end
