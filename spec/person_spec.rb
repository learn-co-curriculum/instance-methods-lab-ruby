require_relative '../lib/person'

describe 'Person' do
  it 'is defined within lib/person.rb' do
    expect(File).to exist("../lib/person.rb")
    expect(defined?(Person)).to be_truthy
    expect(Person).to be_a(Class)
  end

  describe '#talk' do
    it 'responds to the #talk instance method' do
      ada = Person.new
      expect(ada).to respond_to(:talk)
    end

    it 'puts "Hello World!"' do
      expect($stdout).to receive(:puts).with("Hello World!")

      ada = Person.new
      ada.talk
    end
  end

  describe '#walk' do
    it 'responds to the #walk instance method' do
      ada = Person.new
      expect(ada).to respond_to(:walk)
    end

    it 'puts "The Person is walking"' do
      expect($stdout).to receive(:puts).with("The Person is walking")

      ada = Person.new
      ada.walk
    end
  end
end