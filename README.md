This project focuses on performing comprehensive analytics and investigations on various operational metrics using SQL queries. By analyzing the provided dataset, this project aims to gain insights into user behavior, engagement, language distribution, growth patterns, email engagement, and more. These insights are essential for making informed business decisions, optimizing user experiences, and identifying areas for improvement.

Table of Contents
Description
Tasks and Insights
Requirements
Usage
Contributing
Description
The primary goal of this project is to provide meaningful insights from a real-world dataset using SQL queries. The dataset includes various operational metrics, such as user engagement, language distribution, email engagement, user growth, and more. These metrics are crucial for understanding user behavior, improving product offerings, and optimizing business strategies.

Tasks and Insights
The project includes several analytical tasks, each followed by insights and recommendations derived from the data:

Task 1: Calculate the number of jobs reviewed per hour per day in November 2020.

Insight: User activity varies throughout November, which could indicate potential trends or anomalies.
Recommendation: Investigate spikes and drops in job reviews to address any underlying issues affecting user engagement.
Task 2: Calculate the 7-day rolling average of throughput.

Insight: Using a rolling average provides a smoother view of data trends, helping to identify long-term patterns.
Recommendation: Continue using the rolling average to observe trends without being influenced by daily fluctuations.
Task 3: Calculate the percentage share of each language in the last 30 days.

Insight: Language distribution is relatively balanced, with Persian having the highest share.
Recommendation: Monitor language distribution and consider investing in language-specific content or features for languages with lower shares.
Task 4: Display duplicate row count from the table.

Insight: There is one duplicate row identified by the actor_id column.
Recommendation: Implement data validation mechanisms to prevent future duplicates and maintain data integrity.
Task 5: Calculate the weekly user engagement.

Insight: User engagement peaked around week 30, with fluctuations over time.
Recommendation: Analyze factors behind engagement fluctuations and use insights to plan future engagement strategies.
Task 6: Calculate the user growth for the product.

Insight: User growth has been positive over time, with some fluctuations.
Recommendation: Analyze growth periods and align them with product updates, marketing efforts, or market trends to sustain and accelerate growth.
Task 7: Calculate the weekly retention of users-sign up cohort.

Insight: Weekly user retention gradually declined over time.
Recommendation: Focus on improving user retention strategies and enhancing user experience at critical touchpoints.
Task 8: Calculate the weekly engagement per device.

Insight: Engagement varies across devices and weeks.
Recommendation: Optimize user experiences for devices with lower engagement and monitor device trends for adaptive strategies.
Task 9: Calculate the email engagement metrics.

Insight: Email engagement metrics include an open rate of approximately 33.58% and a click rate of about 14.79%.
Recommendation: Compare metrics with industry benchmarks and optimize email content, subject lines, and targeting to enhance engagement.
Requirements
To run the SQL queries and reproduce the insights in this project, you'll need:

An SQL database management system (DBMS) such as MySQL, PostgreSQL, or SQLite.
Access to the provided dataset.
A basic understanding of SQL query syntax and functions.
Usage
Clone this repository to your local machine.
Set up your SQL database environment and import the dataset.
Open your DBMS and execute the provided SQL queries to reproduce the insights.
Review the results and use the insights and recommendations for decision-making.
Contributing
Contributions to this project are welcome! If you find issues, have suggestions, or want to add new analytical tasks, feel free to submit pull requests.

By performing in-depth analytics and investigations on operational metrics using SQL, this project aims to provide valuable insights that can drive data-driven decision-making and improve various aspects of the business.
