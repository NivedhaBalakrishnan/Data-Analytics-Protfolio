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
<img width="362" alt="image" src="https://user-images.githubusercontent.com/50318272/211241817-c69b32d5-9cbc-426c-b46f-a965372e8193.png">

- Right Skewed normal distribution denotes that the most of the customers are young.
- Majority of the customers (50%) fall between the age of 35 - 52.
- People below 50 are more likely to buy a bike.

### Income
<img width="365" alt="image" src="https://user-images.githubusercontent.com/50318272/211241845-363effaf-f092-44d7-9499-fda0d1f16076.png">

- Binomial distribution
- Most of the customer's incomes are around $30,000 and $60,000.
- People who bought the bike are more likely to have an income above $40,000.

### Cars
<img width="407" alt="image" src="https://user-images.githubusercontent.com/50318272/211244911-e1f52952-d60d-4953-846d-fccdbb15813d.png">

- Most of the customers had 2 cars.
- Customers with fewer number of cars tends to purchase the bike.

### Children
<img width="480" alt="image" src="https://user-images.githubusercontent.com/50318272/211245912-3233ef7b-0fd9-47f5-ad57-b4284fed1679.png">

- People with no or one child scored a higher percentage in purchasing the bike compared to others.
- The least ones are people with more children.

### Marital Status
<img width="355" alt="image" src="https://user-images.githubusercontent.com/50318272/211247987-782374d1-59e9-4696-a9fd-25935215db03.png">

- Though, the number of married customers are higher than the single customers, single customers are more interested in buying bikes.

### Education
<img width="522" alt="image" src="https://user-images.githubusercontent.com/50318272/211249640-5a93dd8b-ff24-485c-a3c9-aef1db2cd78a.png">

- More than 50% of people who hava bachelor's or graduate degrees bought a bike.

### Occupation
<img width="521" alt="image" src="https://user-images.githubusercontent.com/50318272/211250296-18668b0e-fdbb-4f23-8b0e-5e160150b4e9.png">

- Customers who are professionals bought more bikes compared to others. 
- Customers who are in Management and Manual work have the least percentage.

### Region
<img width="521" alt="image" src="https://user-images.githubusercontent.com/50318272/211250409-0775c5c4-ac75-446f-9851-ac33b62ce8a7.png">

- Though North Americans customers are higher, they have less percentage of purchase compared to the customers from other regions.

### Commute Distance
<img width="521" alt="image" src="https://user-images.githubusercontent.com/50318272/211250480-2122bff2-774b-4cac-ba59-ac3d70545d6f.png">

- Customers who have less commute distance are more interested in purchasing the bike.

## Interesting Insights
<img width="409" alt="image" src="https://user-images.githubusercontent.com/50318272/211251657-ba9c11ad-00ff-4027-a249-dd058faa3cbf.png">

- More customers are interested to buy bikes between the ages of 30-50 regardless of their occupation.
- Customers with occupation in Management are mostly more than 50 years of age, so they are less likely to purchase the bike.
- Income of customers with clerical and manual occupation is less and that could be a factor affecting their decision in buying a bike.
- On the other hand, customers with jobs as skilled manual and professionals have pretty good income comparatively and they are more likely to buy a bike.

## Conclusion

The descriptive analysis of the Bike Purchasing dataset has provided useful insight that could help the company to understand their customers and to build strategy accordingly to improve their sales. The features that have a significant impact on their sales are:
- Commute Distance
- Number of Children
- Number of Cars
- Age

The features that have a moderate impact are:
- Education
- Occupation
- Marital Status
- Region

The features that have no or less impact are:
- Gender
- Home Owners
- Income

These insights will help the company to make good decisions regarding their product and business strategy.
