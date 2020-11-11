array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14,
         126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139,
         222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

print "Количество элементов в массиве : #{array.count} \n\n"

print "Перевернуть массив : #{array.reverse} \n\n"

print "Найти наибольшее число #{array.max}\n\n"

print "Найти наименьшее число#{array.min}\n\n"

print "Oтсортировать от меньшего к большему#{array.sort}\n\n"

print "Отсортировать от большего к меньшему#{array.sort { |x, y| y <=> x }}\n\n"

print "Удалить все нечетные числа#{array.reject { |item| item.odd? }}\n\n"

print "Оставить только те числа, которые без остатка делятся на 3#{array.select { |item| item % 3 == 0 }}\n\n"

print "Удалить из массива числа, которые повторяются
(то есть, нужно вывести массив, в котором нет повторов)#{array.uniq}\n\n"

print "Разделить каждый элемент на 10, в результате элементы не
       должны быть округлены до целого #{array.map { |item| item / 10.to_f }}\n \n"

def array_fo_latters(array)
  arr = []
  array.uniq.each do |item|
    arr << ('a'..'z').to_a[item]
  end
  arr.compact!
end

print "Получить новый массив, который бы содержал в себе те буквы английского алфавита,
 порядковый номер которых есть в нашем массиве : #{array_fo_latters(array)} \n \n"

a = []
min = array.min
max = array.max
array.each do |item|
  a << if item == max
         min
       elsif item == min
         max
       else
         item
       end
end

print 'Поменять местами минимальный и максимальный элементы массива'
print "#{a}\n \n"

arr = []
array.each { |item| item == min ? break : arr << item }
print "Найти элементы, которые находятся перед минимальным числом в массиве#{arr}\n\n "

arr = array.sort
print "Необходимо найти три наименьших элемента#{arr[0..2]}\n"
