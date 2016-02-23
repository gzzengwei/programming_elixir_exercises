check_rem = fn
  ( 0, 0, _ ) -> "FizzBuzz"
  ( 0, _, _ ) -> "Fizz"
  ( _, 0, _ )-> "Buzz"
  ( _, _, n ) -> n
end

fizzBuzz = fn n ->
  check_rem.(rem(n, 3), rem(n, 5), n)
end


IO.puts fizzBuzz.(10)
IO.puts fizzBuzz.(11)
IO.puts fizzBuzz.(12)
IO.puts fizzBuzz.(13)
IO.puts fizzBuzz.(14)
IO.puts fizzBuzz.(15)
IO.puts fizzBuzz.(16)

