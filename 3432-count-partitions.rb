# 1. Calcular tamanho de nums para iteração, criar um novo array left e outro right duplicando nums
# 2. Criar uma variavel result para contar particções com diferanças pares
# 3. Iterar de 0 até n - 1, sem incluir n - 1 para não zerar o segundo array
# 4. Adicionar o elemento atual no array left e remover o primeiro elemento de right
# 5. Calcular a diferença entre a soma de left e a soma de right
# 6. Incrementar result se a diferença for par

def count_partitions(nums)
  n = nums.length

  left = []
  right = nums.dup
  result = 0

  for i in 0...(n - 1) do
      left << nums[i]
      right.shift

      difference = left.sum - right.sum

      result += 1 if difference.even?
  end

  result
end
