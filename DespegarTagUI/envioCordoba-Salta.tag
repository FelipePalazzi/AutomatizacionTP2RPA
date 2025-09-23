
py begin
import requests
import json
import os # This is a built-in Python library for interacting with the operating system

# Define la URL del webhook de Discord
webhook_url = "https://discord.com/api/webhooks/1420131501483491501/z-Hdgn5SIQ-4id5jkWvKb98r2-RxKyiOobjE0X7uc441p3MkwR4PPk13mJN2Gyu6-DPh"

# Define las rutas de los archivos de imagen
file_path = "C:\\Users\\Emma\\AutomatizacionTP2RPA\\DespegarTagUI\\out\\Cordoba-Salta\\TablaPrecios.png"
path_vuelo1 = "C:\\Users\\Emma\\AutomatizacionTP2RPA\\DespegarTagUI\\out\\Cordoba-Salta\\Vuelo1.png"
path_vuelo2 = "C:\\Users\\Emma\\AutomatizacionTP2RPA\\DespegarTagUI\\out\\Cordoba-Salta\\Vuelo2.png"
path_vuelo3 = "C:\\Users\\Emma\\AutomatizacionTP2RPA\\DespegarTagUI\\out\\Cordoba-Salta\\Vuelo3.png"

# Define el contenido JSON para el mensaje
payload_data = {
    "content": "Tabla de precios de vuelos Cordoba - Salta"
}

# Prepara el diccionario de archivos
# La clave (e.g., "file1") no es importante, pero debe ser única para cada archivo
files = {
    "file1": (os.path.basename(file_path), open(file_path, "rb"), "image/png"),
    "file2": (os.path.basename(path_vuelo1), open(path_vuelo1, "rb"), "image/png"),
    "file3": (os.path.basename(path_vuelo2), open(path_vuelo2, "rb"), "image/png"),
    "file4": (os.path.basename(path_vuelo3), open(path_vuelo3, "rb"), "image/png")
}

# Prepara el payload JSON
data = {
    "payload_json": (None, json.dumps(payload_data), "application/json")
}

try:
    # Envía la solicitud POST al webhook
    response = requests.post(webhook_url, data=data, files=files)

    # Revisa el estado de la respuesta
    if response.status_code == 204:
        print("Archivos subidos exitosamente a Discord.")
    else:
        print(f"Error al subir los archivos. Código de estado: {response.status_code}")
        print(response.text)

finally:
    # Es crucial cerrar todos los archivos abiertos para liberar los recursos
    for file_tuple in files.values():
        file_object = file_tuple[1]
        file_object.close()

py finish