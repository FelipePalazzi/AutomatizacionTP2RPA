// tagui despegarbarato.tag in/search.csv

searchInputOriginXPath = '//*[@id="searchbox-v2"]/div/div/div/div/div/div/div[2]/div[1]/div[1]/div[1]/div[1]/div/div[1]/div'
selectInputOriginXPath = '//*[@id="ac-wrapper-container"]/div/div/div/ul/li'
searchInputDestinyXPath = '//*[@id="searchbox-v2"]/div/div/div/div/div/div/div[2]/div[1]/div[1]/div[1]/div[1]/div/div[2]/div'
selectInputDestinyXPath = '//*[@id="ac-wrapper-container"]/div/div/div/ul/li'
searchBtnXPath = '//*[@id="searchbox-v2"]/div/div/div/div/div/div/div[2]/div[2]/button'
firstElementResult = '//*[@id="FlightsOffersModule-1"]'

echo Iteration: `iteration`
if iteration equals to 1
    // Create 'out' folder if it does not exist
    run cmd /c "mkdir out"
    
    // Open Site
    https://www.despegar.com.ar/

    // Maximize Chrome window
    click in/maximizeBtn.png

echo Searching for: `origin`

// Clear and type the origin location
type `searchInputOriginXPath` as [clear]`origin`
// Click the first origin
click `selectInputOriginXPath`

// Clear and type the destiny location
type `searchInputDestinyXPath` as [clear]`destiny`
// Click the first destiny
click `selectInputDestinyXPath`

// Click the search button
click `searchBtnXPath`

// Wait for search results to load
wait 3

tagui vuelos.tag
