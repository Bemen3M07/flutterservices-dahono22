# Documentació de la Pràctica 3b: APIs i Serveis

Aquest document explica detalladament els passos que has de seguir per completar la pràctica. Es divideix en diversos exercicis, cadascun amb els seus objectius, tasques i criteris d’entrega. Recorda que en cada punt de control hauràs de mostrar el que has fet al professor/a, i cada pas haurà d’estar documentat als commits del repositori de GitHub.

---

## Índex

- [Introducció i Objectius](#introducció-i-objectius)
- [Configuració del Projecte i Estructura](#configuració-del-projecte-i-estructura)
- [Exercici 1: Accés a un Servei REST](#exercici-1-accés-a-un-servei-rest)
  - [1.1. Connexió al Servei i Prova de l’Endpoint](#11-connexió-al-servei-i-prova-de-lendpoint)
  - [1.2. Creació del Model Car](#12-creació-del-model-car)
  - [1.3. Gestió del JSON](#13-gestió-del-json)
  - [1.4. Wrapper del Servei (CarService)](#14-wrapper-del-servei-carservice)
  - [1.5. Test Unitari](#15-test-unitari)
- [Exercici 2: Implementació del Provider](#exercici-2-implementació-del-provider)
- [Exercici 3: Integració de Vista i Model](#exercici-3-integració-de-vista-i-model)
- [Exercici 4: Aplicació d’Acudits](#exercici-4-aplicació-dacudits)
- [Lliuraments i Consells Finals](#lliuraments-i-consells-finals)
- [Conclusió](#conclusió)

---

## Introducció i Objectius

La pràctica té com a finalitat aprendre a integrar APIs REST i gestionar els serveis dins d’una aplicació Flutter. En aquest projecte aprendràs a:

- Consumir una API REST per obtenir dades (cotxes).
- Convertir el JSON en objectes i viceversa.
- Gestionar la connexió amb l’API mitjançant una classe wrapper.
- Integrar l’estat global amb la llibreria Provider.
- Combinar la vista amb el model.
- Desenvolupar una aplicació que mostra acudits aleatoris a partir d’una API.

---

## Configuració del Projecte i Estructura

### Instal·lació de Flutter

Assegura’t que tens Flutter instal·lat correctament. Consulta la [documentació oficial](https://flutter.dev).