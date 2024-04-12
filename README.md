# Lua-Table-Reconstructor
A simple function that can be used to reconstruct a given table.
# Usage
```lua
testtable = {
    "About that beer i owed ya!",
    "The Missile Knows Where It Is.",
    "To be, or not to be, that is the question.",
    4,
    math.huge
}

ReconstructTable(testtable)
```

# Output
```
Indexes: 5
Reconstructed table:

SomeTable = {
"About that beer i owed ya!",
"The Missile Knows Where It Is.",
"To be, or not to be, that is the question.",
4,
math.huge
}
```
