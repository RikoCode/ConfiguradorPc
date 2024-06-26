from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
from urllib.parse import quote as url_quote 
import sqlite3
import json
import os

app = Flask(__name__, template_folder='docs', static_folder='docs/static')

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///path/to/componentes.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

def get_db_connection():
    try:
        conn = sqlite3.connect('componentes.db')
        conn.row_factory = sqlite3.Row
        return conn
    except sqlite3.Error as e:
        print("Error al conectar a la base de datos:", e)
        return None

@app.route('/')
def index():
    some_url= "http://example.com/some path"
    some_quoted_url= url_quote(some_url)
    sockets = ['AM4', 'AM5', 'LGA1200', 'LGA1700']
    return render_template('index.html', sockets=sockets)

@app.route('/components/<socket>')
def components(socket):
    conn = get_db_connection()
    print("Socket:", socket)
    cpus = conn.execute('SELECT * FROM componentes WHERE tipo = "CPU" AND socket = ?', (socket,)).fetchall()
    print("CPUs:", cpus)
    motherboards = conn.execute('SELECT * FROM componentes WHERE tipo = "MB" AND socket = ?', (socket,)).fetchall()
    print("Motherboards:", motherboards)
    rams = conn.execute('SELECT * FROM componentes WHERE tipo = "RAM"').fetchall()
    print("RAMs:", rams)
    conn.close()
    return render_template('components.html', cpus=cpus, motherboards=motherboards, rams=rams)

@app.route('/calculate', methods=['POST'])
def calculate():
    cpu_id = request.form['cpu']
    mb_id = request.form['mb']
    ram_id = request.form['ram']

    conn = get_db_connection()
    cpu = conn.execute('SELECT * FROM componentes WHERE id = ?', (cpu_id,)).fetchone()
    mb = conn.execute('SELECT * FROM componentes WHERE id = ?', (mb_id,)).fetchone()
    ram = conn.execute('SELECT * FROM componentes WHERE id = ?', (ram_id,)).fetchone()

    total_price = cpu['precio'] + mb['precio'] + ram['precio']

    conn.close()
    return render_template('result.html', cpu=cpu, mb=mb, ram=ram, total_price=total_price)

if __name__ == '__main__':
    app.run(debug=True)