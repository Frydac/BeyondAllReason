Tweak defs to 

 * disable all air units
 * keep t1/t2 air constructors 
 * keep t1 transports
 * includes legion

Having no air cons is annoying for late game eco, and transports can be used to get to metal spots/geo's on hard to reach places.

How to use:   
https://docs.google.com/document/d/1qOaAvKb_eoY041f_XXibOA_VLQGC5mhHnltMIZEuu84/edit

```
bG9jYWwgYWlyX2NyYWZ0X3BsYW50cyA9IHsKICAgICJhcm1hYXAiLCAtLSAiQWR2YW5jZWQgQWlyY3JhZnQgUGxhbnQiLAogICAgImFybWFwIiwgLS0gIkFpcmNyYWZ0IFBsYW50IiwKICAgICJjb3JhYXAiLCAtLSAiQWR2YW5jZWQgQWlyY3JhZnQgUGxhbnQiLAogICAgImNvcmFwIiwgLS0gIkFpcmNyYWZ0IFBsYW50IiwKICAgICJsZWdhYXAiLCAtLSAiTGVnaW9uIEFkdmFuY2VkIEFpcmNyYWZ0IFBsYW50IiwKICAgICJsZWdhcCIsIC0tICJMZWdpb24gRHJvbmUgUGxhbnQiLAp9Cgpsb2NhbCBhaXJfdW5pdHNfdG9fa2VlcCA9IHsKICAgICJhcm1hY2EiLCAtLSAiQWR2YW5jZWQgQ29uc3RydWN0aW9uIEFpcmNyYWZ0IiwKICAgICJhcm1jYSIsIC0tICJDb25zdHJ1Y3Rpb24gQWlyY3JhZnQiLAogICAgImNvcmFjYSIsIC0tICJBZHZhbmNlZCBDb25zdHJ1Y3Rpb24gQWlyY3JhZnQiLAogICAgImNvcmNhIiwgLS0gIkNvbnN0cnVjdGlvbiBBaXJjcmFmdCIsCiAgICAibGVnYWNhIiwgLS0gIkFkdmFuY2VkIENvbnN0cnVjdGlvbiBBaXJjcmFmdCIsCiAgICAibGVnY2EiLCAtLSAiTGVnaW9uIENvbnN0cnVjdGlvbiBBaXJjcmFmdCIsCiAgICAiYXJtYXRsYXMiLCAtLSAiQWlyIFRyYW5zcG9ydCIsCiAgICAiY29ydmFsayIsIC0tICJBaXIgVHJhbnNwb3J0IiwgKGxlZ2lvbiBhbHNvIHVzZXMgdGhpcyBmb3IgdHJhbnNwb3J0KQp9CgotLSBtYWtlcyBsb29rdXAgbW9yZSBlZmZpY2llbnQvY29udmVuaWVudApsb2NhbCBmdW5jdGlvbiBhcnJheV90b19sb29rdXBfdGFibGUoYXJ5KQogICAgbG9jYWwgbmV3X2FyeSA9IHt9CiAgICBmb3IgXywgdiBpbiBpcGFpcnMoYXJ5KSBkbwogICAgICAgIG5ld19hcnlbdl0gPSB0cnVlCiAgICBlbmQKICAgIHJldHVybiBuZXdfYXJ5CmVuZAoKYWlyX2NyYWZ0X3BsYW50cyA9IGFycmF5X3RvX2xvb2t1cF90YWJsZShhaXJfY3JhZnRfcGxhbnRzKQphaXJfdW5pdHNfdG9fa2VlcCA9IGFycmF5X3RvX2xvb2t1cF90YWJsZShhaXJfdW5pdHNfdG9fa2VlcCkKCmZvciBuYW1lLCB1ZCBpbiBwYWlycyhVbml0RGVmcykgZG8KICAgIGlmIGFpcl9jcmFmdF9wbGFudHNbbmFtZV0gdGhlbgogICAgICAgIGlmIHR5cGUodWQuYnVpbGRvcHRpb25zKSA9PSAidGFibGUiIHRoZW4gLS0gdGhpcyBzaG91bGQgYWx3YXlzIGJlIHRydWUgZm9yIHRoZXNlIGFpcl9jcmFmdF9wbGFudHMKICAgICAgICAgICAgLS0gd2UgYWRqdXN0IHRoZSB0YWJsZSB3aGlsZSBsb29waW5nIG92ZXIgaXQsIHNvIGRvIGl0IGluIHJldmVyc2Ugb3JkZXIgdG8ga2VlcCB0aGUgaW5kZXggd2l0aGluIGJvdW5kcwogICAgICAgICAgICBmb3IgaSA9ICN1ZC5idWlsZG9wdGlvbnMsIDEsIC0xIGRvCiAgICAgICAgICAgICAgICBpZiBub3QgYWlyX3VuaXRzX3RvX2tlZXBbdWQuYnVpbGRvcHRpb25zW2ldXSB0aGVuCiAgICAgICAgICAgICAgICAgICAgdGFibGUucmVtb3ZlKHVkLmJ1aWxkb3B0aW9ucywgaSkKICAgICAgICAgICAgICAgIGVuZAogICAgICAgICAgICBlbmQKICAgICAgICBlbmQKICAgIGVuZAplbmQ
```

The source:

```lua
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
local function array_to_lookup_table(ary)
    local new_ary = {}
    for _, v in ipairs(ary) do
        new_ary[v] = true
    end
    return new_ary
end

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
```
