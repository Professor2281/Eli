defmodule Lesson2 do
@pi 3.1415926  #атрибут, значение присваевается через пробел
@num 10
@word "Hello_World"
@bol true or false 

  def start do
    IO.puts(div(5,2)) 
    IO.puts(rem(5,2))
  end
  
  def string_mod() do # если заданы параметры, то значения в круглых скобках не задаем
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

  def logic do 
    #and or not # Это "строгие" операторы, они работают только со значениями true и false
    #&& || ! #"смягченными" (relaxed) операторами, потому что в отличие от строгих, они принимают любые значения. При этом все значения, кроме false и nil интерпретируются как true
  end
  #И строгие, и смягченные операторы являются ленивыми. То есть, они вычисляют только часть выражения, если этого достаточно

  def attrs do
    IO.puts(@pi)
    IO.puts(@num)
    IO.puts(@word)
    IO.puts(@bol)
  end

  #Кортеж (tuple) — это структура данных, объединяющая несколько разных значений. Кортеж похож на список, но в отличие от списка имеет фиксированную длину. В кортежах на первой позиции часто ставят атом, чтобы обозначить, что за данные собраны в кортеже. Таким образом кортеж помечается тэгом (tagged tuple).
  # my_point = {:point,100,100} #{атом,число,число}
  #user = {:user, "Ivan",27,:male}
  #{:center, {:point,100,100},radius} # кортеж в кортеже
  # {:point,x,y} = my_point # ==  равносильно значению   {:point,x,y}={:point,100,100}

  def point_info({:point,x,y}) do
    IO.puts(x)
    IO.puts(y)
  end

  def distance({:point,x1,y1},{:point,x2,y2}) do
    xdist =abs(x1 - x2)
    ydist =abs(y1 - y2)
    :math.sqrt(:math.pow(xdist,2) + :math.pow(ydist,2))
  end
end