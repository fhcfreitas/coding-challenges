#1. Retornar se head for nil
#2. Iterar enquando current.next não for nil,
#3. Guardar o proximo nó numa variavel para não perder seu valor
#4. Calcular o gcd entre o valor do nó e o valor do próximo nó
#5. Criar um novo nó com esse valor
#6. Religar os ponteiros para que o novo nó fique entre o nó atual e o próximo nó original
#7. Avançar o ponteiro para o próximo nó original


def insert_greatest_common_divisors(head)
  return head if head.nil?

  current = head

  while current.next
    next_original = current.next

    gcd_value = current.val.gcd(next_original.val)
    gcd_node = ListNode.new(gcd_value)

    current.next = gcd_node
    gcd_node.next = next_original

    current = next_original
  end

  head
end
