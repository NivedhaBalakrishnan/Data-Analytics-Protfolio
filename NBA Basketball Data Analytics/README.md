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

![NBA Basketball](https://user-images.githubusercontent.com/50318272/213019762-9da1393e-3aa8-4f14-9c57-cc8858a2c75a.png)

### Visualizations

Team Analysis

<img width="446" alt="Team Analysis" src="https://user-images.githubusercontent.com/50318272/213016419-ce17b7ed-9d4c-4dfd-9eaa-bf08a1bd5613.png">

---

Team Efficiency

![4](https://user-images.githubusercontent.com/50318272/213016493-c0e6912c-f4d9-40b3-9b97-66fb2167957d.png)

---

Game Statistics

![1](https://user-images.githubusercontent.com/50318272/213016309-cab0e94a-3787-4972-bf97-9c67d54fd778.png)

---
Score Statistics

![1](https://user-images.githubusercontent.com/50318272/213016364-846fe1a0-056f-4897-ac73-84be8fd9e0b3.png)

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
