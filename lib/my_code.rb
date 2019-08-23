# Your Code Here
def map(arr)
  result = []
  arr.length.times {|i|
    result.push(yield(arr[i]))
  }
  return result
end

def reduce(arr, start=0)
  acc = arr[0]
  (arr.length - 1).times {|i|
    acc = yield(acc, arr[i+1])
  }
  return !!acc
end
  