# E-Commerce Recommendation & Conversion Analysis

## Project Overview

This project analyzes customer behavior, conversion drivers, engagement patterns, and recommendation system performance within an e-commerce environment.

Using SQL, Python, and Power BI, the project aims to identify the factors that influence purchasing decisions and evaluate how recommendation quality contributes to business performance.

### Business Questions

- What factors drive customer conversion?
- Which user segments generate the highest purchase rates?
- What behavioral signals indicate strong purchase intent?
- How effective is the recommendation system?
- Where are the major conversion bottlenecks in the customer journey?

---

## Dataset Overview

The dataset contains user-level, product-level, behavioral, and recommendation-system features.

### User Features

- user_id
- age_group
- gender
- membership_level
- user_activity_score
- user_loyalty_score
- average_order_value
- past_purchase_count

### Product Features

- item_id
- item_category
- brand_tier
- item_price
- discount_percentage
- item_popularity_score
- item_quality_score

### Behavioral Features

- click_count
- view_duration_sec
- cart_add_count
- wishlist_flag
- engagement_score
- purchase_flag

### Recommendation Features

- final_recommendation_score
- user_item_affinity_score
- candidate_rank
- ranking_stability_score
- recommendation_action

---

## Tools & Technologies

### SQL

Used for:

- Data exploration
- Data cleaning
- KPI calculation
- User segmentation
- Conversion analysis

### Python

Libraries:

- Pandas
- NumPy
- Matplotlib
- Seaborn

Used for:

- Data preprocessing
- Exploratory Data Analysis (EDA)
- Statistical validation
- Feature analysis

### Power BI

Used for:

- Dashboard development
- KPI monitoring
- Business storytelling
- Insight communication

---

## Project Workflow

```text
SQL Analysis
    ↓
Python EDA
    ↓
Dashboard Development
    ↓
Business Insights
    ↓
Business Recommendations
```

---

## Dashboard Overview

### Dashboard 1 — Executive Overview

**Purpose**

- Monitor overall platform performance
- Understand customer composition
- Identify conversion bottlenecks

**Key Components**

- KPI Cards
- Membership Distribution
- Conversion by Time of Day
- User Funnel Analysis

---

### Dashboard 2 — Conversion Analysis

**Purpose**

Identify the primary drivers of customer conversion.

**Key Components**

- Conversion by Loyalty Level
- Conversion by Membership Level
- Conversion by Engagement Level
- Conversion by Recommendation Level
- Conversion by Activity Level

---

### Dashboard 3 — Engagement Analysis

**Purpose**

Understand behavioral signals associated with purchase intent.

**Key Components**

- Cart Activity vs Conversion
- Wishlist Behavior vs Conversion
- View Duration vs Conversion
- Engagement Level vs Conversion
- Behavioral Funnel Analysis

---

### Dashboard 4 — Recommendation System Performance

**Purpose**

Evaluate recommendation effectiveness and ranking quality.

**Key Components**

- Recommendation Score vs Conversion
- Candidate Rank vs Purchase Probability
- Affinity Score vs Conversion
- Ranking Stability vs Conversion
- Recommendation Action Effectiveness

---

## Dashboard Screenshots

### Dashboard 1 — Executive Overview

![Executive Overview](images/executive_overview.png)

### Dashboard 2 — Conversion Analysis

![Conversion Analysis](images/conversion_analysis.png)

### Dashboard 3 — Engagement Analysis

![Engagement Analysis](images/engagement_analysis.png)

### Dashboard 4 — Recommendation System Performance

![Recommendation System Performance](images/recommendation_system_performance.png)

---

## Key Findings

### Executive Overview

- The platform achieved an overall conversion rate of approximately 37% across more than 3.1 million users.
- Basic members account for the largest share of the customer base (35.36%).
- User activity and conversion performance peak during the evening period.
- The largest funnel drop-off occurs between the Cart and Purchase stages.

### Conversion Analysis

- Customer loyalty is one of the strongest drivers of conversion.
- High-loyalty users achieve conversion rates exceeding 55%.
- High-engagement users consistently outperform low-engagement users.
- Users exposed to high recommendation scores achieve conversion rates approaching 73%.
- Basic members unexpectedly outperform premium membership tiers in conversion performance.

