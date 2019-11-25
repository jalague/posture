# Posture Exploration
Predicting who is prone to poor posture and how they can avoid back pain

## Results:
*  Generate models that are able to predict poor posture and back pain with over 70% accuracy.
* This is part one of an informative posture app that will analyize where you currently are in your posture journey and offer tips to improve your posture and overall health.
* Important variables for predicting poor posture: 
    Age
    Commute Time
    Sleep Satisfaction
    Commute type
    Back Pain Frequency and Severity
   

## Data Collection
- Over 200,000 contacts were collected from over 1000 public sources
- Data was collected via a voluntairy survey sent out to those contacts
- Due to bulk email limitations a majority of the contacts were never reached, but there were still a total of 450 responses.

## Data Processing
- Variables were cleaned and encoded from strings to ordinal and dummy variables
More can be found in [cleaning.ipynb](#blob/master/eda.ipynb)

## Data Exploration
- Respondents ranged in age from to 89! Although a majority were around the age of 22, were female, and lived in the U.S.A
More can be found in [eda.ipynb](#blob/master/eda.ipynb)


## Data Analysis
- Used Logistic Regress, Random Forests, KNN, and ordinal linear regression to create prediction models for which people have poor posture, frequent back pain, how much the exercise, and more.
More can be found in [analysis.ipynb](#blob/master/eda.ipynb)

