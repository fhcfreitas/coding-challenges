#1. Checar se head é nil
#2. Loop enquanto current.next não for nil ou false
#3. Checar se current.val é igual a current.next.val
#4. Se sim, sobrescrever current.next for current.next.next
#5. Se não, andar o ponteiro para o próximo nó

def delete_duplicates(head)
    return head if head.nil?

    current = head

    while current.next
        if current.val == current.next.val
            current.next = current.next.next
        else
            current = current.next
        end
    end

    head
end
