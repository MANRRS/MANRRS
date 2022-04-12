# frozen_string_literal: true

# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Message, type: :model do
  subject do
    described_class.new(id: 0, text: 'harry potter', date_created: '2022-02-13', admin_id: 0, created_at: '2022-02-13',
                        updated_at: '2022-02-13')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.text = nil
    subject.id = nil
    subject.date_created = nil
    subject.admin_id = nil
    subject.created_at = nil
    subject.updated_at = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Carrier, type: :model do
  subject do
    described_class.new(id: 0, domain: 'mms.cricketwireless.net', created_at: '2022-02-13', updated_at: '2022-02-13')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.domain = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe MessageHistory, type: :model do
  subject do
    described_class.new(id: 0, message_id: '0', student_id: '0', date_sent: '2022-02-13', created_at: '2022-02-13',
                        updated_at: '2022-02-13')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.message_id = nil
    subject.id = nil
    subject.date_sent = nil
    subject.student_id = nil
    subject.created_at = nil
    subject.updated_at = nil
    expect(subject).not_to be_valid
  end
end

# location: spec/unit/unit_spec.rb


RSpec.describe User, type: :model do
  subject do
    described_class.new(email: 'narnia@gmail.com', password: '123456', encrypted_password: '123456')
    # described_class.new(email: 'narnia@gmail.com',password:'123456', encrypted_password:'123456', created_at: '2022-02-13', updated_at: '2022-02-13',
    #   reset_password_token:true, reset_password_sent_at: '2022-02-13', remember_created_at: '2022-02-13')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.email = nil
    subject.password = nil
    subject.encrypted_password = nil
    subject.id = nil
    # subject.created_at = nil
    # subject.updated_at = nil
    expect(subject).not_to be_valid
  end
end

# UNIT TEST: Student
require 'student'

RSpec.describe Student do
  describe '#create' do
    subject do
      Student.new(First_Name: 'Cesar', Last_Name: 'Fuentes', Phone_Number: '2147890012', Email: 'seazhur@tamu.edu')
    end

    it 'Is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'Is not valid without first name' do
      student = Student.new(First_Name: nil)
      expect(student).not_to be_valid
    end

    it 'Is not valid without last name' do
      student = Student.new(Last_Name: nil)
      expect(student).not_to be_valid
    end

    # it 'Is not valid without phone number' do
    #   student = Student.new(Phone_Number: nil)
    #   expect(student).not_to be_valid
    # end

    it 'Is not valid without email' do
      student = Student.new(Email: nil)
      expect(student).not_to be_valid
    end
  end

  describe '#parsing' do
    it 'Needs to remove whitespace' do
      student = Student.new
      expect(student.stripWhitespace(' 214 789 0012 ')).to eq('2147890012')
    end

    it 'Needs to remove non integers' do
      student = Student.new
      expect(student.stripNonIntegers(' (214) 789-0012 ')).to eq('2147890012') # also removes whitespace
    end

    it 'Needs to only be 10 digits' do
      student = Student.new
      expect(student.stripDigits('1+2147890012')).to eq('2147890012')
    end
  end

  # excel tests
end
