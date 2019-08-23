# Your Code Here
def map(arr)
  result = []
  arr.length.times {|i|
    result.push(yield(arr[i]))
  }
  return result
end

def reduce(arr, start = 0)
  acc = arr.shifta
  arr.length.times {|i|
    acc = yield(acc, arr[i+1])
  }
  yield(acc, start)
end
  