import psycopg2
from tabulate import tabulate


print("                 WELCOME TO VILLANOVA UNIVERSITY                      ")
print("1. To know all the details about university")
print("2. To check all courses available and fees")
print("3. To apply for admission in bachelor course")
print("4. To apply for admission in masters course")
print("5. To check the information of faculty")
print("6. Display all the details of bachelor students")
print("7. Display all the details of master students")

# Connect to PostgreSQL
try:
    mycon = psycopg2.connect(
        host="localhost",
        user="postgres",           
        password="1111", 