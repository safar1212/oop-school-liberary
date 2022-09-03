require './book'
require './teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new(70, 'Java', 'safar', true)
  end

  context 'when an object of class teacher is created' do
    it 'should have' do
      expect(@teacher.age).to eq 70
      expect(@teacher.name).to eq 'safar'
      expect(@teacher.can_use_services?).to be true
      expect(@teacher.specialization).to eq 'Java'
    end
  end

  context 'when can_use_services method is tested' do
    it 'should return true' do
      expect(@teacher.can_use_services?).to eq true
    end
  end
end
