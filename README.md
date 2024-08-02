# Autonomous Delivery System Analysis

## Project Overview

This project analyzes data related to autonomous delivery robots to optimize their deployment and performance. It aims to provide insights for logistics companies and researchers through various analytical approaches.

### What Was Done

- **Data Cleaning and Preprocessing**: Prepared the dataset for analysis, handling any inconsistencies or missing values.
- **Exploratory Data Analysis (EDA)**: Investigated patterns in robot performance metrics such as carrying capacity, battery size, speed, cost, and reliability.
- **Multi-Criteria Decision Analysis (MCDA)**: Implemented a scoring system to identify the optimal robot prototype for trials.
- **Optimization Analysis**: Developed a model to optimize robot allocation across different store types.

### Key Findings

- The Deviant robot prototype emerged as the optimal choice for trials based on overall performance metrics.
- Grocery stores benefit most from a higher allocation of robots due to their higher daily order volumes.
- Voucher effectiveness significantly impacts customer spending, suggesting a promising marketing strategy.

## Skills Demonstrated

- Data Cleaning and Preprocessing
- Exploratory Data Analysis (EDA)
- Data Visualization (ggplot2 in R)
- Statistical Analysis
- Multi-Criteria Decision Analysis (MCDA)
- Linear Optimization (using goalp package in R)



## Dataset


1. **Robot_Specs.csv**:

   This file includes details about various autonomous robot models and their performance characteristics.

   **Key Attributes:**
   - `Robot_Prototype`: Name of the robot model
   - `Carrying Capacity`: Maximum weight the robot can handle
   - `Battery Size`: Capacity of the robot’s battery
   - `Average Speed`: Robot's average speed
   - `Cost Per Unit`: Price per robot unit
   - `Reliability`: Reliability score of the robot

   **Example Entries:**
   | Robot_Prototype | Carrying Capacity | Battery Size | Average Speed | Cost Per Unit | Reliability |
   |-----------------|-------------------|--------------|---------------|---------------|-------------|
   | Archer          | 45                | 18           | 6             | 5210          | 22          |
   | Bowler          | 50                | 18           | 4             | 6250          | 24          |
   | Corner          | 60                | 12           | 4             | 4500          | 24          |
   | Deviant         | 40                | 24           | 10            | 7100          | 32          |

2. **Priority_Settings.xlsx**:

   This document outlines the significance of various criteria as determined by the management team.

   **Key Attributes:**
   - `Criteria`: The performance factor being assessed
   - `Importance`: The weight or priority assigned to each criterion

   **Overview:**
   - `Carrying Capacity`: Least prioritized
   - `Battery Size`: Moderately important
   - `Average Speed`: More significant than carrying capacity
   - `Cost per Unit`: High priority
   - `Reliability`: Top priority

3. **Customer_Transactions.csv**:

   This dataset captures customer purchase data and demographic information.

   **Key Attributes:**
   - `Estimated_Age`: Customer's age
   - `Time_On_Site`: Duration spent on the website (in minutes)
   - `Seen_Voucher`: Whether a voucher was seen (0 or 1)
   - `Estimated_Income`: Customer’s income
   - `Advertisement_Channel`: Channel through which the customer was reached
   - `Revenue`: Revenue generated from the customer

   **Example Entries:**
   | Estimated_Age | Time_On_Site | Seen_Voucher | Estimated_Income | Advertisement_Channel | Revenue |
   |---------------|--------------|--------------|-------------------|------------------------|---------|
   | 79            | 32           | 1            | 178               | 3                      | 26540   |
   | 115           | 17           | 0            | 143               | 1                      | 25367   |
   | 85            | 15           | 0            | 164               | 1                      | 21010   |
   | 33            | 13           | 1            | 183               | 2                      | 22438   |
   | 90            | 31           | 1            | 184               | 1                      | 21324   |

These datasets collectively offer a comprehensive view of the autonomous delivery project, including robot specifications, management priorities, and customer behavior insights, enabling thorough analysis and decision-making.


## Visualizations

### 1. Aggregate Performance Index for Prototype Robots

<div align="center">
    <img width="501" alt="Aggregate Performance Index for Prototype Robots" src="https://github.com/user-attachments/assets/0f65bc16-72d5-4b29-b51f-d7fc93ff6af8">
    <p><strong>Figure 1: Comparison of Overall Performance Scores Across Robot Prototypes</strong></p>
</div>

#### Description:
This bar chart illustrates the aggregate performance index for each robot prototype, combining various performance metrics into a single score. The x-axis represents different robot prototypes, while the y-axis shows their respective performance scores.

