exercise_functions2 = fn
{0, 0, _c} -> IO.puts "FizzBuzz"
{0,_b,_c} -> IO.puts "Fizz"
{_a,0,_c} -> IO.puts "Buzz"
{_a,_b,c} -> IO.puts c
end
exercise_functions2.({0,0,3})
exercise_functions2.({0,2,3})
exercise_functions2.({1,0,3})
exercise_functions2.({1,2,3})

exercise_functions3 = fn
{n} -> exercise_functions2.({rem(n,3),rem(n,5), n})
end
exercise_functions3.({10})
exercise_functions3.({11})
exercise_functions3.({12})
exercise_functions3.({13})
exercise_functions3.({14})
exercise_functions3.({15})
exercise_functions3.({16})
exercise_functions3.({17})