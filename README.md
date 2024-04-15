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
    0/0,
    math.pi,
    a = {1}
}

ReconstructTable(testtable)
```

# Output
```lua
-- Reconstructed at: 15.4.2024 18:27 - Unix Time
-- Indexes: 10
-- Reconstructed table:

SomeTable24 = {
"About that beer i owed ya!",
"The Missile Knows Where It Is.",
"To be, or not to be, that is the question.",
4,
math.huge,
true,
false,
0/0,
math.pi,
"table: 0x564e2abac1c0",
}
```
