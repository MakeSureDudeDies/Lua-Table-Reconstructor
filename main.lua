function GetTableLength(Table)
    local Count = 0
    for i, v in pairs(Table) do
        Count = Count + 1
    end
    return Count
end

local function ReconstructTableCore(Table, Seed, IsInsideMainTable)
    if type(Table) == "table" then
        local IndexCount = GetTableLength(Table)
        math.randomseed(Seed)
        print("SomeTable" .. math.random(1,100) .. " = {")
        for i,v in pairs(Table) do
            local TableIndexIteration = Table[i]
            if type(TableIndexIteration) == "string" then
                if i == IndexCount then
                    print("\"" .. TableIndexIteration .. "\"") -- " then iteration then "
                else
                    print("\"" .. TableIndexIteration .. "\"" .. ",") -- " then iteration then "
                end
            elseif type(TableIndexIteration) == "number" and TableIndexIteration == math.huge then
                if i == IndexCount then
                    print("math.huge") -- gotta do it this way or output is "inf"
                else
                    print("math.huge" .. ",") -- gotta do it this way or output is "inf"
                end
            elseif type(TableIndexIteration) == "number" and tostring(TableIndexIteration) == "-nan" or tostring(TableIndexIteration) == "nan" then -- Only way i could think of. 5.3 is -nan 5.4 is nan
                if i == IndexCount then
                    print("0/0")
                else
                    print("0/0" .. ",")
                end
            elseif type(TableIndexIteration) == "number" and tonumber(TableIndexIteration) == math.pi then
                if i == IndexCount then
                    print("math.pi")
                else
                    print("math.pi" .. ",")
                end
            elseif type(TableIndexIteration) == "number" then
                if i == IndexCount then
                    print(TableIndexIteration)
                else
                    print(TableIndexIteration .. ",") 
                end
            elseif type(TableIndexIteration) == "boolean" then
                if i == IndexCount then
                    print(tostring(TableIndexIteration))
                else
                    print(tostring(TableIndexIteration) .. ",")
                end
            elseif type(TableIndexIteration) == "table" then
                if i == IndexCount then
                    print("\"" .. tostring(TableIndexIteration) .. "\"")
                else -- always passes to this because cannot get the index of it. TODO: figure out a way and do a recursive call to ReconstructTableCore
                    print("\"" .. tostring(TableIndexIteration) .. "\"" .. ",")
                end
            elseif type(TableIndexIteration) == "userdata" then
                if i == IndexCount then
                    print("\"" .. tostring(TableIndexIteration) .. "\"")
                else
                    print("\"" .. tostring(TableIndexIteration) .. "\"" .. ",")
                end
            else
                print("Unable to obtain the type of this iteration")
            end
        end
        if IsInsideMainTable then
            print("},")
        else
            print("}")
        end
    else
        print("The given argument is not a table")
    end
end

function ReconstructTable(Table)
    local IndexCount = GetTableLength(Table)
    local TimeTable = os.date("*t", os.time())
    print("-- Reconstructed at: " .. TimeTable.day .. "." .. TimeTable.month .. "." .. TimeTable.year .. " " .. TimeTable.hour .. ":" .. TimeTable.min .. " - Unix Time")
    print("-- Indexes: " .. IndexCount) -- Number of indexes in said table
    print("-- Reconstructed table:\n")
    ReconstructTableCore(Table, os.time(), false) -- Seed based of off unix time.
end

testtable = {
    "About that beer i owed ya!",
    "The Missile Knows Where It Is.",
    "To be, or not to be, that is the question.",
    4,
    math.huge,
    true,
    false,
    0/0,
    math.pi
}

ReconstructTable(testtable)
