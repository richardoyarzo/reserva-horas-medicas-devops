# Reserva de Horas Médicas - Proyecto DevOps IACC

Sitio web estático del Centro Médico Vida Sana (nombre ficticio) que simula la
reserva de horas médicas. Se sirve con Nginx dentro de un contenedor Docker.
Proyecto académico: no usa API, base de datos ni datos personales reales.

## Requisitos
- Git
- Docker Desktop instalado y en ejecución
- Navegador web

## Cómo ejecutar

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/USUARIO/reserva-horas-medicas-devops.git
   cd reserva-horas-medicas-devops
   ```

2. Crear el archivo de variables de entorno:
   ```bash
   Copy-Item .env.example .env     # Windows PowerShell
   cp .env.example .env            # Linux / macOS / Git Bash
   ```

3. Construir la imagen y levantar el servicio:
   ```bash
   docker compose build
   docker compose up -d
   ```

4. Verificar el estado:
   ```bash
   docker compose ps
   docker ps
   ```

5. Abrir en el navegador: http://localhost:8080

## Verificación y monitoreo
```bash
curl -I http://localhost:8080
docker logs reserva-horas-web
docker stats --no-stream
```
Se espera un código HTTP 200 y la página del formulario visible.

## Detener el servicio
```bash
docker compose down
```

## Seguridad
- No se publican credenciales, tokens ni datos personales.
- El archivo `.env` real está excluido por `.gitignore`; solo se versiona `.env.example`.
- El formulario es una simulación: no envía ni almacena información.
- Todos los nombres y direcciones del sitio son ficticios.

## Automatización
El workflow `.github/workflows/devops-automation.yml` se ejecuta en cada push y
pull request hacia `main`: revisa la estructura de archivos, verifica que no se
haya subido un `.env`, construye la imagen y comprueba que el servicio responda.

## Autor
[Nombre Apellido] - IACC - DevOps, Unidad 1, 2026.