# ✈️ Automatización TP2 RPA - TurismoCity con TagUI

Este proyecto corresponde al **Trabajo Práctico de RPA**, donde implementamos un bot utilizando **TagUI** para automatizar la búsqueda de vuelos baratos en la página [Turismo City](https://www.turismocity.com.ar/) y enviar los resultados por **Discord**.

---

## 📌 Descripción del Proyecto

La automatización realizada permite:

1. Ingresar automáticamente al sitio web de Turismo City.
2. Completar los campos de **origen** y **destino** del vuelo.
3. Realizar la búsqueda de vuelos disponibles.
4. Capturar una captura de pantalla de los resultados.
5. Enviar esa captura a un canal de **Discord** mediante un webhook.

De esta manera, logramos integrar **automatización web + notificaciones en tiempo real**, simplificando el proceso de buscar vuelos económicos y recibirlos en nuestro servidor de Discord.

---

## 🛠️ Tecnologías Utilizadas

- [TagUI](https://tagui.readthedocs.io/en/latest/) → Framework de automatización RPA
- **Python**
- **Webhook de Discord** → Para recibir notificaciones y la imagen con los resultados.
- **Turismo City** → Plataforma web sobre la cual se ejecuta la automatización.

---

## 📂 Estructura del Proyecto