### Engagement Analysis

- Cart activity is the strongest behavioral predictor of purchase intent.
- High-cart users achieve conversion rates approaching 70%.
- Wishlist users account for more than 76% of successful purchases.
- Longer product-view durations are associated with stronger conversion performance.
- The largest behavioral bottleneck remains between Cart and Purchase stages.

### Recommendation System Performance

- High recommendation scores generate conversion rates above 70%.
- Top-ranked recommendations contribute the largest share of conversions.
- High-affinity users significantly outperform low-affinity users.
- Ranking stability strongly influences recommendation effectiveness.
- The Strongly Recommend strategy delivers the highest conversion performance.

---

## Business Recommendations

### 1. Strengthen Customer Retention Programs

High-loyalty users consistently demonstrate superior conversion performance.

**Recommended Actions**

- Expand loyalty reward programs.
- Deliver personalized retention campaigns.
- Introduce exclusive benefits for repeat customers.
- Increase customer lifetime value initiatives.

**Expected Impact**

- Higher repeat purchase rates.
- Improved customer retention.
- Increased customer lifetime value.

---

### 2. Optimize Cart Recovery Strategy

The largest conversion loss occurs between the Cart and Purchase stages.

**Recommended Actions**

- Deploy abandoned-cart email campaigns.
- Implement push notification reminders.
- Offer checkout incentives.
- Simplify the checkout process.

**Expected Impact**

- Reduced cart abandonment.
- Increased completed purchases.
- Higher overall revenue.

---

### 3. Enhance Recommendation Ranking Models

Recommendation quality has a direct impact on conversion outcomes.

**Recommended Actions**

- Prioritize high-confidence recommendations.
- Improve ranking algorithms.
- Increase visibility of top-ranked products.
- Continuously monitor recommendation performance.

**Expected Impact**

- Higher recommendation relevance.
- Improved conversion rates.
- Increased recommendation-driven revenue.

---

### 4. Expand Personalization Capabilities

Users with high affinity scores demonstrate significantly stronger purchasing behavior.

**Recommended Actions**

- Improve user-item matching algorithms.
- Utilize behavioral signals more effectively.
- Increase recommendation personalization coverage.

**Expected Impact**

- Better customer experience.
- Higher engagement.
- Improved conversion performance.

---

### 5. Reevaluate Premium Membership Benefits

Premium membership tiers currently underperform Basic members in conversion performance.

**Recommended Actions**

- Review membership value propositions.
- Introduce exclusive premium-tier incentives.
- Develop membership upgrade campaigns.
- Improve premium customer experience.

**Expected Impact**

- Higher premium-tier engagement.
- Increased premium conversion rates.
- Greater monetization opportunities.

---

### 6. Focus Marketing Activities During Peak Hours

Conversion activity peaks during evening periods.

**Recommended Actions**

- Schedule promotional campaigns during peak engagement windows.
- Deliver personalized recommendations during evening hours.
- Optimize marketing budgets around high-conversion periods.

**Expected Impact**

- Improved campaign efficiency.
- Higher conversion rates.
- Better marketing ROI.

---

## Project Structure

```text
ecommerce-recommendation-conversion-analysis/
│
├── data/
├── sql/
├── notebooks/
├── dashboard/
│   ├── dashboard_insights.md
│   ├── Dashboard_1_Executive_Overview.png
│   ├── Dashboard_2_Conversion_Analysis.png
│   ├── Dashboard_3_Engagement_Analysis.png
│   └── Dashboard_4_Recommendation_System_Performance.png
│
├── images/
├── README.md
```

---

## Conclusion

This project demonstrates that customer loyalty, engagement behavior, and recommendation quality are the primary drivers of conversion performance within the analyzed e-commerce environment.

The analysis further reveals that cart activity serves as the strongest behavioral indicator of purchase intent, while recommendation ranking quality and personalization significantly influence customer decision-making.

By strengthening retention initiatives, reducing checkout friction, and continuously optimizing recommendation algorithms, the platform can improve conversion performance, enhance customer experience, and drive sustainable revenue growth.

---

## Author

**Nguyen Bao Nguyen**
