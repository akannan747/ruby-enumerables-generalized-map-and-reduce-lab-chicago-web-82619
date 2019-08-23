# Your Code Here
def map(arr)
  result = []
  arr.length.times {|i|
    result.push(yield(arr[i]))
  }
  return result
end

def reduce(arr, *start)
  acc = 0
  arr.length.times {|i|
    acc = yield(acc, arr[i])
  }
  return acc
end
  