local units_to_remove = {
    "armbanth", -- "Titan",
    "armthor", -- "Thor",
    "corjugg", -- "Behemoth",
    "corkorg", -- "Juggernaut",
    "corcrw", -- "Dragon",
    "corcrwh", -- "Dragon", not sure what the difference is
	"legfort", -- "Tyrannus" (legion dragon like air)
}

-- makes lookup more efficient/convenient
local function array_to_lookup_table(array)
    local lookup_table = {}
    for _, value in ipairs(array) do
        lookup_table[value] = true
    end
    return lookup_table
end

units_to_remove = array_to_lookup_table(units_to_remove)

for name, ud in pairs(UnitDefs) do
    if type(ud.buildoptions) == "table" then
        for i = #ud.buildoptions, 1, -1 do
            if units_to_remove[ud.buildoptions[i]] then
                table.remove(ud.buildoptions, i)
            end
        end
    end
end
