local testing = {}

testing.results = {}

function testing.assert_equal(expected, actual)
    local caller = debug.getinfo(2).name
    local f = string.format("Expected %s but was %s", expected, actual)
    if expected == actual then
        table.insert(testing.results, ".")
    else
        table.insert(testing.results, "f")
        print(caller, f)
    end
end

return testing
