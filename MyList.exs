defmodule MyList do
    #mapsum
    def mapsum([head|tail],func) do
        mapsum([head|tail],0,func)
    end
    def mapsum([],value, _) do
        value
    end
    def mapsum([head|tail], value, func) do
        mapsum(tail, value + func.(head),func)
    end
    
    #max
    def max([head|tail]) do
       _max([head|tail], 0)
    end
    def _max([],value) do
       value
    end
    def _max([head|tail], value) when head > value do
        _max(tail, head)
    end
    def _max([head|tail], value) when head <= value do
        _max(tail, value)
    end
    
    #caesar
    def caesar([], n) do
        []
    end
    def caesar([head|tail], n) when head+n <= ?z do
         [ head+n | caesar(tail, n) ]
    end
    def caesar([head|tail],n) do
        [ head+n-(?a-?z)|caesar(tail,n)]
    end
    
    #span
    def span(from, to) when from > to, do: []
    
    def span(from, to) when from <= to do
        [from | span((from + 1), to)]
    end
   
end