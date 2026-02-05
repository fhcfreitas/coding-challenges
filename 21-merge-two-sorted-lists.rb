#1. Retornar list2 se list1 for nil e list1 se list2 for nil
#2. Se list1.val <= list2.val, list1.next recebe o resultado da recursão entre list1.next e list2 e retorna list1
#3. Caso contrário, list2.next recebe o resultado da recursão entre list1 e list2.next e retorna list2

def merge_two_lists(list1, list2)
  return list2 if list1.nil?
  return list1 if list2.nil?

  if list1.val <= list2.val
    list1.next = merge_two_lists(list1.next, list2)
    list1
  else
    list2.next = merge_two_lists(list1, list2.next)
    list2
  end
end
