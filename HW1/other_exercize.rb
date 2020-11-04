nextEx(54)

p "Дан целочисленный массив. Заменить все положительные элементы на значение максимального."

arr_54 = (-10..5).to_a
result_54=[]
print arr_54
puts""

     arr_54.each do |n|
        n=arr_54.max if n>=0
        result_54 << n
     end

print result_54
