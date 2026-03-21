#1. Criar um hash para armazenar os nós visitados
#2. Criar uma variável current para percorrer a lista, iniciando no head
#3. Enquanto current não for nulo:
#4. Verificar se current já foi visitado, se sim, retornar true pois um ciclo foi encontrado
#5. Caso contrário, marcar current como visitado no hash
#6. Avançar current para o próximo nó
#7. Se o loop terminar sem encontrar um ciclo, retornar false

def hasCycle(head)
  visited = {}

  current = head

  while current
    return true if visited[current]

    visited[current] = true
    current = current.next
  end

  return false
end
