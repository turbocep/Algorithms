#Takes n and returns an array containing all the fibonacci numbers up to n.
#Example: n = 8 should return [0, 1, 1, 2, 3, 5, 8, 13]

#Non-recursive version:
def fibs(n)
  fibo = [0, 1]
  if n == 0
    []
  elsif n <= 2
    fibo[0...n]
  else
    (n - 2).times do 
      fibo.push(fibo[-1] + fibo[-2])
    end
    fibo
  end
end

def fibo(num)
  return num if num <= 1
  fibo(num - 1) + fibo(num - 2)
end

def fibs_rec(n)
  final = []
  n.times do | num |
    final.push(fibo(num))
  end
  final
end

p fibs_rec(8)
