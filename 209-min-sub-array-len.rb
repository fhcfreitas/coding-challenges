# 1. setar ponteiro left e variável sum para controlar a soma da janela
# 2. setar min_length como infinito, se sum nunca for maior que target, retorna 0
# 3. percorrer o array usando each_with_index, right sendo o final da janela
# 4. somar o elemento atual à soma
# 5. enquanto a soma for maior ou igual ao target:
#   atualizar min_length com o tamanho atual da janela (right - left + 1)
#   subtrair da soma o elemento na posição left
#   avançar o ponteiro left, encolhendo a janela
# 6. checar se min_length ainda é infinito e retornar min_length se não for

def min_sub_array_len(target, nums)
  left = 0
  sum = 0
  min_length = Float::INFINITY

  nums.each_with_index do |num, right|
    sum += num

    while sum >= target
      min_length = [min_length, right - left + 1].min
      sum -= nums[left]
      left += 1
    end
  end

  min_length == Float::INFINITY ? 0 : min_length
end
