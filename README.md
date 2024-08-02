
# Cancer Survival Analysis: Impact of Stages, Sites, and Treatment Regimes

## Project Overview

This project conducts a comprehensive analysis of cancer survival rates using the Simulacrum dataset, a synthetic dataset mimicking the Cancer Registration data in England. It aims to provide insights for oncologists, medical researchers, and health policy makers through various analytical approaches.

### What Was Done

- **Data Preprocessing**: Handled missing values, standardized formats, and prepared the dataset for analysis.
- **Exploratory Data Analysis (EDA)**: Investigated patterns in cancer site distribution, demographic factors, and their relation to survival rates.
- **Survival Analysis**: Performed Kaplan-Meier analysis to estimate survival probabilities for different cancer stages and treatment regimens.
- **Statistical Testing**: Conducted log-rank tests to compare survival curves between different cancer stages.
- **Visualization**: Created various plots and heatmaps to illustrate findings and patterns in the data.

### Key Findings

- Breast cancer (C509) is the most prevalent cancer site in the dataset, followed by prostate cancer (C619).
- Most cancers occur more frequently in older age groups (41-60, 61-80, 81+).
- Early-stage cancers generally show higher survival probabilities compared to advanced stages.
- Significant differences in survival rates exist between most pairs of cancer stages.
- Treatment regimens show varying patterns of survival probability over time.

## Skills Demonstrated

- Data Cleaning and Preprocessing
- Exploratory Data Analysis (EDA)
- Data Visualization (Matplotlib, Seaborn)
- Survival Analysis (Kaplan-Meier Estimator)
- Statistical Analysis (Log-rank Test)
- Heatmap Generation

## Dataset

### Description

The analysis in this study is based on the Simulacrum dataset, a synthetic dataset created by the National Disease Registration Service (NDRS) to mimic the structure and statistical properties of the original Cancer Registration data while preserving patient confidentiality.

