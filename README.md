# New Star Manager

This is a collection of custom name lists for the New Star Manager game on PC. Due to UI constraints in-game, it is best that a name is limited to 14 characters so any names exceeding that length are not included in the compiled lists.

## How to add name lists

The game uses country specific name lists but some available countries in-game don't have one. For those without a dedicated list, the game seems to just use English based names.

Its actually quite simple to add a name list for a country that doesn't have one. Let's use Denmark as an example.

- Open the `Names/ByCountry` directory for your game install
- Add these files from the `dist` directory:
  - `DenmarkFNames.txt`
  - `DenmarkLNames.txt`
- Find the country id in the `AvailableNations` file, which is `55` for Denmark
- In the `MaleCountryNames.text` add a new line with:
    ```
    55    Denmark
    ```
* Start a game in Denmark and player names will be generated from this new list

## Data Sources

These are the sources used to generate the custom name lists:
* Denmark: https://github.com/DanielRanLehmann/danish-names
* Finland: https://github.com/shallowse/namesfi/tree/master/namesfi
* Netherlands: https://github.com/mbeijen/Data-RandomPerson

## Development

Run `ruby names.rb` to re-generate all name lists in the `dist` directory.
