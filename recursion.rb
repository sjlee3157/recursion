
def recursive_linear_search(find_me, index, list)
# Your Code here
  if index >= list.length # Base case
    return -1
  else
    if list[index] == find_me
      return index
    else
      index += 1
      return recursive_linear_search(find_me, index, list)
    end
  end

end

def linear_search(find_me, list)
  return recursive_linear_search(find_me, 0, list)
end

def recursive_binary_search(find_me, start, last, list)
  # Base Case
  if start > last
    return -1
  else
    guess = (start+last)/2
    if list[guess] == find_me
      return guess
    elsif list[guess] < find_me
      start = guess+1
      last = last
      return recursive_binary_search(find_me, start, last, list)
    else
      last = guess-1
      start = start
      return recursive_binary_search(find_me, start, last, list)
    end
  end
end

def binary_search(find_me, list)
  return recursive_binary_search(find_me, 0, list.length-1, list)
end
