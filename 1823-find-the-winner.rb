#1. Criar array de friends
#2. Enquanto friends.size for maior que um
#3. Andar k - 1 posições
#4. Retirar friend
#5. Retornar friends.first unico elemento de friends

def find_the_winner(n, k)
  friends = (1..n).to_a

  while friends.size > 1
    (k - 1).times do
      friends.push(friends.shift)
    end

    friends.shift
  end

  friends.first
end
