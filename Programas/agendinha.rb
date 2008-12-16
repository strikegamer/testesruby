require "classes/SqlServer.rb"

db = SqlServer.new
db.open
db.query("SELECT NOME FROM REGISTRO;")
field_names = db.fields
players = db.data
db.close