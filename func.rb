###########################################
# 1 Product array functions
## main function
## solution one
def productArray(array)
  a = array
  asc_array = []
  desc_array = []
  result = []
  n = a.count

  asc_result = 1
  a.each_with_index do |a, i|
    asc_array[i] = asc_result
    asc_result *= a
  end

  desc_result = 1
  a.reverse.each_with_index do |a, i|
    desc_i = n - i - 1
    desc_array[desc_i] = desc_result
    desc_result *= a
  end

  a.each_with_index do |a,i|
    result[i] = asc_array[i] * desc_array[i]
  end
  return result
end

## solution two
def mydiv(a,b)
    return (Math::E**(Math.log(a)-Math.log(b))+0.5).to_i
end

def productArrayMyDiv(array)
  a = array
  results = []
  productArray = a.inject(:*)
  a.each_with_index do |a,i|
    results[i] =  mydiv(productArray,a)
  end
  return results
end

#######################################
# 2 Number first functions
## main function
def numberFirst(nums)
  result = nums
  count = result.count(0)
  zero_array = Array.new(count, 0)
  result.delete(0)
  result = result + zero_array
  return result
end

#####################################
# 3 Game of Life functions
# generate next life, return matrix
def generateLife(m)
  life  = []
  x = m.count
  y = m[0].count
  m.each_with_index do |row, r|
    life[r] = []
    row.each_with_index do |cell, c|
      case neighbors(r,c,m,x,y)
      when 0,1,4,5,6,7,8
        life[r][c] = 0
      when 2
        life[r][c] = m[r][c]
      when 3
        life[r][c] = 1
      end
    end
  end
 return life
end

# generate a randam life matrix and return matrix
def initLife(m,n)
  result = []
  x = m - 1
  y = n - 1
  for m in 0..x do
    row =[]
    for n in 0..y do
      row.push rand(0..1)
    end
    result.push row
  end
  return result
end

# return how many live neighborhood
def neighbors(row,col,current,maxr,maxc)
  count = 0
  m = maxr - 1
  n = maxc - 1
  for x in row-1..row+1 do

    for y in col-1..col+1 do
      if ( x < 0 || y < 0 || x > m || y > n)
      elsif (current[x][y] == 1)
        count += 1
      end
    end
  end
  if current[row][col] == 1
    count -= 1
  end
  return count
end

# print readable matrix
def printLife(m)
  display = m.dup
  display.each_with_index do |row, r|
    puts "#{row}"
  end
end

# main function to show Game of Life
def gameOfLife(matrix)
  puts "*** Current Life Cell Status *** "
  printLife(matrix)
  next_life = generateLife(matrix)
  puts " ------- Next Life -------"
  printLife(next_life)
  return next_life
end

# for testing without print
def testOfLife(matrix)
  next_life = generateLife(matrix)
  return next_life
end

######################################
# 4 Root Sqare funtions
# generic sqrt
def sqrt(n)
  y = 1.0
  while ((1.0/2.0*(y+n/y)) - y).abs >= 0.0000001 do
    y = 1.0/2.0 * (y+n/y)
  end
  return y
end

# int sqrt(int n) option one - if build-in power() is not permitted.
def mysqrt(p)
  for i in 1..p/2 do
    if i*i == p
      return i
    elsif i*i > p
      return "error: sqrt is not a integer!"
    end
  end
end

# iint sqrt(int n) option two - if build-in power() is permitted.
def intSqrt(n)
  result = (n ** (1.0/2)).to_i

  if result ** 2 == n
    return result
  else
    return "error: result is not a integer!"
  end
  #code
end

#######################################
# 5 Power functions
def logn(x,r)
  Math.log(r) / Math.log(x)
end

def mypow(x,n)
  e = Math::E
  nlnx = n * logn(2,x) / logn(2,Math::E)
  return Math.exp(nlnx)
end
