RSpec.describe Comedian do
  describe 'Validations' do
    it 'is invalid without a name' do
      comedian = Comedian.create(name: nil, age: 30)

      expect(comedian).to_not be_valid
    end

    it 'is valid with a name' do
      comedian = Comedian.create(name: 'Bob', age: 30)

      expect(comedian).to be_valid
    end

    it 'is invalid without a age' do
      comedian = Comedian.create(name: 'Bob', age: nil)

      expect(comedian).to_not be_valid
    end

    it 'is valid with a age' do
      comedian = Comedian.create(name: 'Bob', age: 30)

      expect(comedian).to be_valid
    end
  end

  describe 'Behaviors' do
    it 'shows a specials list of a comedian' do
      visit '/reggie'

      expect(page).to have_content('Disinformation')
      expect(page).to have_content('Disinformation')
    end

    it 'shows average age of all comedians' do
      visit '/comedians'

      expect(page).to have_content('Average Age')
    end

    it 'shows list with all comedians aged 34' do
      visit '/comedians?age=34'

      expect(page).to have_content('Hannibal Buress')
    end

    it 'shows number of specials for each comedian' do
      visit '/comedians'

      expect(page).to have_content(5)
    end
  end
end
