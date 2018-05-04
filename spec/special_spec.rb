RSpec.describe Special do
  describe 'Validations' do
    it 'is invalid without a name' do
      special = Special.create(name: nil, comedian_id: 1)

      expect(special).to_not be_valid
    end

    it 'is valid with a name' do
      special = Special.create(name: 'Disinterested', comedian_id: 1)

      expect(special).to be_valid
    end

    it 'is invalid without a comedian_id' do
      special = Special.create(name: 'Disinterested', comedian_id: nil)

      expect(special).to_not be_valid
    end

    it 'is valid with a comedian_id' do
      special = Special.create(name: 'Disinterested', comedian_id: 1)

      expect(special).to be_valid
    end
  end
end
