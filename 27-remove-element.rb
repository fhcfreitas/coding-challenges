#1. Criar um ponteiro k para próxima posição válida
#2. Iterar por cada elemento de nums e verificar se é igual a val
#3. Se não for, adicionar elemento num na posição k e incrementar k
#4. Retornar k
def remove_element(nums, val)
  k = 0

  nums.each do |num|
    if num != val
        nums[k] = num
        k += 1
    end
  end

  k
end
