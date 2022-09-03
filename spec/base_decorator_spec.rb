require './base_decorator'
require './teacher'
require './nameable'

describe BaseDecorator do
  before :each do
    @teacher = Teacher.new(25, 'physics', 'safar', true)
    @decorator = BaseDecorator.new(@teacher)
  end

  context 'when an object of base decorator class is created' do
    it 'should have correct details' do
      expect(@decorator).to be_kind_of Nameable
      expect(@decorator).to be_instance_of BaseDecorator
      expect(@decorator.correct_name).to eq 'safar'
    end
  end

  context 'when an object of base decorator class is created' do
    it 'should have a correct name' do
      teacher = Teacher.new(25, 'History', 'Mahdi', true)
      decorator = BaseDecorator.new(teacher)
      expect(decorator.correct_name).to eq 'Mahdi'
    end
  end
end