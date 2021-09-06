import mysql.connector

cnx = mysql.connector.connect(user='root', database='plato', host='192.168.0.175', port=4000)
cursor = cnx.cursor()

add_corpus = ("insert into corpus_data (corpus_question, tags_q_intent)"
               "VALUES (%s, %s)")

#data_employee = ('Geert', 'Vanderkelen')

# Insert new employee
#cursor.execute(add_employee, data_employee)

import pandas

df = pandas.read_csv('../data/train_11.csv')
for i, text in enumerate(df["文本语料"]):
    data_corpus = text, str(df["类别"][i])
    cursor.execute(add_corpus, data_corpus)
    if i % 100 == 0:
        print('.')
    if i % 10000 == 0:
        # Make sure data is committed to the database
        cnx.commit()
# Make sure data is committed to the database
cnx.commit()

cursor.close()
cnx.close()