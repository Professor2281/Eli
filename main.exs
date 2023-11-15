defmodule Lesson2 do
  def start do
    IO.puts(div(5,2)) 
    IO.puts(rem(5,2))
  end
  def string_mod(s1, s2) do # если заданы параметры, то значения в круглых скобках не задаем
    str_to_edit = " tbvrtbv ervgfrevg  sdvrev "
    String.replace(str_to_edit," ","")#(откуда берем, что меняем, на что заменить)
    #String.upcase(String.trim(s1)<>String.trim(s2)) #Полностью убирает пробелы и приводит к верхнему регистру
   # String.trim(String.upcase(s1<>s2,:default))#убирает пробелы по краям, приводит к верхнему регистру и конкатенация строк
  end
  def test(num1,num2) do
  IO.puts((num1 + num2) /num2)
  IO.puts(rem(num1, num2))
  IO.puts(div(num1, num2))
  end
end