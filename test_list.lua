local l = require('list')
local t = require('testing')

local a = {1, 2, 3, 4}
local test_result = {}

function test_invalid_sum()
    t.assert_equal(9, l.sum(a))
end

function test_valid_sum()
    t.assert_equal(10, l.sum(a))
end

test_invalid_sum()
test_valid_sum()

l.printline(t.results)
