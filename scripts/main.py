import mysql.connector

cnx = mysql.connector.connect(user='root', database='plato', host='localhost', port=4000)
cursor = cnx.cursor()

add_employee = ("insert into corpus_data (corpus_question, tags_q_intent)"
               "VALUES (%s, %s)")

data_employee = ('Geert', 'Vanderkelen')

# Insert new employee
cursor.execute(add_employee, data_employee)


# Make sure data is committed to the database
cnx.commit()

cursor.close()
cnx.close()