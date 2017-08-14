require_relative './func'

def testProductArray()
test_array = [1,2,3,4]
test_expected_result = [24,12,8,6]
  if productArray(test_array) === test_expected_result
    return "1. Product Array Test Passed"
  else
    return "*** You meet a error! \n   Expected result is: -> #{test_expected_result} \n  Your result is:     -> #{productArray(test_array.count)}"
  end
end

def testNumberFirst()
test_array = [0,1,0,3,12]
test_expected_result = [1,3,12,0,0]
  if numberFirst(test_array) === test_expected_result
    test_array = [0,1,0,3,12]
    print "2. Number First Test Passed"
  else
    test_array = [0,1,0,3,12]
    print "*** You meet a error! \n   Expected result is: -> #{test_expected_result} \n   Your result is:     -> #{numberFirst(test_array)}"
  end
end

def testSqrt()
  test_input = rand(1..100)
  test_expected_result = test_input ** 0.5

  if sqrt(test_input).round(2) == test_expected_result.round(2)
    print "4. 1/2 Sqrt()  Test Passed "
  else
    print "4. *** You meet a error! \n   Expected result is: -> #{test_expected_result} \n   Your result is:     -> #{sqrt(test_input)}"
  end
end

def testIntSqrt()
  test_input = 9
  test_expected_result = 3

  if sqrt(test_input).round(0) == test_expected_result
    print "4. 2/2 intSqrt()  Test Passed "
  else
    print "4. *** You meet a error! \n   Expected result is: -> #{test_expected_result} \n   Your result is:     -> #{sqrt(test_input)}"
  end
end

def testGameOfLife()
  test_input = [[1,0,0,1],
            [0,1,0,0],
            [0,0,0,1],
            [1,1,1,0]]
  test_expected_result = [[0, 0, 0, 0], [0, 0, 1, 0], [1, 0, 0, 0], [0, 1, 1, 0]]
  if testOfLife(test_input) == test_expected_result
    print "3. Game of Life  Test Passed "
  else
    print "3. *** You meet a error! \n   Expected result is: -> #{test_expected_result} \n   Your result is:     -> #{gameOfLife(matrix)}"
  end

end

def testPow()
  r = rand(1..100)
  n = rand()
  test_expected_result = r ** n
  if mypow(r,n).round(2) == test_expected_result.round(2)
    print "5. Pow() Test Passed "
  else
    print "5. *** You meet a error! \n   Expected result is: -> #{test_expected_result} \n   Your result is:     -> #{mypow(r,n)}"
  end
end

# Test one
puts testProductArray()

# Test two
puts testNumberFirst()

# Test three
puts testGameOfLife()


# Test four
puts testSqrt()
puts testIntSqrt()

# Test five
puts testPow()
