require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.create(name: 'Test User-1', email: 'mail@test.com', password: 'password')
    @group = described_class.create(
      user_id: @user.id,
      name: 'Test Category',
      icon: 'icon.png'
    )
  end

  describe('associations') do
    it { should belong_to(:user) }
    it { should have_many(:entities).through(:categories) }
    it { should have_many(:categories) }
  end

  it 'Title should not be blank' do
    @group.name = ''
    expect(@group).to_not be_valid
  end

  it 'Title should be valid' do
    expect(@group).to be_valid
  end
end
