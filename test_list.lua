local test_list = {}
local l = require("list")
local t = require("testing")

local test_result = {}

function test_list.test_short_list()
    local list = {1, 2, 3, 4}
    return t.assert_equal(10, l.sum(list))
end

function test_list.test_longer_list()
    local list = {}
    for i = 1, 1000 do
        table.insert(list, i)
    end
    return t.assert_equal(500500, l.sum(list))
end

function test_list.test_long_list()
    local list = {}
    for i = 1,100000 do
        table.insert(list, i)
    end
    return t.assert_equal(5000050000, l.sum(list))
end

t.run_tests(test_list)

return test_list
