### Materials Used
- MySQL, MongoDB Compass, MongoDB Shell, Python (pymongo)
- AWS, Clever Cloud, MongoDB Atlas
- Tableau
- Jmeter

## Table of Contents
- Datasets
- Methodology - Workflow
- Performance Measurements
- Data Visualizations
- Key Insights

### Datasets
- More than 60,000 games, 30 teams, 4.5 players and their statistics.
- Data distributed among 16 tables
- Year 1946 - 2020

Few examples of tables
- Draft - Player position, height, weight of player
- Game - Home team name, game date, match details, details of inactive players, game officials’ 
details
- Player - Name, Birthdate, School, Country, no:of seasons played, year of first and last game, 
Salary 
- Team - Name, City & State, Headcoach, Active Years and Salary attributes
- News - Information on Articles that mentioned the team/player, author, media, page number, 
rank, etc

### Methodology

![NBA Basketball](https://user-images.githubusercontent.com/50318272/213020172-2ca1f384-7c1b-4fb1-b5ef-d9a3ccf4e468.png)

### Visualizations

Game Analysis

<img width="503" alt="image" src="https://user-images.githubusercontent.com/50318272/213056770-d5e2c0ef-af25-4c02-8f5f-857a6df3a5cd.png">

---

Home Vs Away Team Statistics

<img width="453" alt="image" src="https://user-images.githubusercontent.com/50318272/213056882-fb4e9a97-23ed-4470-8ae0-8dc9506b40a5.png">

---

Defensive Statistics

<img width="447" alt="image" src="https://user-images.githubusercontent.com/50318272/213056952-6bf0b0ec-2345-44f9-a5a4-57e53cd1edf2.png">

---

Offensive Statistics

<img width="455" alt="image" src="https://user-images.githubusercontent.com/50318272/213057008-22c0916c-9c5e-4635-a0cf-d238547878cc.png">

---

Team Analysis

<img width="446" alt="Team Analysis" src="https://user-images.githubusercontent.com/50318272/213016419-ce17b7ed-9d4c-4dfd-9eaa-bf08a1bd5613.png">

---

Player Analysis

<img width="276" alt="image" src="https://user-images.githubusercontent.com/50318272/213016676-1b7efcbe-5955-4aed-97b5-f5351208db43.png">


<img width="437" alt="image" src="https://user-images.githubusercontent.com/50318272/213016761-b3f78566-2dd4-4a9a-aa13-df2fb8d594f5.png">

---

### Performance Measurements

- MySQL

<img width="426" alt="image" src="https://user-images.githubusercontent.com/50318272/213018972-2d9b9f7b-0b34-4ce3-89e0-d9ef09865aec.png">

<img width="425" alt="image" src="https://user-images.githubusercontent.com/50318272/213019061-fab1fc06-9ce7-49a1-afb6-3d735e4f57b6.png">


---
- MongoDB

<img width="425" alt="image" src="https://user-images.githubusercontent.com/50318272/213018638-5af3d002-59b2-47c8-96cc-b19aed7da23e.png">

<img width="425" alt="image" src="https://user-images.githubusercontent.com/50318272/213018744-1d9e7629-cd77-4a84-93b9-0adfff792d48.png">

##### Result
- MongoDB performed better compared to MySQL.

---
### Key Inferences

- The chance of winning as a home team is higher than as an opposite team.
- Moderate to higher correlation between the winning rate of the team and the 3 points score efficiency, free throw percentage, rebound percentage. 
- The team with both good offensive and defensive strategies have a high winning percentage. 
- No significant correlation between the Team salary with their performance and Player Salary with their performance.
