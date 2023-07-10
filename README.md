# Spending

Spending is an expense tracker mobile application written in [Flutter](https://flutter.dev/) using [BloC](https://bloclibrary.dev/) as design pattern

## Features
- Support multiple members
- Categories
- Upload receipts
- Firebase as a backend
- Set Budgets to limit the expense
- Chart for Data Visualization

## Pages
|                                          Records Page                                           |                                           Record Page                                           |                                             Budget Page                                             |
| :---------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------: |
| <img src="https://github.com/jasontcs/spending/blob/master/screenshots/records.png" width="240"> | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/record.png" width="240"> |   <img src="https://github.com/jasontcs/spending/blob/master/screenshots/budget.png" width="240">   |
|                                           Chart Page                                            |                                           Trend Page                                            |                                           Categories Page                                           |
| <img src="https://github.com/jasontcs/spending/blob/master/screenshots/chart.png" width="240">  | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/trend.png" width="240">  | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/categories.png" width="240"> |

## Getting Started
Put your own Firebase project config   file `lib/firebase_options.dart` with Firebase Auth, Firestore & Firebase Storage enabled

You will need a recent version of [Flutter](https://flutter.dev/), then just

`$ flutter run`

on mobile devices

## Tech Stacks

- UI Framework: [Flutter](https://flutter.dev/)
- Design Pattern: [BloC](https://bloclibrary.dev/)
- Backends: [Firebase Auth](https://firebase.google.com/docs/auth), [Firestore](https://firebase.google.com/docs/firestore), [Firebase Storage](https://firebase.google.com/docs/storage)
- Handling of async events: [ReactiveX](https://reactivex.io/) ([RxDart](https://github.com/ReactiveX/rxdart))

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
│  ├─ features              # Feature Layer: Separate Pages  
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