**Key Finding**: The **Deviant prototype significantly outperforms other models**, with a performance index of approximately 0.3, suggesting it may be the most suitable choice for the autonomous delivery trial.

### 2. Revenue Analysis by Customer Demographics and Voucher Usage

<div align="center">
    <img width="600" alt="Revenue vs. Estimated Age and Income with Seen Voucher Data" src="https://github.com/user-attachments/assets/66f66477-b7d1-4294-a99d-8f2b449a40ff">
    <p><strong>Figure 2: Impact of Age, Income, and Voucher Usage on Revenue</strong></p>
</div>

#### Description:
These scatter plots demonstrate the relationships between revenue and customer demographics (age and income), with points colored to indicate voucher usage. The top plot shows revenue vs. estimated age, while the bottom plot displays revenue vs. estimated income.

**Key Findings**: 
- There is a **strong positive correlation between estimated income and revenue**.
- **Voucher usage (indicated by darker points) appears to be associated with higher revenue across both age and income ranges**.
- Age shows a **weak relationship with revenue**, suggesting it may not be a significant factor in spending patterns.

### 3. Correlation Analysis of Key Variables

<div align="center">
    <img width="500" alt="Coefficient Matrix Heatmap" src="https://github.com/user-attachments/assets/0ea1b748-dc5d-4de5-b1df-86195b1307a6">
    <p><strong>Figure 3: Heatmap of Correlation Coefficients Between Key Variables</strong></p>
</div>

#### Description:
This heatmap visualizes the correlation coefficients between various factors affecting revenue. Darker colors indicate stronger correlations, with blue representing positive correlations and red representing negative correlations.

**Key Findings**:
- **Estimated income shows the strongest positive correlation with revenue** (0.53), indicating it's a crucial factor in customer spending.
- **Seen voucher also has a strong positive correlation with revenue** (0.47), suggesting the effectiveness of voucher campaigns.
- **Time on site and estimated age have negligible correlations with revenue**, implying they may not be significant factors in determining customer spending.

### 4. Revenue Distribution Across Advertisement Channels

<div align="center">
    <img width="500" alt="Revenue by Advertisement Channel Box Plot" src="https://github.com/user-attachments/assets/a6c63d50-a11d-4a65-aaad-e24c107e9b72">
    <p><strong>Figure 4: Box Plot Analysis of Revenue Distribution by Advertisement Channel</strong></p>
</div>

#### Description:
This box plot illustrates the distribution of revenue across different advertisement channels. Each box represents a channel, showing the median, quartiles, and potential outliers in revenue.

**Key Findings**:
- **Channel 4 shows the highest median revenue** and a wide range of values, suggesting it might be the most effective but also variable channel.
- **Channels 1 and 2 have similar median revenues** but different distributions, with Channel 1 showing more outliers on the higher end.
- **Channel 3 has the lowest median revenue** but also the smallest range, indicating consistent but lower performance.

These visualizations provide crucial insights into robot performance, customer behavior, and marketing effectiveness, guiding decision-making in the autonomous delivery system project.


## Conclusion

This analysis provides valuable insights for optimizing autonomous delivery systems. Key takeaways include the identification of the most suitable robot prototype for trials and strategies for efficient robot allocation across different store types.


## How to Use

To explore and utilize this project:

1. **Clone the Repository**:
   ```
   git clone https://github.com/crishN144/Autonomous-Delivery-System.git
   cd Autonomous-Delivery-System
   ```

2. **Set Up the Environment**:
   - Ensure you have R installed on your system.
   - Install required R packages:
     ```R
     install.packages(c("ggplot2", "dplyr", "goalp"))
     ```

3. **Run the Analysis**:
   - Open `BADS.R` in your preferred R environment.
   - Run the script to reproduce the analysis.

4. **Explore the Data**:
   - The dataset includes the following files:
     - `Robot_Specs.xlsx`: Contains robot prototype performance metrics.
     - `Priority_Settings.xlsx`: Details the importance of various criteria.
     - `Customer_Transactions.csv`: Captures customer transaction data and demographics.

   - The `Robot_Specs.xlsx` file contains details on robot specifications.
   - The `Priority_Settings.xlsx` file outlines management priorities.
   - The `Customer_Transactions.csv` file includes customer behavior data.

## Future Work

Potential areas for future development include:

- Incorporating real-time data for dynamic robot allocation
- Expanding the analysis to include more diverse geographic regions
- Developing a predictive model for estimating optimal robot fleet size based on projected demand

