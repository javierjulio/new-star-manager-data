# New Star Manager Data

This is a collection of custom name lists for the New Star Manager game on PC. Due to UI constraints in-game, it is best that a name is limited to 14 characters so any names exceeding that length are not included in the compiled lists.

## Development

Run `ruby names.rb` to re-generate all name lists in the `dist` directory.

## Add custom name list to New Star Manager

The game uses country specific name lists but some countries don't have one. For those without a dedicated list, the game seems to just use English based names.

Its simple to add a name list for a country that doesn't have one. Let's use Denmark as an example.

- Clone the repo or download a ZIP
- Copy these `dist` files:
  - `DenmarkFNames.txt`
  - `DenmarkLNames.txt`
- From the game install, open the `data/MyData/Names/ByCountry` directory and paste the files
- Find the country id in the `AvailableNations` file, which is `55` for Denmark
- In the `MaleCountryNames.txt` add a new line with:
    ```
    55    Denmark
    ```
- Start a game in Denmark and player names will be generated from this new list

The country codes for the other lists in the `dist` directory.

```
Code  Country
55    Denmark
70    Finland
133   Netherlands
```

## Data Sources

These are the sources used to generate the custom name lists:
* Denmark: https://github.com/DanielRanLehmann/danish-names
* Finland: https://github.com/shallowse/namesfi/tree/master/namesfi
* Netherlands: https://github.com/mbeijen/Data-RandomPerson
