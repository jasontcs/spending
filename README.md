# Spending

Spending is a mobile application written in [Flutter](https://flutter.dev/)

## Features
- Support multiple members
- Categories
- Upload receipts
- Firestore as a backend
- Set Budget to limit the expense
- Chart for Data Visualization

## Getting Started
Put your own firebase project config   file `lib/firebase_options.dart` with Firebase Auth, Firestore & Firebase Storage enabled

You will need a recent version of [Flutter](https://flutter.dev/), then just

`$ flutter run`

on mobile devices

## Tech Stacks

- UI Framework: Flutter
- Design Pattern: BloC
- Backends: Firebase Auth, Firestore, Firebase Storage
- Handling of async events: ReactiveX (RxDart)

## Project Structure
```
spending 
├─ lib
│  ├─ app
│  │  ├─ app.dart           # MaterialApp, RepositoryProviders, Global Auth State
│  │  └─ theme.dart         # Using [flex_color_scheme]
│  ├─ app_router.dart       # All Routing using [auto_route]
│  ├─ bloc_observer.dart    # Middleware of Bloc, Use for Logging
│  ├─ common                # Common util function
│  ├─ features              # Feature Layer: Seperate Pages  
│  │  ├─ auth
│  │  ├─ budget
│  │  ├─ categories
│  │  ├─ category
│  │  ├─ chart
│  │  ├─ currencies
│  │  ├─ receipt
│  │  ├─ record
│  │  ├─ records
│  ├─ l10n                  # Localization
│  ├─ main.dart             
│  ├─ model                 
│  └─ widgets               # Reusable Widgets 
├─ packages                 # Separate non-UI repositories
│  ├─ calculator            # Calculator Logic API
│  ├─ spending_api          # Data Layer: Firestore API
│  ├─ spending_logger       
│  └─ spending_repository   # Domain Layer: Modelized, Filtered & Streamed repository
└─ pubspec.yaml             # App config, dependencies
```

## Architecture - BloC Pattern
<img src="https://github.com/jasontcs/spending/blob/master/screenshots/architecture.png" width="720"> 

## Pages
|                                          Records Page                                           |                                           Record Page                                           |                                             Budget Page                                             |
| :---------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------: |
| <img src="https://github.com/jasontcs/spending/blob/master/screenshots/budget.png" width="240"> | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/record.png" width="240"> |   <img src="https://github.com/jasontcs/spending/blob/master/screenshots/budget.png" width="240">   |
|                                           Chart Page                                            |                                           Trend Page                                            |                                           Categories Page                                           |
| <img src="https://github.com/jasontcs/spending/blob/master/screenshots/chart.png" width="240">  | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/trend.png" width="240">  | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/categories.png" width="240"> |
