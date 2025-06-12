# 🔒 Script para Gestión de Puertos en el Firewall de Windows

Este script en **Batch (.bat)** permite **abrir o cerrar cualquier puerto específico en el firewall de Windows**, especificando el número de puerto y el protocolo (TCP o UDP) de forma manual.

---

## 🧰 ¿Qué hace este script?

Permite realizar una gestión básica del firewall desde la línea de comandos:

1. **Abrir un puerto:** define el número y el protocolo para abrir.
2. **Cerrar un puerto:** define el número y el protocolo para cerrar.
3. **Salir:** Sale del menú.

Utiliza `netsh advfirewall`, recomendado para versiones modernas de Windows.

---

## ⚙️ ¿Cómo usarlo?

1. **Haz clic derecho** en el archivo `.bat` y selecciona "**Ejecutar como administrador**".
2. Verás el siguiente menú:
```cmd
**GESTIÓN DE PUERTOS FIREWALL**
- Abrir un puerto
- Cerrar un puerto
- Salir
```


### ✔️ Ejemplo: Abrir el puerto 8080 TCP

- Opción: `1`
- Puerto: `8080`
- Protocolo: `TCP`

El script ejecutará internamente:
```cmd
netsh advfirewall firewall add rule name="Puerto_8080_TCP" dir=in action=allow protocol=TCP localport=8080
```

## ❌ **Ejemplo: Cerrar el puerto 8080 TCP**
- Opción: 2
- Puerto: 8080
- Protocolo: TCP

El script ejecutará internamente:
```cmd
netsh advfirewall firewall delete rule name="Puerto_8080_TCP" protocol=TCP localport=8080
```
## 📎 **Requisitos**
- Ejecutar como Administrador.
- Funciona en Windows 7, 8, 10 y 11.
- Utiliza netsh advfirewall, recomendado por Microsoft para configuraciones modernas de firewall.

## ❗ **Advertencia de Seguridad**
Abrir puertos innecesarios puede representar un riesgo de seguridad, especialmente si estás conectado a redes públicas o sin protección. Solo abre puertos que necesitas, y asegúrate de contar con medidas como antivirus, actualizaciones al día y firewalls bien configurados.

## 📁 **Archivos incluidos**
- puertos_firewall.bat: Script interactivo para gestionar puertos.
- README.md: Este documento con instrucciones, advertencias y ejemplos.

📥 **Descargar archivo**
- https://github.com/speinador/Control_de_Puertos/blob/main/Control_de_Puertos.bat

## 🛡️ **Recomendación**
Evita abrir puertos como el 445 (SMB) a menos que sepas lo que estás haciendo. Ese puerto ha sido históricamente vulnerable y es objetivo de ataques frecuentes.

---

## 🧑‍🏫 Autor

Explicación elaborada por [Sebastian Peinador](https://www.linkedin.com/in/sebastian-j-peinador/) para propósitos didácticos y de investigación en ciberseguridad ofensiva.

---

## 📄 Licencia

Este material se distribuye bajo la licencia [MIT](LICENSE).

---

> Si te resulta útil, ¡no olvides darle ⭐ al repo o compartirlo!
