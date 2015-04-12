local list = {}

function list.sum(l)
    local s = 0
    for _,v in ipairs(l) do
        s = s + v
    end
    return s
end

function list.print(l)
    for _, v in ipairs(l) do
        print(v)
    end
end

function list.printline(l)
    local out = ""
    for _,v in ipairs(l) do
        out = out .. v
    end
    print(out)
end

return list