You can download the Simulacrum data at [Simulacrum Data Download](https://simulacrum.healthdatainsight.org.uk/).

### Dataset Linkage Diagram

The Simulacrum dataset consists of several interconnected tables, as illustrated in the dataset linkage diagram below. This dataset establishes a relationship between the Cancer Outcomes & Services Dataset (COSD) and the Systemic Anti-Cancer Therapy (SACT) data. These tables are crucial for understanding patient treatments, outcomes, and other vital information.

![Dataset Linkage Diagram](https://github.com/user-attachments/assets/b450b4d0-796d-4930-9f4e-7810313a730b)

### Main Tables

1. **SIM AV PATIENT**: Contains demographic information about patients, including their NHS number, sex, ethnicity, and vital status details.
2. **SIM AV TUMOUR**: Provides details about each tumor, such as the cancer site, cancer stage, grade, and date of first surgery.
3. **SIM SACT PATIENT**: Links patient information from the SIM AV PATIENT table to the Systemic Anti-Cancer Therapy (SACT) data.
4. **SIM SACT TUMOUR**: Contains information about the primary diagnosis and morphology (cancer type) related to the SACT data.
5. **SIM SACT REGIMEN**: Provides details about the treatment regimens, including the regimen start date, intent of treatment, and a benchmark group for analysis.
6. **SIM SACT CYCLE**: Contains information about the treatment cycles, such as the cycle number and the start date of each cycle.
7. **SIM SACT DRUG DETAIL**: Provides detailed information about the drugs administered during each treatment cycle, including the drug name, dose, and administration route.

### Key Attributes

| Attribute Name     | Description                        | Data Type | Example Value |
|--------------------|------------------------------------|-----------|---------------|
| `AGE`              | Age of the patient                 | Integer   | 65            |
| `SEX`              | Sex of the patient                 | String    | Male          |
| `ETHNICITY`        | Ethnicity of the patient           | String    | White         |
| `SITE_ICD10_O2`    | Cancer site code                   | String    | C509          |
| `STAGE_BEST`       | Best estimate of cancer stage      | String    | Stage II      |
| `NEWVITALSTATUS`   | Vital status of the patient        | String    | Alive         |
| `VITALSTATUSDATE`  | Date of vital status               | Date      | 2023-05-01    |

The key variables used in the analysis include patient demographics (age, sex, ethnicity, geographical region), tumor characteristics (cancer site, cancer stage, tumor grade), treatment information (regimen details, start dates, drug details), and survival information (vital status and date of vital status).

Here's the revised section with main findings highlighted in bold and descriptions kept short and pointwise:

## Visualization

### 1. Distribution of Cancer Sites

<div align="center">
    <img width="509" alt="Distribution of Top 10 Cancer Sites" src="https://github.com/user-attachments/assets/6d132d20-6b14-4110-b36a-ee291208dd8d">
    <p><strong>Distribution of Top 10 Cancer Sites</strong></p>
</div>

- **Top cancer site:** C509 (Breast cancer).
- **Second most common:** C619 (Prostate cancer).
- **Purpose:** Identifies the most prevalent cancer sites for further analysis or targeted interventions.

### 2. Cancer Sites by Age Group

<div align="center">
    <img width="509" alt="Cancer Sites by Age Group (Top 10)" src="https://github.com/user-attachments/assets/24e13682-144c-4c5b-a883-59e3793e39c2">
    <p><strong>Cancer Sites by Age Group (Top 10)</strong></p>
</div>

- **Older age groups (61-80, 81+):** Higher cancer prevalence.
- **Notable types:** C61 (Prostate), C449 (Rectal) concentrated in 61-80 age group.
- **Purpose:** Reveals age-related patterns or associations with cancer sites.

### 3. Cancer Sites by Sex

<div align="center">
    <img width="509" alt="Cancer Sites by Sex" src="https://github.com/user-attachments/assets/e490a1c9-c0eb-4d52-8912-79fcfafbf583">
    <p><strong>Cancer Sites by Sex</strong></p>
</div>

- **Females:** Higher prevalence of C509 (Breast cancer).
- **Males:** Exclusive occurrence of C619 (Prostate cancer).
- **Purpose:** Identifies sex-related differences in cancer site prevalence.

### 4. Cancer Sites by Geographical Region

<div align="center">
    <img width="509" alt="Cancer Sites by Geographical Region (Top 10)" src="https://github.com/user-attachments/assets/d459183c-a624-468c-85d5-a2d52ccbe25e">
    <p><strong>Cancer Sites by Geographical Region (Top 10)</strong></p>
</div>

- **Regional variation:** Notable differences in cancer prevalence.
- **Higher cases:** Some regions report much higher totals.
- **Purpose:** Highlights regional patterns or associations in cancer sites.

### 5. Kaplan-Meier Curves for Different Cancer Stages

<div align="center">
    <img width="509" alt="Kaplan-Meier Curves for Different Cancer Stages" src="https://github.com/user-attachments/assets/906d865e-8285-4d30-b605-deed94abeca7">
    <p><strong>Kaplan-Meier Curves for Different Cancer Stages</strong></p>
</div>

- **Early stages (C20, C349):** Higher initial survival and gradual declines.
- **Advanced stages (C900, C509):** Sharper survival drops.
- **Purpose:** Provides insights into survival probabilities based on cancer stage.

### 6. Kaplan-Meier Curves for Different Therapies

<div align="center">
    <img width="525" alt="Kaplan-Meier Curves for Different Therapies" src="https://github.com/user-attachments/assets/d04a3834-0dc5-4582-94ba-2a21fb6e8f3d">
    <p><strong>Kaplan-Meier Curves for Different Therapies</strong></p>
</div>

- **Regimens with steep drops:** Oxaliplatin + de Gramont, FEC 100, Carboplatin + Paclitaxel.
- **Gradual decline:** Capecitabine, Trastuzumab, CHOP R.
- **Sharp early drop:** Capecitabine + Oxaliplatin 21-day regimen.
- **Purpose:** Evaluates treatment efficacy and long-term outcomes.

### 7. Heatmap of P-values

<div align="center">
    <img width="509" alt="Heatmap of P-values" src="https://github.com/user-attachments/assets/0ea8b7c2-6db0-4805-ae11-8dc34bd0f850">
    <p><strong>Heatmap of P-values for Log-rank Tests Between Cancer Stages</strong></p>
</div>

- **Significant differences:** Dark red indicates low p-values (significant differences).
- **Purpose:** Identifies significant survival differences among cancer stages.


## Conclusion

This comprehensive analysis of cancer survival rates using the Simulacrum dataset has revealed several key insights:

1. **Cancer Site Distribution**: Breast and prostate cancers are the most prevalent in the dataset.

2. **Age-related Patterns**: Most cancers occur more frequently in older age groups, particularly 61-80 years old.

3. **Survival Probabilities**: Early-stage cancers generally show higher survival probabilities compared to advanced stages.

4. **Treatment Efficacy**: Different treatment regimens show varying patterns of survival probability over time.

5. **Statistical Significance**: Significant differences in survival rates exist between most pairs of cancer stages.

These findings provide valuable insights for oncologists, medical researchers, and health policy makers, offering data-driven guidance for treatment strategies and resource allocation in cancer care.

## How to Use

To explore and utilize this project:

1. **Clone the Repository**:
   ```
   git clone https://github.com/crishN144/cancer-survival-analysis.git
   cd cancer-survival-analysis
   ```

2. **Set Up the Environment**:
   - It's recommended to use a virtual environment:
     ```
     python -m venv venv
     source venv/bin/activate  # On Windows use `venv\Scripts\activate`
     ```
   - Install required dependencies:
     ```
     pip install -r requirements.txt
     ```

3. **Run the Analysis**:
   - Open Jupyter Notebook:
     ```
     jupyter notebook
     ```
   - Navigate to and open the following notebooks:
     - `EDA.ipynb`
     - `FINALHEATMAP.ipynb`
     - `KAPLANCURVE.ipynb`
     - `KAPLAN CURVE2.ipynb`
   - Run the cells sequentially to reproduce the analysis

4. **Explore the Results**:
   - Examine the generated visualizations and statistical outputs
   - Refer to the markdown cells for explanations and interpretations

5. **Modify and Extend**:
   - Feel free to modify parameters, add new analyses, or apply the techniques to different datasets


## Future Work

1. **Machine Learning Models for Survival Prediction**:
   - Develop and evaluate machine learning algorithms (e.g., Random Survival Forests, Cox Proportional Hazards) to predict survival probabilities and identify key predictors.

2. **Treatment Efficacy and Comparative Analysis**:
   - Analyze the impact of various treatment regimens on survival rates and explore interactions with cancer stages or sites.
   - Compare findings with real-world data to validate the synthetic dataset's reliability.





—------------------


Certainly! I'll rewrite the visualization section for your GitHub README using the format you specified. Here's the revised version:

## Visualizations

### 1. RFM Value Segment Distribution

<div align="center">
    <img width="697" alt="RFM Value Segment Distribution" src="https://github.com/user-attachments/assets/3b1abfd0-72c5-4ebf-8ca0-677a1c5dc9b0">
    <p><strong>Distribution of Customers Across RFM Value Segments</strong></p>
</div>

#### Description:
This bar chart illustrates the distribution of customers across different RFM value segments. The analysis reveals that:

- **Low-Value segment** has the highest number of customers
- **Mid-Value segment** follows closely behind
- **High-Value segment** has the least number of customers

This distribution provides insights into the overall value composition of the customer base.

### 2. RFM Customer Segments by Value

<div align="center">
    <img width="688" alt="RFM Customer Segments by Value" src="https://github.com/user-attachments/assets/e6a74fa9-3589-46ec-914d-e4f99ba63e4d">
    <p><strong>Treemap of RFM Customer Segments Across Value Categories</strong></p>
</div>

#### Description:
This treemap visualizes the distribution of RFM customer segments across different value categories. Key observations include:

- **Low-Value category** is dominated by "At Risk Customers" and "Can't Lose" segments
- **Mid-Value category** is primarily composed of "Potential Loyalists"
- **High-Value category** includes both "Potential Loyalists" and "Champions"

This visualization helps in understanding the composition of each value category and identifying target segments for marketing strategies.

### 3. Correlation Matrix of RFM Values within Champions Segment

<div align="center">
    <img width="713" alt="Correlation Matrix of RFM Values within Champions Segment" src="https://github.com/user-attachments/assets/446b6cf9-5de6-41ee-943a-1a58a269a3d2">
    <p><strong>Heatmap Showing Correlations Between RFM Metrics for Champions</strong></p>
</div>

#### Description:
This heatmap displays the correlation between Recency, Frequency, and Monetary scores within the Champions segment. Notable findings include:

- **Strong positive correlation** between Frequency and Monetary scores
- **Moderate negative correlation** between Recency and both Frequency and Monetary scores

These correlations provide insights into the behavior patterns of high-value customers.

### 4. Comparison of RFM Segments

<div align="center">
    <img width="650" alt="Comparison of RFM Segments" src="https://github.com/user-attachments/assets/afcd321e-5353-4bd8-8c8b-f4b07610e4b7">
    <p><strong>Bar Chart Comparing Customer Counts Across RFM Segments</strong></p>
</div>

#### Description:
This bar chart compares the number of customers in each RFM segment. Key insights include:

- **"Potential Loyalists"** form the largest segment
- **"At Risk Customers"** and **"Can't Lose"** segments have similar sizes
- **"Champions"** represent the smallest segment

This comparison helps in prioritizing marketing efforts and resource allocation across different customer segments.

### 5. Comparison of RFM Segments based on Recency, Frequency, and Monetary Scores

<div align="center">
    <img width="699" alt="Comparison of RFM Segments based on Recency, Frequency, and Monetary Scores" src="https://github.com/user-attachments/assets/83ef9126-c651-4a9b-b308-3f0585a0db46">
    <p><strong>Grouped Bar Chart Showing RFM Scores Across Customer Segments</strong></p>
</div>

#### Description:
This grouped bar chart compares the average Recency, Frequency, and Monetary scores across different RFM segments. Notable observations include:

- **"Champions"** have high scores across all three metrics
- **"Potential Loyalists"** show high Recency but lower Frequency and Monetary scores
- **"Lost"** customers have consistently low scores across all metrics


### 6. RFM Analysis Dashboard

<div align="center">
    <img width="710" alt="RFM Analysis Dashboard" src="https://github.com/user-attachments/assets/14ba1c14-3a70-43ec-9942-15d59d783fd0">
    <p><strong>Interactive RFM Analysis Dashboard</strong></p>
</div>

#### Description:
This image showcases the final interactive RFM Analysis Dashboard created using Dash. The dashboard provides a comprehensive view of customer segmentation based on RFM scores. Key features include:

- **Title and Description**: Clearly labeled "RFM Analysis Dashboard" with a brief explanation of its purpose.
- **Dropdown Menu**: Allows users to select different chart types to visualize various aspects of the RFM analysis.
- **Interactive Graph Area**: Displays the selected chart, enabling exploration of different visualizations of the RFM data.
- **Chart Options**: Includes various chart types such as:
  - RFM Value Segment Distribution
  - Distribution of RFM Values within Customer Segment
  - Correlation Matrix of RFM Values within Champions Segment
  - Comparison of RFM Segments
  - Comparison of RFM Segments based on Scores

This interactive dashboard enables users to **dynamically explore and analyze customer segments** based on their RFM scores, providing valuable insights for marketing strategies and customer relationship management.

\


=============


RFM Value Segment Distribution
<img width="697" alt="Screenshot 2024-08-02 at 6 00 36 AM" src="https://github.com/user-attachments/assets/3b1abfd0-72c5-4ebf-8ca0-677a1c5dc9b0">

RFM Customer Segments by Value
<img width="688" alt="Screenshot 2024-08-02 at 6 00 49 AM" src="https://github.com/user-attachments/assets/e6a74fa9-3589-46ec-914d-e4f99ba63e4d">

Correlation Matrix of RFM Values within Champions Segment
<img width="713" alt="Screenshot 2024-08-02 at 6 00 56 AM" src="https://github.com/user-attachments/assets/446b6cf9-5de6-41ee-943a-1a58a269a3d2">

Comparison of RFM Segments
<img width="650" alt="Screenshot 2024-08-02 at 6 16 23 AM" src="https://github.com/user-attachments/assets/afcd321e-5353-4bd8-8c8b-f4b07610e4b7">

Comparison of RFM Segments based on Recency, Frequency, and Monetary Scores
<img width="699" alt="Screenshot 2024-08-02 at 6 00 18 AM" src="https://github.com/user-attachments/assets/83ef9126-c651-4a9b-b308-3f0585a0db46">

<img width="710" alt="Screenshot 2024-08-02 at 7 44 04 AM" src="https://github.com/user-attachments/assets/14ba1c14-3a70-43ec-9942-15d59d783fd0">

—-----------------
—-----------------

Edit visualisations with these links : Comparison of Key Metrics Between Control and Test Campaigns
![3](https://github.com/user-attachments/assets/9165b144-6421-4a1e-b282-7e5eb4b6a5dd)

Scatter Plots Analyzing Relationships Between Different Metrics.
![4](https://github.com/user-attachments/assets/7d0cf451-30c3-43c6-b4f8-ad1d482afba8)



# A/B Testing Analysis: Marketing Campaign Comparison

## Project Overview

This project conducts a comprehensive A/B testing analysis to compare two marketing campaigns: Control Campaign and Test Campaign. The objective is to identify the most effective marketing strategy by analyzing various metrics such as impressions, website clicks, content views, add-to-cart actions, and purchases.

### What Was Done

- **Data Cleaning and Preprocessing**: Handled missing values, standardized formats, and prepared the datasets for analysis.
- **Exploratory Data Analysis (EDA)**: Investigated patterns in campaign performance across various metrics.
- **Statistical Analysis**: Compared key performance indicators between the Control and Test campaigns.
- **Data Visualization**: Created various charts and graphs to illustrate campaign performance differences.
- **Conversion Funnel Analysis**: Examined the effectiveness of each campaign at different stages of the customer journey.

### Key Findings

- The Control Campaign generated more impressions per amount spent compared to the Test Campaign.
- The Test Campaign resulted in more website clicks and searches.
- The Control Campaign had higher engagement in terms of content views per click.
- The Test Campaign showed a higher conversion rate from add-to-cart to purchases.
- Overall, the Control Campaign resulted in slightly more purchases, but the Test Campaign was more efficient in some conversion metrics.

## Skills Demonstrated

- Data Cleaning and Preprocessing
- Exploratory Data Analysis (EDA)
- Data Visualization (Plotly)
- Statistical Analysis
- A/B Testing Methodology
- Python Programming
- Jupyter Notebook

## Dataset

### Description

The dataset contains information about two marketing campaigns: Control Campaign and Test Campaign. It includes daily metrics for each campaign over a period of time.

### Key Attributes

| Attribute Name | Description | Data Type | Example Value |
|----------------|-------------|-----------|---------------|
| Campaign Name | Name of the campaign | String | Control Campaign |
| Date | Date of the campaign | Date | 1.08.2019 |
| Amount Spent | Amount spent on the campaign (in USD) | Float | 2280.0 |
| Number of Impressions | Number of impressions | Float | 82702.0 |
| Reach | Reach of the campaign | Float | 56930.0 |
| Website Clicks | Number of website clicks | Float | 7016.0 |
| Searches Received | Number of searches | Float | 2290.0 |
| Content Viewed | Number of content views | Float | 2159.0 |
| Added to Cart | Number of add-to-cart actions | Float | 1819.0 |
| Purchases | Number of purchases | Float | 618.0 |

## Visualizations

### 1. Campaign Performance Overview

<div align="center">
<img width="800" alt="Campaign Performance Overview" src="https://github.com/crishN144/AB_Testing_Analysis/raw/main/Screenshot%202024-08-02%20at%2010.37.56%20AM.png">
<p><strong>Comparison of Key Metrics Between Control and Test Campaigns</strong></p>
</div>

#### Description:
This image contains six pie charts comparing various metrics between the Control and Test campaigns:

1. Purchases: The Control Campaign (51.7%) slightly outperformed the Test Campaign (48.3%) in total purchases.
2. Added to Cart: The Test Campaign (59.8%) had more add-to-cart actions compared to the Control Campaign (40.2%).
3. Amount Spent: The Test Campaign (52.8%) spent slightly more than the Control Campaign (47.2%).
4. Searches: The Test Campaign (52.2%) generated more searches than the Control Campaign (47.8%).
5. Website Clicks: The Test Campaign (53.2%) received more website clicks than the Control Campaign (46.8%).
6. Content Viewed: The Control Campaign (51.1%) had slightly more content views than the Test Campaign (48.9%).

These charts provide a quick overview of how each campaign performed across different stages of the customer journey.

### 2. Relationship Analysis

<div align="center">
<img width="800" alt="Relationship Analysis" src="https://github.com/crishN144/AB_Testing_Analysis/raw/main/Screenshot%202024-08-02%20at%2010.38.04%20AM.png">
<p><strong>Scatter Plots Analyzing Relationships Between Different Metrics</strong></p>
</div>

#### Description:
This image contains four scatter plots analyzing relationships between different metrics for both campaigns:

1. Purchases vs. Added to Cart: Shows a positive correlation between items added to cart and purchases for both campaigns, with the Test Campaign having a steeper trend line.
2. Content Viewed vs. Added to Cart: Illustrates the relationship between content views and add-to-cart actions, with the Test Campaign showing a slightly higher trend.
3. Website Clicks vs. Content Viewed: Demonstrates how website clicks relate to content views, with the Control Campaign showing a steeper increase.
4. Amount Spent vs. Number of Impressions: Compares the efficiency of spend in generating impressions, with the Control Campaign showing better performance.

These plots help in understanding the effectiveness of each campaign at different stages of the customer journey and the efficiency of spend.

## Conclusion

The A/B testing analysis revealed strengths and weaknesses in both campaigns:

1. The Control Campaign was more efficient in generating impressions and engaging users with content.
2. The Test Campaign was more effective in driving website clicks and searches.
3. While the Control Campaign led to slightly more overall purchases, the Test Campaign showed a higher conversion rate from add-to-cart to purchase.

A hybrid approach leveraging the strengths of both campaigns could be most effective for future marketing efforts.

## How to Use

To explore and utilize this project:

1. **Clone the Repository**:
   ```
   git clone https://github.com/crishN144/AB_Testing_Analysis.git
   cd AB_Testing_Analysis
   ```

2. **Set Up the Environment**:
   - It's recommended to use a virtual environment:
     ```
     python -m venv venv
     source venv/bin/activate  # On Windows use `venv\Scripts\activate`
     ```
   - Install required dependencies:
     ```
     pip install -r requirements.txt
     ```

3. **Run the Analysis**:
   - Open Jupyter Notebook:
     ```
     jupyter notebook
     ```
   - Navigate to and open `Marketing_Campaign_Comparison.ipynb`
   - Run the cells sequentially to reproduce the analysis

4. **Explore the Results**:
   - Examine the visualizations and insights generated in the notebook
   - Modify parameters or add new analyses as needed

## Future Work

To further enhance this project, the following future works are proposed:

1. **Time Series Analysis**: Analyze how campaign performance changes over time to identify trends or seasonality.
2. **Customer Segmentation**: Investigate if certain customer segments respond differently to each campaign.
3. **Cost-Benefit Analysis**: Conduct a detailed analysis of the return on investment for each campaign.
4. **Multi-variate Testing**: Expand the analysis to test multiple variables simultaneously in future campaigns.
5. **Machine Learning Models**: Develop predictive models to forecast campaign performance based on various input parameters.



====================
===================


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


1. **Robot_Specs.xlsx**:

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
   - Ensure you have R installed on your system
   - Install required R packages:
     ```R
     install.packages(c("ggplot2", "dplyr", "goalp"))
     ```

3. **Run the Analysis**:
   - Open `BADS.R` in your preferred R environment
   - Run the script to reproduce the analysis

4. **Explore the Data**:
   - The `Robot Shipment.xlsx` file contains the raw data used in the analysis

## Future Work

Potential areas for future development include:

- Incorporating real-time data for dynamic robot allocation
- Expanding the analysis to include more diverse geographic regions
- Developing a predictive model for estimating optimal robot fleet size based on projected demand


