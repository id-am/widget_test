<h1 align="center">
  <br>
  <a href="http://www.amitmerchant.com/electron-markdownify"><img src="https://f.hubspotusercontent20.net/hubfs/2829524/Copia%20de%20LOGOTIPO_original-2.png"></a>
  <br>
  Laboratorio Widget Testing
  <br>
</h1>

<h4 align="center">Proyecto base de <a href="https://github.com/karatelabs/karate" target="_blank">Pragma</a>.</h4>

<p align="center"> 
  <img alt="Flutter Version" src="https://img.shields.io/badge/Flutter-3.29+-blue.svg">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-green.svg"> 
</p>

Este proyecto es un ejemplo educativo de cómo implementar pruebas de widgets en Flutter. Está diseñado para ayudar a desarrolladores principiantes a entender los conceptos fundamentales de las pruebas de widgets.

<p align="center">
  <a href="#topicos">Topicos</a> •
  <a href="#tecnologias">Tecnologias</a> •
  <a href="#consideraciones">Consideraciones</a> •
  <a href="#descarga">Descarga</a> •
  <a href="#instalación-y-ejecución">Instalación y ejecución</a> •
  <a href="#autores">Autores</a> •
  <a href="#relacionados">Relacionados</a> •
  <a href="#roadmap">Roadmap</a>
</p>

## Topicos
- <a href="#introducción-a-las-pruebas-de-widgets">Introducción a las Pruebas de Widgets</a>
- <a href="#estructura-del-proyecto">Estructura del Proyecto</a>
- <a href="#organización-de-carpetas">Organización de Carpetas</a>
- <a href="#patrones-de-organización">Patrones de Organización</a>
- <a href="#conceptos-de-testing-demostrados">Conceptos de Testing Demostrados</a>
- <a href="#prácticas-demostradas">Prácticas Demostradas</a>

## Introducción a las Pruebas de Widgets
Las pruebas de widgets son una parte esencial del desarrollo en Flutter. Permiten verificar que los widgets se comporten como se espera y que la interfaz de usuario funcione correctamente. Este proyecto incluye ejemplos de cómo realizar pruebas de widgets utilizando el framework de pruebas de Flutter.

## Estructura del Proyecto

El proyecto contiene 6 páginas principales:

1. **HomePage**: Página principal con navegación a otras páginas.
2. **CounterPage**: Página con un contador interactivo.
3. **ScrollPage**: Página con un ListView para pruebas de scroll.
4. **FormPage**: Página con un formulario para pruebas de validación.
5. **AnimationPage**: Página con animaciones para pruebas de rendimiento.
6. **SemanticsPage**: Página de accesibilidad para pruebas de semántica.

### Organización de Carpetas

```
mobile-testing-flutter-widget-test/
├── lib/                              # Código fuente principal
│   ├── main.dart                     # Punto de entrada de la aplicación
│   ├── routes.dart                   # Definición de rutas de navegación
│   └── pages/                        # Páginas de la aplicación
│       ├── home_page.dart            # Página principal con navegación
│       ├── counter_page.dart         # Ejemplo de contador interactivo
│       ├── scroll_page.dart          # Ejemplo de scroll y listas
│       ├── form_page.dart            # Ejemplo de validación de formularios
│       ├── animated_page.dart        # Ejemplo de animaciones
│       └── semantics_page.dart       # Ejemplo de accesibilidad
│
├── test/                             # Pruebas de la aplicación
│   └── lib/                          # Refleja la estructura de lib/
│       └── pages/                    # Pruebas de cada página
│           ├── home_page_test.dart   # Pruebas para HomePage
│           ├── counter_page_test.dart # Pruebas para CounterPage
│           ├── scroll_page_test.dart # Pruebas para ScrollPage
│           ├── form_page_test.dart   # Pruebas para FormPage
│           ├── animated_page_test.dart # Pruebas para AnimatedPage
│           └── semantics_page_test.dart # Pruebas para SemanticsPage
│
├── assets/                           # Recursos estáticos
│   └── images/                       # Imágenes utilizadas en la app
│       └── 150x150.png               # Imagen de ejemplo
│
├── android/                          # Configuración específica para Android
├── ios/                              # Configuración específica para iOS
├── web/                              # Configuración específica para Web
├── macos/                            # Configuración específica para macOS
├── linux/                            # Configuración específica para Linux
├── windows/                          # Configuración específica para Windows
│
├── pubspec.yaml                      # Dependencias y configuración del proyecto
└── README.md                         # Documentación del proyecto
```

### Patrones de Organización

