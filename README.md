# fn_GetLunar SQL Function

## Overview

The `[fn_GetLunar]` function calculates the Lunar date based on a given Gregorian date. It leverages pre-stored data to accurately convert dates from the Solar calendar (Gregorian) to the Lunar calendar.

## Table of Contents

- [Function Parameters](#function-parameters)
- [Implementation Details](#implementation-details)
- [How It Works](#how-it-works)
- [Dependencies](#dependencies)
- [Examples](#examples)
- [Limitations](#limitations)

## Function Parameters

The function accepts one parameter:
- `@solarDay` (`DATETIME`): A Gregorian date to be converted to the Lunar date.

## Implementation Details

1. **Initial Setup**: The function first removes any time component from `@solarDay`.
2. **Lunar Year Calculation**: 
   - It iterates through each lunar year from 1900 to 2050 to identify the correct year for the input date.
3. **Lunar Month and Day Calculation**: 
   - Once the year is identified, the function calculates the correct month and day within that lunar year.
4. **Return Value**: A `DATETIME` in the Lunar calendar corresponding to the provided Gregorian date.

## How It Works

The function follows these steps:
1. Calculates `@offset` by comparing `@solarDay` with the base date `1900-01-30`.
2. Uses `SolarData` table values to identify the total days in each lunar year.
3. Once the correct lunar year is identified, it calculates the lunar month and day.
4. Constructs a `DATETIME` value (`@OUTPUTDATE`) from the calculated lunar year, month, and day and returns it.

## Dependencies

The function relies on a table called `SolarData`, wh
