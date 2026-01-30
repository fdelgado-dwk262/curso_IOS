Promt usado en GPT .- 
Rol .- como mi experto ayudante y asesor en programación de entornos Swift, eres titulado en ingeniería informática y especializado en IOS Swift con mas de 10 años de experiencia Orden y objetivo .- Prepárame un tutorial detallado para poder pasar CSS a Swift con los pasos y herramientas y/o conversiones automatiocas Contexto .- Se usará en una migración de los estilos de una web a una aplicación para que mantenga la coherencia visual, colores, textos, separaciones etc... definido en todo el cls Estilo .- la respuesta debe de tener una estructura detallada del proceso de migración para poderlo realizar, debe de ser claro y sin entrar en tópicos, sin omitir pasos, sin emoticónos y todo preparado con un lenguaje técnico pero comprensible

Respuesta GPT .- 

Tutorial: Migración de estilos CSS a Swift (iOS)
================================================

1\. Enfoque general y principios clave
--------------------------------------

Antes de entrar en herramientas o código, es importante entender una realidad técnica:

> **CSS no se convierte directamente a Swift**, sino que se **traduce conceptualmente** a un sistema de estilos equivalente usando:

*   UIKit o SwiftUI
*   Design Tokens
*   Sistemas de theming

El objetivo no es copiar reglas CSS, sino **replicar la intención visual**:

*   Colores
*   Tipografías
*   Espaciados
*   Jerarquía visual
*   Estados (hover → highlighted, active → selected)

2\. Auditoría del CSS existente (paso obligatorio)
--------------------------------------------------

### 2.1 Clasificar el CSS

Antes de convertir nada, debes **auditar y clasificar** el CSS:

#### 1\. Variables CSS / Custom Properties
`
    :root {
      --primary-color: #0057ff;
      --secondary-color: #ff9500;
      --font-base: 'Roboto', sans-serif;
      --spacing-sm: 8px;
    }
`

#### 2\. Tipografía

*   font-family
*   font-size
*   font-weight
*   line-height
*   letter-spacing

#### 3\. Colores

*   Backgrounds
*   Textos
*   Bordes
*   Estados (hover, focus, disabled)

#### 4\. Espaciados

*   Margin
*   Padding
*   Gap
*   Border-radius

#### 5\. Componentes reutilizables

*   Botones
*   Inputs
*   Cards
*   Headers
*   Modales

**Resultado esperado:** documento de estilos normalizado, no código todavía.

3\. Conversión de CSS a Design Tokens (paso clave)
--------------------------------------------------

### 3.1 ¿Qué son Design Tokens?

Son valores de diseño desacoplados de la tecnología:
`
    {
      "color": {
        "primary": "#0057FF",
        "secondary": "#FF9500"
      },
      "spacing": {
        "sm": 8,
        "md": 16
      },
      "font": {
        "base": "Roboto"
      }
    }
`

### 3.2 Herramientas recomendadas

*   **Style Dictionary (Amazon)** – conversión automática a Swift
*   **Figma Tokens / Tokens Studio**
*   **CSS → JSON manual** (para proyectos pequeños)

Style Dictionary permite:

*   Leer CSS o JSON
*   Generar automáticamente:
    *   Swift
    *   SwiftUI
    *   UIColor
    *   UIFont

4\. Conversión automática con Style Dictionary
----------------------------------------------

### 4.1 Flujo recomendado

1.  Extraer variables CSS → JSON
2.  Procesarlas con Style Dictionary
3.  Generar archivos Swift

### 4.2 Ejemplo de token de color

Entrada (JSON):

`

    {
      "color": {
        "primary": {
          "value": "#0057FF"
        }
      }
    }
`
Salida Swift (UIKit):

`

    extension UIColor {
        static let primary = UIColor(
            red: 0/255,
            green: 87/255,
            blue: 255/255,
            alpha: 1
        )
    }
`
Salida SwiftUI:

`

    extension Color {
        static let primary = Color("primary")
    }

`
5\. Mapeo CSS → Swift (tabla conceptual)
----------------------------------------

### 5.1 Colores

CSS

UIKit

SwiftUI

color

UIColor

Color

background-color

backgroundColor

.background

border-color

layer.borderColor

.overlay

### 5.2 Tipografía

`

    font-size: 16px;
    font-weight: 600;
    line-height: 24px;

    UIFont.systemFont(ofSize: 16, weight: .semibold)

    .font(.system(size: 16, weight: .semibold))
    .lineSpacing(8)
`

Recomendación:** centralizar fuentes en un `FontManager`.

6\. Sistema de estilos en Swift (arquitectura recomendada)
----------------------------------------------------------

`

    DesignSystem/
     ├── Colors.swift
     ├── Typography.swift
     ├── Spacing.swift
     ├── Radius.swift
     ├── Theme.swift
`

7\. Componentización (equivalente a clases CSS)
-----------------------------------------------

`

    .button-primary {
      background-color: var(--primary-color);
      padding: 16px;
      border-radius: 8px;
    }

    struct PrimaryButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(Spacing.md)
                .background(Color.primary)
                .cornerRadius(8)
                .opacity(configuration.isPressed ? 0.8 : 1)
        }
    }
`

8\. Estados CSS → iOS
---------------------

CSS

UIKit

SwiftUI

:hover

highlighted

isPressed

:active

selected

configuration.isPressed

:disabled

isEnabled = false

.disabled(true)

9\. Buenas prácticas finales
----------------------------

*   No usar estilos inline en vistas
*   Todo valor visual debe venir del Design System
*   Evitar hardcodear colores o tamaños
*   Documentar equivalencias CSS → Swift
*   Automatizar generación siempre que sea posible

10\. Resumen del flujo completo
-------------------------------

1.  Auditar CSS
2.  Extraer variables
3.  Convertir a Design Tokens
4.  Generar Swift automáticamente
5.  Crear Design System
6.  Componentizar estilos
7.  Validar visualmente
