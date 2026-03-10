#1. Criar um ponteiro para o inicio (left) e para o final de height (right)
#2. Criar uma variavel max_area que irá armazenar o maior valor da area
#3. Enquanto o ponteiro inicial for menor que o ponteiro final
#4. Calcular largura que é ponteiro final - ponteiro inicial
#5. Pegar o menor valor de height na posição do ponteiro inicial e final (h)
#6. Calcular area : largura * h
#7. Atualizar max_area para verificar se a area encontrada é maior que o max_area anterior
#8. Se height[left] < height[right], andar com ponteiro inicial
#9. Caso contrario, andar com ponteiro final

def max_area(height)
  left = 0
  right = height.length - 1
  max_area = 0

  while left < right
    width = right - left
    h = [height[left], height[right]].min
    area = width * h

    max_area = [max_area, area].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  max_area
end
