local test_list = {}
local l = require("list")
local t = require("testing")

local test_result = {}

function test_list.test_sum_short_list()
    local list = {1, 2, 3, 4}
    return t.assert_equal(10, l.sum(list))
end

function test_list.test_sum_longer_list()
    local list = {}
    for i = 1, 1000 do
        table.insert(list, i)
    end
    return t.assert_equal(500500, l.sum(list))
end

function test_list.test_sum_long_list()
    local list = {}
    for i = 1,100000 do
        table.insert(list, i)
    end
    return t.assert_equal(5000050000, l.sum(list))
end

function test_list.test_sum_floats()
    local list = {1.1, 2.2, 3.03, 4.004}
    return t.assert_equal(10.334, l.sum(list))
end

function test_list.test_sum_dict()
    local list = {x=1, y=2, z=4}
    return t.assert_equal(0, l.sum(list))
end

function test_list.test_sum_strings_should_fail()
    local list = {'a', 'b', 'c'}
    return t.assert_error(l.sum, list)
end

function test_list.test_join()
    local list = {'a', 'b', 'c'}
    return t.assert_equal('abc', l.join(list))
end

function test_list.test_join_with_char()
    local list = {1, 2, 3}
    return t.assert_equal('1,2,3', l.join(list, ','))
end

function test_list.test_reduce_addition()
    local list = {1, 2, 3}
    return t.assert_equal(6, l.reduce(list, function(x,y) return x + y end))
end

t.run_tests(test_list)

return test_list
