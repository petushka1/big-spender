require 'rails_helper'

RSpec.describe(User, type: :model) do
  it 'should be valid with arguments' do
    expect(described_class.new(name: 'Test user', email: 'test@email.com', password: 'password')).to be_valid
  end

  it('should be invalid') do
    expect(described_class.new).to_not be_valid
  end

  it('should be invalid without password') do
    user = described_class.new(name: 'user', email: 'test@email.com')
    expect(user).to_not be_valid
  end

  it('should be invalid with less than 3 chars') do
    user = described_class.new(name: 'r', email: 'test@some.email', password: 'password')
    expect(user).to_not be_valid
  end

  it('should be invalid without email') do
    user = described_class.new(name: 'user', password: 'gdjghdjg')
    expect(user).to_not be_valid
  end
end
