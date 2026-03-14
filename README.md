# Guía para los muchachones de la FAC4 en la uci que se quieren graduar

## 1. Instalar MiKTeX (LaTeX)

1. Ve **https://miktex.org/download**
2. Descarga el instalador windows (botón "Download")
3. Instala
4. En la pantalla **"Install missing packages on-the-fly"** → selecciona que si
   - Esto hace que MiKTeX descargue automáticamente cualquier paquete que falte al compilar
5. Termina la instalación y **reinicia la PC**

> ✅ Verifica que funciona abriendo PowerShell y corriendo:
> ```powershell
> pdflatex --version
> ```
> Deberías ver algo como `pdfTeX 3.141592...`

---

## 2. Instalar VS Code y la extensión LaTeX Workshop

1. Descarga VS Code desde **https://code.visualstudio.com**
2. Instálalo con las opciones por defecto
3. Abre VS Code → ve a Extensions (`Ctrl+Shift+X`)
4. Busca **LaTeX Workshop** (de James Yu) → instala
5. Reinicia VS Code

---

## 3. Clonar el repositorio

1. Abre PowerShell y corre:

```powershell
git clone https://github.com/HollowDude/.tex_is.git
cd .tex_is
```

> Si no tienes Git: descárgalo desde **https://git-scm.com/download/win**

2. Revisa que tengas todas las dependencias actualizadas de MiKTeX que usa el proyecto, ve a la carpeta (Como ADMIN) donde clonaste y escribe:

```powershell
miktex packages update
```

3. Luego puedes arrancar la version que va a estar en esta rama de mi tesis siempre con:

```powershell
<#Borras el cache antes de todo#>
Remove-Item tesis.aux, tesis.bbl, tesis.bcf, tesis.blg, tesis.run.xml -ErrorAction SilentlyContinue
<#Compilas#>
pdflatex tesis
<#Compilas las librerias#>
biber --input-directory "." tesis
<#Compilas con las librerias cargadas#>
pdflatex tesis
```

4. Ahi al menos veras un resultado, luego modifica a tu gusto

---

## 4. Instalar la plantilla (Si quieres meterle a esto desde 0 del todo)

1. Los únicos archivos que necesitas para generar la plantilla son:

```
Redistribution/
├── thesis.dtx   ← código fuente de la clase
└── thesis.ins   ← script de instalación
```

2. Navega a esa carpeta:

```powershell
cd Redistribution
```

### Paso 4.1 — Corregir el encoding (IMPORTANTE)

El archivo `thesis.dtx` fue escrito en Windows-1252 (Latin) y las versiones modernas de LaTeX esperan UTF-8. Hay que convertirlo antes de compilar:

```powershell
$encoding = [System.Text.Encoding]::GetEncoding(1252)
$content = [System.IO.File]::ReadAllText("thesis.dtx", $encoding)
[System.IO.File]::WriteAllText("thesis.dtx", $content, [System.Text.UTF8Encoding]::new($false))
```

Haz lo mismo con `thesis.ins`:

```powershell
$encoding = [System.Text.Encoding]::GetEncoding(1252)
$content = [System.IO.File]::ReadAllText("thesis.ins", $encoding)
[System.IO.File]::WriteAllText("thesis.ins", $content, [System.Text.UTF8Encoding]::new($false))
```

### Paso 4.2 — Correr el instalador

```powershell
pdflatex thesis.ins
```

Esto genera en la misma carpeta:
- `thesis.cls` ← Principal esto
- `masterthesis.sty` ← estilos adicionales
- `LogoUCI.eps` ← logo de la UCI
- `example.tex` ← documento de ejemplo

### Paso 4.3 — Generar la documentación (recomiendo)

```powershell
pdflatex thesis.dtx
makeindex -s gind.ist -o thesis.ind thesis.idx
makeindex -s gglo.ist -o thesis.gls thesis.glo
pdflatex thesis.dtx
pdflatex thesis.dtx
```

Esto genera `thesis.pdf` con toda la documentación de la plantilla.

---

## 5. Estructura de tu proyecto de tesis

Crea una carpeta nueva para tu tesis (fuera de `Redistribution`) y copia allí:

```
mi_tesis/
├── thesis.cls          ← copiado desde Redistribution/
├── masterthesis.sty    ← copiado desde Redistribution/
├── LogoUCI.eps         ← copiado desde Redistribution/
├── Acronyms.tex        ← estaba afuera
├── main.tex            ← tu documento principal (ver abajo)
├── Glossary.tex        ← definiciones del glosario
├── Bibliography.bib    ← tus referencias bibliográficas
└── img/                ← carpeta para tus imágenes
```

---

## 6. Tu archivo principal `main.tex`

Usa `example.tex` (generado en el paso 4) como base. La estructura mínima es:

```latex
\documentclass{thesis}

% Datos de la tesis
\title{Título de mi tesis}
\author{Tu Nombre Completo}
\date{2024}

\begin{document}

\frontmatter
\maketitle

\mainmatter
\chapter{Introducción}
Tu contenido aquí...

\backmatter
\printglossaries
\printbibliography

\end{document}
```

> Revisa `example.tex` para ver todas las opciones disponibles de la plantilla.

---

## 7. Compilar en VS Code

1. Abre la carpeta `mi_tesis/` en VS Code (`Archivo → Abrir carpeta`)
2. Abre `main.tex`
3. Compila con `Ctrl+Alt+B` o el botón ▶ verde arriba a la derecha
4. El PDF se abre automáticamente en el panel lateral

### Si LaTeX Workshop no encuentra el archivo raíz

Agrega esta línea al inicio de cada archivo `.tex` auxiliar:

```latex
% !TEX root = main.tex
```

---

## 8. Compilar referencias y glosario

El flujo completo de compilación (cuando tienes bibliografía y glosario) es:

```powershell
pdflatex main.tex
biber main
makeglossaries main
pdflatex main.tex
pdflatex main.tex
```

LaTeX Workshop puede hacer esto automáticamente. En `settings.json` de VS Code agrega:

```json
"latex-workshop.latex.recipes": [
  {
    "name": "pdflatex → biber → glossaries → pdflatex × 2",
    "tools": ["pdflatex", "biber", "makeglossaries", "pdflatex", "pdflatex"]
  }
]
```

---

## 9. Resumen rápido de comandos útiles

| Qué quieres hacer | Comando en el `.tex` |
|---|---|
| Referenciar un término del glosario | `\gls{NombreEntrada}` |
| Citar una referencia bibliográfica | `\cite{clave}` |
| Insertar una imagen | `\includegraphics[width=\textwidth]{img/foto}` |
| Agregar una nota de TODO | `\todo{Revisar esto}` |
| Texto de relleno para probar | `\lipsum[1]` |

---

## Problemas frecuentes

| Error | Causa | Solución |
|---|---|---|
| `Cannot find LaTeX root file` | Compilando un archivo auxiliar | Abre y compila `main.tex` |
| `Invalid UTF-8 byte sequence` | Encoding incorrecto en `.dtx` | Aplica la conversión del Paso 4.1 |
| `File thesis.cls not found` | No se copió el `.cls` | Copia `thesis.cls` a la carpeta de tu tesis |
| Paquete no encontrado | MiKTeX no lo tiene | Abre MiKTeX Console → Updates → instala paquetes |

---

*Plantilla thesis.cls — Universidad de las Ciencias Informáticas (UCI), Cuba*
*Autor original: Hassán Lombera Rodríguez*
*NO ME RESPONSABILIZO POR LO MAL QUE PUEDA SALIR ESTE TUTO, a mi me fue bien c;*