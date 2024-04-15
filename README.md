# Lua-Table-Reconstructor
A simple function that can be used to reconstruct a given table.
# Usage
```lua
testtable = {
    "About that beer i owed ya!",
    "The Missile Knows Where It Is.",
    "To be, or not to be, that is the question.",
    4,
    math.huge,
    true,
    false,
    0/0
}

ReconstructTable(testtable)
```

# Output
```lua
-- Reconstructed at: 15.4.2024 13:4 - Unix Time
-- Indexes: 8
-- Reconstructed table:

SomeTable55 = {
"About that beer i owed ya!",
"The Missile Knows Where It Is.",
"To be, or not to be, that is the question.",
4,
math.huge,
true,
false,
0/0
}
```
