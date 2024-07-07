from fastapi import FastAPI
import mysql.connector

app = FastAPI()

# Configuración de la conexión a MySQL
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="1234",
  database="viajeros_argentina"
)

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/Alojamientos/")
def read_items():
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM Alojamientos")
    result = mycursor.fetchall()
    return {"Alojamientos": result}