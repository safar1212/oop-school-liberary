require './student'
require './classroom'

describe Student do
  before :each do
    @student = Student.new(24,"safar", false, nil)
  end

  context 'when an object of class Student is created' do
    it 'should have' do
      expect(@student.age).to eq 24
      expect(@student.name).to eq "safar"
      expect(@student.can_use_services?).to be true
      expect(@student.classroom).to be nil
    end
  end

  context 'when a student is created with classroom' do
    it 'should have same classroom as in contructor' do
      classroom = Classroom.new('4S')
      student = Student.new(25, classroom, 'safar')
      expect(student.classroom).to eq nil
    end
  end

  context 'when a students class is set' do
    it 'should have the set class' do
      classroom = Classroom.new('4N')
      @student.classroom = classroom
      expect(@student.classroom.label).to eq '4N'
    end
  end

  context 'when play hooky method is tested' do
    it 'should return ¯\(ツ)/¯' do
      expect(@student.play_hooky).to eq "¯\(ツ)/¯"
    end
  end
end