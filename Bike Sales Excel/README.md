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
- Removed duplicate rows
- Transformed data in 'Marital Status', 'Income', 'Gender' columns to readable format
- Converted numerical column 'Age' to categorical columns consists of 3 categories 'Adults', 'Middle Aged', 'Old Adults'

## Dashboard
Created pivot table, performed analysis, and created visualization and drawn useful insights from the data with respect to bike purchasing. Interactive dasboards are created to display useful insights from the data.

Dashboard 1:

<img width="390" alt="image" src="https://user-images.githubusercontent.com/50318272/211112553-0b405b7b-cd6e-4565-bc47-713cc70f40e1.png">

Dashboard 2:

<img width="391" alt="image" src="https://user-images.githubusercontent.com/50318272/211112583-1c3365e4-5548-4925-9179-b8fe4c6973dd.png">

## Useful Insights
- Irrespective to the gender, customers with high average income tends to purchase bike compared to the customers with low average income.
- Customer whose commute distance is less than or equal to 5 miles purchased more bikes compared to the people whose commute distance is more.
- Middle aged customers purchased more bikes compared to the customers belonging to other categories.
- In the middle aged group, customer who owns house purchased more bikes compared to the customer who doesn't own a house.
- Customers from North America purchased more bikes compared to the customers from other region.
- In North America, Male customers bought more bikes compared to the female customers.
- On the other hand, female customers bought more bikes in Pacific and Europe region.
- Customers who got didn't complete a degree got more bikes compared to the ones who got degree.
- Singles with no children bought more bikes compared to the Married customers with no children.
- However, among the customers who have chidren, Married customers got more bikes compared to the single parents.

## Important features to concentrate to Increase the bike purchase specified in increasing order
- Region
- Age
- Marital Status
- Gender
- Children
- Commute distance
