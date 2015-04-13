local list = {}

function list.sum(l)
    -- Sum will only work for lists and not dicts
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

function list.join(l, separator)
    local out = ""
    local s = separator or ""
    for i,v in ipairs(l) do
        out = out .. v
        if i < #l then
            out = out .. s
        end
    end
    return out
end

return list
