// tagui despegarbarato.tag in/search.csv
searchInputOriginXPath = '/html/body/app-root/div/div[1]/meta-component/div/div/sbox/div/div/searchbox-v2/div/div/div/div/div/div/div/div[2]/div[2]/div[1]/div/div[1]/div/div/input'
selectInputOriginXPath = '//li[contains(@class,"item") and contains(@class,"-active")]'
searchInputDestinyXPath = '//input[@aria-label="Ingresá hacia dónde viajas"]'
selectInputDestinyXPath = '//li[contains(@class,"item") and contains(@class,"-active")]'
searchBtnXPath = '//button[contains(@class,"sbox5-button")]'
firstElementResult = '//*[@id="FlightsOffersModule-1"]'

echo Iteration: `iteration`
if iteration equals to 1
    // Create 'out' folder if it does not exist
    run cmd /c "mkdir out"
    
    // Open Site
    https://www.despegar.com.ar/

    // Maximize Chrome window
    //keyboard [f11]

echo Searching for: `origin`

// Clear and type the origin location
click `searchInputOriginXPath`
type `searchInputOriginXPath` as [clear]`origin`[enter]
keyboard [space]



// Clear and type the destiny location
//click `searchInputDestinyXPath`
//type `searchInputDestinyXPath` as [clear]`destiny`[enter]
//keyboard [space]



// Click the search button
click `searchBtnXPath`

// Wait for search results to load
wait 3


