#import libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#load the dataset
df = pd.read_csv("carprice.csv")

#check the data
df.head()
df.shape
df.columns

#check data types and missing values
df.info()
df.describe()
df.isnull().sum()

#remove duplicates
df.drop_duplicates(inplace=True)

#handle missing values
df.fillna(0, inplace=True)

#EDA
#1. Distribution of car prices
import matplotlib.pyplot as plt
plt.hist(df['price'])
plt.title('car price distribution')
plt.xlabel('price')
plt.ylabel('count')
plt.show()

#2.Top car brands
df['brand'].value_counts().plot(kind='bar')
plt.title('Top car brands')
plt.xlabel('brand')
plt.ylabel('count')
plt.show()

#3. correlation analysis
import seaborn as sns
corr = df.corr(numeric_only=True)

sns.heatmap(corr)
plt.show()


#drop the columns
df.drop('symboling', axis=1, inplace=True)
print(df.columns)


#my sql connection
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Sanjaisan@550",
    database="carprice"
)

if conn.is_connected():
    print("Connected Successfully!")

conn.close()





import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Sanjaisan@550",
    database="carprice"
)

cursor = conn.cursor()

cursor.execute("SHOW TABLES")

for table in cursor:
    print(table)

conn.close()