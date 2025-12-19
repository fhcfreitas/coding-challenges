#1. Pegar a soma dos elementos de num
#2. Inicializar contagem para left sum e array de answer com nums.length
#3. Iterar sobre cada elemento de nums
#4. Calcular a soma da direita usando prefix sum
#5. Calcular a diferença absoluta entre esquerda e direita
#6. Atualizar o prefix sum da esquerda

def left_right_difference(nums)
  total_sum = nums.sum
  left_sum = 0
  answer = Array.new(nums.length)

  nums.each_with_index do |num, i|
    right_sum = total_sum - left_sum - num
    answer[i] = (left_sum - right_sum).abs
    left_sum += num
  end

  answer
end
