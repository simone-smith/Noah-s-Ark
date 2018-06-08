require 'animal'

describe Animal do
  describe '.view' do
    it "lists all animals in the database" do
      connection = PG.connect(dbname: 'noahs_ark_test')
      connection.exec("INSERT INTO animals (animal_1, animal_2) VALUES ('Cat_female', 'Cat_male');")
      expect(Animal.view).to include ['Cat_female', 'Cat_male']
    end
  end

  describe '.add' do
    it "adds an animal to the database" do
      Animal.add('Leopard_female', 'Leopard_male')
      expect(Animal.view).to include ['Leopard_female', 'Leopard_male']
    end
  end
end
