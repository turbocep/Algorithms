#Takes n and returns an array containing all the fibonacci numbers up to n.
#Example: n = 8 should return [0, 1, 1, 2, 3, 5, 8, 13]

#Non-recursive version:
def fibs(n)
  fibo = [0, 1]
  if n == 0
    []
  elsif n == 1
    [0]
  elsif n == 2
    [0, 1]
  else
    fibo = [0, 1]
    (n - 2).times do 
      fibo.push(fibo[-1] + fibo[-2])
    end
    fibo
  end
end

p fibs(20)
