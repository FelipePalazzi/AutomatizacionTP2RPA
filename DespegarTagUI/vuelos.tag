// Create a timestamp for the screenshot filename
tablaPrecioMeses='//*[@id="priceBarChart"]'
//xpath de los 3 vuelos mas baratos
//xpath del vuelo mas barato
vuelo1='//*[@id="VuelosBaratos"]/div[2]/div[2]/div[5]/div/div[2]/div[2]/div/table/tbody/tr[1]'
//xpath del segundo vuelo mas barato
vuelo2='//*[@id="VuelosBaratos"]/div[2]/div[2]/div[5]/div/div[2]/div[2]/div/table/tbody/tr[2]'
//xpath del tercer vuelo mas barato
vuelo3='//*[@id="VuelosBaratos"]/div[2]/div[2]/div[5]/div/div[2]/div[2]/div/table/tbody/tr[3]'

js timestamp =  new Date()
  .toLocaleString("sv-SE", { timeZone: "America/Argentina/Buenos_Aires" })
  .replace(" ", "_")
  .replace(/:/g, "-");
//Toma captura de la tabla de precios segun los meses y de los 3 vuelos mas baratos
snap `tablaPrecioMeses` to out/`output folder`/TablaPrecios-`timestamp`.png
snap `vuelo1` to out/`output folder`/Vuelo1-`timestamp`.png
snap `vuelo2` to out/`output folder`/Vuelo2-`timestamp`.png
snap `vuelo3` to out/`output folder`/Vuelo3-`timestamp`.png


//Enviar capturas por Telegram
run curl -X POST "https://api.telegram.org/bot tokenbot/sendPhoto" -F chat_id=idchat -F photo=@out/`output folder`/TablaPrecios-`timestamp`.png