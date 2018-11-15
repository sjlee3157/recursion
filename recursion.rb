
def recursive_linear_search(find_me, index, list)
# Your Code here

end

def linear_search(find_me, list)
  return recursive_linear_search(find_me, 0, list)
end

def recursive_binary_search(find_me, start, last, list)
  return -1 if start > last

  mid = (start + last) / 2
  if list[mid] === find_me
    return mid
  elsif list[mid] > find_me
    last = mid - 1
  else
    start = mid + 1
  end
  
  return recursive_binary_search(find_me, start, last, list)
end

def binary_search(find_me, list)
  return recursive_binary_search(find_me, 0, list.length-1, list)
end
