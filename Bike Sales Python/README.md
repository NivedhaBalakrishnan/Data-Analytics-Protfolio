## Dataset

Rows: 1026
Columns : 13

Column features:
- ID : Unique integer corresponds to each customer
- Marital Status : Categorical data specify whether the customer is Single or Married
- Gender : Categorical data specify whether the customer is Male or Female
- Income : Numerical value corresponds to the customer income
- Children : Numerical value corresponds to the number of children that the customer have
- Education : 5 Categorical data specifies customer's educational status
- Occupation : 5 Categorical data specifies customer's occupation
- Home Owner : Categorical data specify whether the customer owns a home or not
- Cars : Numberical value corresponds to the number of cars that the customer have
- Commute Distance : Ordinal data corresponds to the distance commuted by the customer
- Region : 3 categorical data corresponds to region includes Europe, North America and Pacific
- Age : Numerical data specify customer's age
- Purchased Bike : Specify whether the customer purchased bike or not

## Data Cleaning
- This dataset has some missing values in several columns such as Marital Status, Gender, Income, Children, Homeowners, cars and age.
- For some features, certain assumptions were made as mentioned below: 
  - Marital Status: Here, it is assumed that the people who have children are married. 
  -  Income: Median for the missing values. 
  -  Children: 0 children for missing values. 
  -  Home Owners: 'No' for missing values. 
  -  Car: 0 car for missing values. 
  -  Since it is difficult to have an assumption for gender and age, corresponding rows with the missing values were removed.

## Descriptive Analysis
A descriptive statistical analysis were made with the numerical columns and following insights are derived.

### Age

<img width="364" alt="image" src="https://user-images.githubusercontent.com/50318272/211235234-a07c9315-34c8-4bf3-9acd-1bfe1999e330.png">

- Right Skewed distribution denotes that the most of the customers are young.
- Majority of the customers (50%) fall between the age of 35 - 52.

### Income

<img width="368" alt="image" src="https://user-images.githubusercontent.com/50318272/211235746-202531cc-a141-4a22-8351-f7545e8b02fa.png">

- Binomial distribution
- Most of the customer's incomes are around $30,000 and $60,000.

