# Airbnb_Topic_Modeling

## Airbnb Host Profile Analysis

## Overview
This project aims to analyze the impact of host profiles on Airbnb rental success. We began by preprocessing host descriptions and then applied Seeded LDA (Latent Dirichlet Allocation) with five fixed topics. These topics were identified through an exploration of various descriptions. Next, using the probabilities of host descriptions belonging to each topic, we performed K-means clustering to determine host profiles. Finally, we studied the impact of host profiles on the likelihood of their apartments being rented out.

## Project Steps
1. **Preprocessing Host Descriptions**: We cleaned and processed host descriptions to prepare them for analysis.
2. **Seeded LDA Topic Modeling**: We utilized Seeded LDA to identify five fixed topics in host descriptions, which were determined through exploration and reading of sample descriptions.
3. **K-means Clustering**: Using the probabilities of host descriptions belonging to each topic as features, we performed K-means clustering to identify distinct host profiles.
4. **Impact Analysis**: We analyzed the impact of host profiles on rental success, specifically examining whether the hosting of an apartment was correlated with certain host profiles.

## Usage
To reproduce the analysis:
1. Clone this repository to your local machine.
2. Ensure you have the necessary dependencies installed (list them here).
3. Run the preprocessing script to clean and preprocess host descriptions.
4. Run the Seeded LDA script to perform topic modeling and identify host profiles.
5. Run the K-means clustering script to cluster hosts based on their profiles.
6. Analyze the results to understand the impact of host profiles on rental success.



## Dataset
Due to privacy considerations, the dataset cannot be shared publicly.

## Acknowledgments
Special thanks to Mr.Christophe Benavent for their guidance and support throughout this project.
