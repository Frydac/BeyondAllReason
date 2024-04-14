local nr_t1_converters = 20
local nr_t2_converters = 4

-- Docs:
-- https://springrts.com/wiki/Gamedev:UnitDefs#unitRestricted



local t1_converters = {
    "armmakr", -- "Energy Converter",
    "corfmkr", -- "Naval Energy Converter",
    "cormakr", -- "Energy Converter",
    "armfmkr", -- "Naval Energy Converter",
}

local t2_converters = {
    "coruwmmm", -- "Naval Advanced Energy Converter",
    "armuwmmm", -- "Naval Advanced Energy Converter",
    "armmmkr", -- "Advanced Energy Converter",
    "cormmkr", -- "Advanced Energy Converter",
}

-- makes lookup more efficient/convenient
local function array_to_lookup_table(array)
    local lookup_table = {}
    for _, value in ipairs(array) do
        lookup_table[value] = true
    end
    return lookup_table
end

-- convert arrays to lookup tables
t1_converters = array_to_lookup_table(t1_converters)
t2_converters = array_to_lookup_table(t2_converters)

for name, ud in pairs(UnitDefs) do
    if t1_converters[name] then
        ud.unitRestricted = nr_t1_converters
    end
    if t2_converters[name] then
        ud.unitRestricted = nr_t2_converters
    end
end
