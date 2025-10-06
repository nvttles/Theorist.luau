--[[
    Theorist v2.0
    A math library for Roblox's Luau scripting language

    Author: Leo
    License: MIT

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
--]]

-- Types
type stringOrNum = string | number
type TType = {
    Name: string?,
    Version: stringOrNum?,
    License: string?,
}

-- Private functions
local function ReturnInfo() :: TType
    return {
        Name = "Theorist",
        Version = 2.0,
        License = "MIT"
    } :: TType
end

-- Library table
local Theorist = {}

--[=[
    A function for printing the information of the package.

    @returns void
]=]
function Theorist.PackageInformation() :: ()
    local info: TType = ReturnInfo()
    for k, v in pairs(info) do
        print(k, v)
    end
end

--[=[
    A function for adding two numbers

    @param a number The first number
    @param b number The second number
    @returns number
]=]
function Theorist.Add(a: number, b: number) :: number
    return a + b
end

--[=[
    A function for subtracting two numbers

    @param a number The first number
    @param b number The second number
    @returns number
]=]
function Theorist.Subtract(a: number, b: number) :: number
    return a - b
end

--[=[
    A function for multiplying two numbers

    @param a number The first number
    @param b number The second number
    @returns number
]=]
function Theorist.Multiply(a: number, b: number) :: number
    return a * b
end

--[=[
    A function for dividing two numbers

    @param a number The numerator
    @param b number The denominator
    @returns number
]=]
function Theorist.Divide(a: number, b: number) :: number
    return a / b
end

return Theorist

