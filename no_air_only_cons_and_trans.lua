local air_craft_plants = {
    "armaap", -- "Advanced Aircraft Plant",
    "armap", -- "Aircraft Plant",
    "coraap", -- "Advanced Aircraft Plant",
    "corap", -- "Aircraft Plant",
    "legaap", -- "Legion Advanced Aircraft Plant",
    "legap", -- "Legion Drone Plant",
}

local air_units_to_keep = {
    "armaca", -- "Advanced Construction Aircraft",
    "armca", -- "Construction Aircraft",
    "coraca", -- "Advanced Construction Aircraft",
    "corca", -- "Construction Aircraft",
    "legaca", -- "Advanced Construction Aircraft",
    "legca", -- "Legion Construction Aircraft",
    "armatlas", -- "Air Transport",
    "corvalk", -- "Air Transport", (legion also uses this for transport)
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
air_craft_plants = array_to_lookup_table(air_craft_plants)
air_units_to_keep = array_to_lookup_table(air_units_to_keep)

for name, ud in pairs(UnitDefs) do
    if air_craft_plants[name] then
        if type(ud.buildoptions) == "table" then -- this should always be true for these air_craft_plants, but we check anyway
            -- we adjust the buildoptions table while looping over it, so do it in reverse order to keep the index within array bounds as we remove items
            for i = #ud.buildoptions, 1, -1 do
                if not air_units_to_keep[ud.buildoptions[i]] then
                    table.remove(ud.buildoptions, i)
                end
            end
        end
    end
end
