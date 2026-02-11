#1. Criar uma variável unsuccessful que soma cada vez que um estudante não pega um sanduíche para saber quando parar se não houverem mais sanduiches
#2. Enquanto students e sandwiches não estiver vazio e unsuccessful for menor que tamanho de students
#3. Retirar primeiro elemento da fila studentes e comparar com primeiro elemento da fila sandwiches
#4. Se forrem iguais, retirar o primeiro sandwich da fila e reiniciar contagem unsuccessful
#5. Se não forem, adicionar o student atual no final da fila e adicionar 1 a unsuccessful
#6. Retornar tamanho de students ao final

def count_students(students, sandwiches)
  unsuccessful = 0

  while !students.empty? && !sandwiches.empty? && unsuccessful < students.size
    actual_student = students.shift

    if actual_student == sandwiches.first
      sandwiches.shift
      unsuccessful = 0
    else
      students.push(actual_student)
      unsuccessful += 1
    end
  end

  students.size
end
