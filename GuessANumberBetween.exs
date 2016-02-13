defmodule Chop do
    def guess(n,low..high) do
        z = div(low + high, 2)
        IO.puts "Is it #{z}"
        Chop.guess(n,z,low..high)
    end
    def guess(actualNumber,guessedNumber,low.._high) when actualNumber < guessedNumber do
      guess(actualNumber,low..guessedNumber)
    end
    def guess(actualNumber,guessedNumber,_low..high) when actualNumber > guessedNumber do
      guess(actualNumber,guessedNumber..high)
    end
   def guess(actualNumber,guessedNumber,_low.._high) when actualNumber == guessedNumber do
      IO.puts guessedNumber
    end
end 