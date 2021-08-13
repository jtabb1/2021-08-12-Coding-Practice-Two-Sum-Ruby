def two_sum(array, target)
  memo = {}

  array.each_with_index do |int,ix|
    solved = target - int

    if memo.key?(solved)
      return [ix, memo[solved]]
    end

    memo[int] = ix
  end
end

ary01 = [0, 4, 7, 6, 2, 1, 3]
tgt01a = 10

puts two_sum(ary01,tgt01a).inspect
