-- Generate all permutations of 1 to 8
function permute (a, i, n)
  if i > n then
    -- Check if the permutation is a valid solution
    if isvalid(a) then
      -- Print the solution
      printsolution(a)
    end
  else
    for j = i, n do
      -- Swap elements i and j
      a[i], a[j] = a[j], a[i]
      permute(a, i+1, n)
      -- Restore the original order
      a[i], a[j] = a[j], a[i]
    end
  end
end

-- Check if the permutation is a valid solution
function isvalid (a)
  for i = 1, #a do
    for j = i+1, #a do
      -- Check if queens are attacking each other
      if a[i] == a[j] or
         a[i] - i == a[j] - j or
         a[i] + i == a[j] + j then
        return false
      end
    end
  end
  return true
end

-- Print a board
function printsolution (a)
  for i = 1 , #a do    -- for each row
    for j = 1, #a do   -- and for each column
      -- write "X" or "-" plus a space
      io.write(a[i] == j and "X" or "-", " ")
    end
    io.write("\n")
  end
  io.write("\n")
  
  -- Exit the program afther printing the solution only 1 answer
  os.exit()
end

-- Run the program
permute({1, 2, 3, 4, 5, 6, 7, 8}, 1, 8)
