require 'pg'

connection = PG.connect(dbname: 'noahs_ark_test')

connection.exec("TRUNCATE animals;")
