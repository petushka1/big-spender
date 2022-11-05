require 'rails_helper'

RSpec.describe(Category, type: :model) do
  before(:all) { @user = User.new(name: 'Test User', email: 'test@email.com', password: 'password') }

  describe('Associations') do
    it { should belong_to(:entity) }
    it { should belong_to(:group) }
  end
end
