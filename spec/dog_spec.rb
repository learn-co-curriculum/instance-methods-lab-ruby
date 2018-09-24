require_relative '../lib/dog'

describe 'Dog' do
  it 'is defined within lib/dog.rb' do
    expect(File).to exist("../lib/dog.rb")
    expect(defined?(Dog)).to be_truthy
    expect(Dog).to be_a(Class)
  end

  describe '#bark' do
    it 'responds to the #bark instance method' do
      fido = Dog.new
      expect(fido).to respond_to(:bark)
    end

    it 'puts "Woof!"' do
      expect($stdout).to receive(:puts).with("Woof!")

      fido = Dog.new
      fido.bark
    end
  end

  describe '#sit' do
    it 'responds to the #sit instance method' do
      fido = Dog.new
      expect(fido).to respond_to(:sit)
    end

    it 'puts "The Dog is sitting"' do
      expect($stdout).to receive(:puts).with("The Dog is sitting")

      fido = Dog.new
      fido.sit
    end
  end
end
