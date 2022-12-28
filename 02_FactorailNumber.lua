function fact(n)
  if n < 0 then
    error("Factorial is deined only for positive integers")
  elseif n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

print("Enter a number : ")
a = io.read("*n")
print(fact(a))