#### 1. Estructura Espejo entre Código y Pruebas

Este proyecto implementa una "estructura espejo", donde la organización de las pruebas refleja exactamente la estructura del código fuente:

```
lib/pages/home_page.dart ↔ test/lib/pages/home_page_test.dart
```

**Ventajas:**
- Facilita encontrar rápidamente los tests correspondientes a cada componente
- Mantiene una correlación clara entre el código y sus pruebas
- Facilita la navegación para nuevos desarrolladores

#### 2. Relación entre Componentes

```
main.dart
   ↓
[routes.dart] ←→ [Páginas en lib/pages/]
   ↓                    ↓
[Renderizado de UI] ← [Tests en test/lib/pages/]
```

## Conceptos de Testing Demostrados

### 1. Búsqueda de Widgets
- Por Key: `find.byKey(const Key('key_name'))`
- Por texto: `find.text('texto a buscar')`
- Por tipo: `find.byType(WidgetType)`
- Por icono: `find.byIcon(Icons.icon_name)`
- Por contenido: `find.byWidgetPredicate((widget) => widget is Text && widget.data == 'texto')`

### 2. Verificación de Widgets
- Existencia: `expect(find.byKey(...), findsOneWidget)`
- No existencia: `expect(find.byKey(...), findsNothing)`
- Múltiples widgets: `expect(find.byType(...), findsNWidgets(n))`

### 3. Interacción con Widgets
- Tap: `await tester.tap(find.byKey(...))`
- Scroll: `await tester.fling(...)`

### 4. Verificación de Propiedades
- Estilos: `expect(widget.style, isA<TextStyle>())`
- Alineación: `expect(column.mainAxisAlignment, MainAxisAlignment.center)`
- Márgenes: `expect(card.margin, const EdgeInsets.all(16.0))`

## Prácticas Demostradas

1. **Organización de Tests**
   - Uso de `group` para agrupar pruebas relacionadas
   - Nombres descriptivos para los tests
   - Comentarios explicativos

2. **Keys para Testing**
   - Uso consistente de keys
   - Keys específicas para elementos interactivos

3. **Verificaciones Completas**
   - Estructura del widget
   - Interacciones del usuario
   - Estados y actualizaciones
   - Estilos y propiedades

4. **Verificación de accesibilidad**
   - Uso de `Semantics` para verificar accesibilidad

## Tecnologias
- [Flutter](https://flutter.dev/) versión 3.29 - Framework de desarrollo de aplicaciones multiplataforma
- [Dart](https://dart.dev/) - Lenguaje de programación utilizado por Flutter
- [Flutter Test](https://api.flutter.dev/flutter/flutter_test/) - Paquete para pruebas de widgets en Flutter

## Consideraciones
- Asegúrate de tener Flutter instalado y configurado en tu máquina.
- Este proyecto está diseñado para ser educativo.

## Descarga

Para clonar está aplicación desde la linea de comando:

```bash
git clone https://github.com/id-am/widget_test.git
cd widget_test
git remote remove origin
git remote add origin URL_DE_TU_NUEVO_REPOSITORIO
git push -u origin master
```
Nota: Asegúrate de reemplazar URL_DE_TU_NUEVO_REPOSITORIO con la URL del repositorio que creaste en tu cuenta de GitHub.

Puedes descargar el proyecto en el enlace [download](https://github.com/id-am/widget_test.git) 

## Instalación y ejecución

Es necesario contar con Flutter instalado y configurado en tu máquina. Puedes seguir la guía de instalación oficial de Flutter [aquí](https://flutter.dev/docs/get-started/install).

```bash
# Descargar dependencias
flutter pub get

# Ejecutar para probar el app
flutter run

# Ejecutar todas las pruebas
flutter test

# Ejecutar pruebas específicas
flutter test test/lib/pages/home_page_test.dart
```

## Autores

[<img src="https://github.com/idamkiller.png" width=115><br><sub>Ivan Dario Avila Martinez</sub>](https://github.com/idamkiller)


## Relacionados
- [Documentación oficial de Flutter Testing](https://docs.flutter.dev/testing/overview)
- [Widget Testing Cookbook](https://flutter.dev/docs/cookbook/testing/widget)
- [Testing Best Practices](https://flutter.dev/docs/testing/best-practices)

## Roadmap
- Unit Testing : Complejidad baja, pruebas de funciones individuales.
- Widget Testing : Complejidad media, pruebas de widgets individuales.
- Integration Testing : Complejidad alta, pruebas de la aplicación completa.
- Golden Testing : Comparación de imágenes para verificar cambios visuales.
