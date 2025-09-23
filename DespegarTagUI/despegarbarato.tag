//Para ejecutar este script se debe ingresar en la terminal el comando
//tagui despegarbarato.tag in/search.csv
//xpath de los elementos a utilizar
//Xpath del boton origen

tagui envioCordoba-Salta.tag

buttonOrigin='/html/body/div[1]/div/div/div[1]/div[1]/div/div/div/div/div/div/form/div[2]/div/div[1]/div[1]/div[2]/div[1]'
//xpath del input de origen
searchInputOriginXPath = '//*[@id="home-tab-container"]/form/div[2]/div/div[1]/div[1]/div[2]/div[2]/div/input'
//xpath del primer resultado del dropdown de origenes
selectInputOptionOrigin = '/html/body/div[2]/div/div/div[1]/div[1]/div/div/div/div/div/div/form/div[2]/div/div[1]/div[1]/div[2]/div[3]/span/span/ul/li[1]/div[2]'
//xpath del input de destino
searchInputDestinyXPath = '//*[@id="home-tab-container"]/form/div[2]/div/div[1]/div[3]/div[2]/div[2]/div/input'
//xpath del primer resultado del dropdown de destinos
selectInputOptionDestiny = '//*[@id="autocomplete-open"]/span/span/ul/li[1]/div[2]'
//xpath del boton destino
buttonDestiny='//*[@id="home-tab-container"]/form/div[2]/div/div[1]/div[3]/div[2]/div[1]'
//xpath del boton buscar
searchBtnXPath ='//*[@id="home-tab-container"]/form/div[2]/div/div[4]/button'
//xpath del boton de solo ida
onlyWayButton='//*[@id="tt2"]'
//xpath del selector de fechas
selectDatesXPath = '//*[@id="home-tab-container"]/form/div[3]/div[2]/div'



echo Iteration: `iteration`
// Open Site

https://www.turismocity.com.ar/
wait 5
if iteration equals to 1
    // Crear la carpeta out si no existe
    //run cmd /c "mkdir out"
    //keyboard [f11]

echo Searching for: `origin`

//Clicker el boton de solo ida
click `onlyWayButton`
//Clickear el boton de solo ida
click `selectDatesXPath`


// Clicker el campo origen
click `buttonOrigin`
// Escribir el origen
type `searchInputOriginXPath` as [clear]`origin`
//esperar que cargue el dropdown de origenes
wait 3
//Seleccionar el primer resultado del dropdown
click `selectInputOptionOrigin`


// Clicker el campo destino
click `buttonDestiny`
// Escribir el destino
type `searchInputDestinyXPath` as [clear]`destiny`
//esperar que cargue el dropdown de destinos
wait 5
//seleccionar el primer resultado del dropdown
click `selectInputOptionDestiny`

// Click al boton buscar
click `searchBtnXPath`

// Esperar que cargue la pagina de resultados
wait 3
//Aqui se procesan los resultados
tagui vuelos.tag
//Aqui se envia la tabla de precios a discord

//if iteration equals to 1
//tagui envioCordoba-Salta.tag
//if iteration equals to 2    
// tagui envioEzeiza-Madrid.tag