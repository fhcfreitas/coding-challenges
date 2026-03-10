#1. Criar um set a partir do array friends para busca eficiente
#2. Iterar sobre o array order e selecionar apenas os ids que estão presentes no set de friends

require 'set'

def recover_order(order, friends)
  friends_set = friends.to_set
  order.select { |id| friends_set.include?(id) }
end
