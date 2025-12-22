#1. Criar um hash para receber os pesos de acordo com os valores únicos
#2. Ordena pelo value que é o primeiro elemento do par

def merge_similar_items(items1, items2)
  weights = Hash.new(0)

  items1.each do |value, weight|
    weights[value] += weight
  end

  items2.each do |value, weight|
    weights[value] += weight
  end

  weights.sort
end
