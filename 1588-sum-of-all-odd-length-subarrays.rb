#1. Descobrir o tamanho do array
#2. Criar um contador para o resultado
#3. Iterar sobre cada elemento do array
#4. Calcular quantos subarrays incluem esse elemento
#5. Descobrir quantos desses subarrays são ímpares
#6. Calcular a contribuição do elemento atual
#7. Acumular essa contribuição no resultado

def sum_odd_length_subarrays(arr)
  n = arr.length
  result = 0

  arr.each_with_index do |value, i|
    total_subarrays = (i + 1) * (n - i)
    odd_subarrays = (total_subarrays + 1) / 2
    result += value * odd_subarrays
  end

  result
end
