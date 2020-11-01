def nextEx(number)
  puts""
puts  number.to_s + "-"*80
end

nextEx(1)
p "Дан целочисленный массив.Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
arr = *109..122
print arr
puts ""
puts ""
even=[]
odd=[]

arr.each_with_index do |name,index|
      index.even? ? (even << name) : (odd << name)
end

puts "these are elements with even indices: #{even}"
puts "these are elements with odd indices#{odd}"

nextEx(2)

p "Дан целочисленный массив.Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."

print arr
puts ""
puts ""

arr.each_with_index do |name,i|
      if arr[0] < arr[i] && arr[-1] > arr[i]
        @j=i+1
        @i=i
        @el=arr[i]
        break
      end
end

puts " Element [#{@el}] satisfies the conditions. Number of elements '#{@j}', index : #{@i}"

nextEx(3)

 p "Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент.
 Первый и последний элементы массива не изменять."
  print arr
  puts ""

 arr3 = Array.new(arr)
 arr3.each_with_index do |name,i|
    unless ( i==0 || i == arr.length-1 )
        unless name.odd?
        arr3[i]=arr3[i]+arr3[0]
        end
    end
 end
 print arr3
 puts ""
nextEx(4)

p "Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент.
 Первый и последний элементы массива не изменять."

 print arr
 puts ""

 arr4=Array.new

 arr.each_index do |i|
   case
   when i==0 || i == arr.length-1
     arr4 << arr [i]
   when  arr[i].odd?
     arr4<< arr[i]+arr.last
   else
    arr4<< arr[i]
   end
end
print arr4

nextEx(5)

 p "Дан целочисленный массив. Заменить все положительные элементы на значение минимального."

arr5 = (-7..5).to_a
arr5_1=[]
print arr5
puts""

      arr5.each do |n|
         n=arr5.min if n>0
         arr5_1 << n
      end

print arr5_1

nextEx(6)
p "Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального."

arr6=Array.new(arr5)
arr6_1=[]

print arr6
puts""
    arr6.each do |n|
       n=arr6.max if n<0
       arr6_1 << n
    end
print arr6_1

nextEx(7)
p "Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию."

arr7=Array.new(arr)
arr7_1=[]
print arr7
puts""
  arr7_1=arr7.rotate()
print arr7_1
nextEx(8)

p "Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil."

arr7=Array.new


def geo_prog(a = 2, r, n)
  (0...n).map { |e| a * r ** e }
end
arr7 = geo_prog(a = 2, 5, 10)
 # arr7 = [2, 10, 50, 250, 1250, 6250, 3997671250, 156250, 781250, 3906250]
arrRatio=[]


print arr7
puts""

  unless arr7.length <=2
          arr7.each_index do |i|
                    unless (arr7[i+1] == nil)
                          unless (arr7[i] == 0)
                            arrRatio << arr7[i+1] / arr7[i]
                          end
                    end
          end
   end

   if
arrRatio.uniq!.length<=1
  puts "denominator of progression:#{arrRatio}"
   else
  puts "nil"
end

nextEx(9)

p 'Дан целочисленный массив. Найти количество его локальных максимумов.'

arr9=Array.new(15){rand 60..293}

print arr9
puts""
arr9_1=[]

arr9.each_cons(3) do |a|
  arr9_1 << a.max
end
amount = arr9_1.count

puts "number of local maxima: #{amount}"


nextEx(10)
