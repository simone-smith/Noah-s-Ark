require 'pg'

class Animal
  def self.view
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'noahs_ark_test')
    else
      connection = PG.connect(dbname: 'noahs_ark')
    end

    result = connection.exec("SELECT * FROM animals")
    animal_1_array = result.map { |animal| animal['animal_1']}
    animal_2_array = result.map { |animal| animal['animal_2']}
    join_arrays(animal_1_array, animal_2_array)

  end

  private

  def self.join_arrays(animal_1_array, animal_2_array)
    final_array = []
    for n in 0..animal_1_array.size
      final_array << animal_1_array[n]
      final_array << animal_2_array[n]
    end
    final_array
  end

end
