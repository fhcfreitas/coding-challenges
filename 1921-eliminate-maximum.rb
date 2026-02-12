# 1. criar um novo array times para medir o tempo de chegada
# 2. ordenar os tempos de chegada para saber quem chega primeiro
# 3. iterar sobre times com index que representa o minuto atual
# 4. se o tempo de chegada time for menor ou igual ao minuto atual,
# 5. retornar o minuto atual pois o monstro chegou
# 6. se nenhum monstro chegar antes, retornar o tamanho de times

def eliminate_maximum(dist, speed)
  times = dist.each_with_index.map do |d, i|
    (d + speed[i] - 1) / speed[i]
  end

  times.sort!

  times.each_with_index do |time, minute|
    return minute if time <= minute
  end

  times.length
end
