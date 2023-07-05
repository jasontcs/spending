# spending

Spending Tracker app for my family use.

## Getting Started

- Use Firestore, Firebase Auth & Firebase Storage (Free Tier!)
- Use BloC because I love it

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
├─ packages                 # Seperate non UI repositories
│  ├─ calculator            # Just a calucator logic
│  ├─ spending_api          # Data Layer: Firestore API
│  ├─ spending_logger       
│  └─ spending_repository   # Domain Layer: Modelized, Filtered & Streamed repository
└─ pubspec.yaml             # App config, dependencies
```

## Architecture
<img src="https://github.com/jasontcs/spending/blob/master/screenshots/architecture.png" width="720"> 

## Pages
|                                          Records Page                                           |                                           Record Page                                           |                                             Budget Page                                             |
| :---------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------: |
| <img src="https://github.com/jasontcs/spending/blob/master/screenshots/budget.png" width="240"> | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/record.png" width="240"> |   <img src="https://github.com/jasontcs/spending/blob/master/screenshots/budget.png" width="240">   |
|                                           Chart Page                                            |                                           Trend Page                                            |                                           Categories Page                                           |
| <img src="https://github.com/jasontcs/spending/blob/master/screenshots/chart.png" width="240">  | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/trend.png" width="240">  | <img src="https://github.com/jasontcs/spending/blob/master/screenshots/categories.png" width="240"> |
