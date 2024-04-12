local function ReconstructTable(Table)
    if type(Table) == "table" then
        local IndexCount = #Table
        print("Indexes: " .. IndexCount) -- Number of indexes in said table
        print("Reconstructed table:\n")
        print("SomeTable = {") -- There's no way to get the table name if it's a local, after compilation the table name is lost.
        for i = 1,IndexCount do
            local TableIndexIteration = Table[i]
            if type(TableIndexIteration) == "string" then
                if i == IndexCount then
                    print("\"" .. TableIndexIteration .. "\"") -- " then iteration then "
                else
                    print("\"" .. TableIndexIteration .. "\"" .. ",") -- " then iteration then "
                end
            elseif type(TableIndexIteration) == "number" and TableIndexIteration == math.huge then
                if i == IndexCount then
                    print("math.huge") -- gotta do it this way or output is inf
                else
                    print("math.huge" .. ",") -- gotta do it this way or output is inf
                end
            elseif type(TableIndexIteration) == "number" then
                if i == IndexCount then
                    print(TableIndexIteration) -- gotta do it this way or output is inf
                else
                    print(TableIndexIteration .. ",") -- gotta do it this way or output is inf
                end
            elseif type(TableIndexIteration) == "boolean" then
                if i == IndexCount then
                    print(tostring(TableIndexIteration))
                else
                    print(tostring(TableIndexIteration) .. ",")
                end
            else
                print("Unable to obtain the type of this iteration")
            end
        end
        print("}")
    else
        print("The given argument is not a table")
    end
end
