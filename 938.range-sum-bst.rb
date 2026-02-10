# 1. Se root.val for menor que low, ignorar valores à esquerda que serão menores
# 2. Se root.val for maior que high, ignorar valores à direita que serão maiores
# 3. Caso contrário, somar o valor e visitar ambos os lados

def range_sum_bst(root, low, high)
  return 0 if root.nil?

  if root.val < low
    range_sum_bst(root.right, low, high)
  elsif root.val > high
    range_sum_bst(root.left, low, high)
  else
    root.val +
      range_sum_bst(root.left, low, high) +
      range_sum_bst(root.right, low, high)
  end
end
