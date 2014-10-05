require 'spec_helper'

describe User do
  before(:all) do
    @user = Fabricate(:user)
  end
  
  it 'should be valid' do
    @user.should be_valid
  end
  
  it 'should have a unique uid' do
    user2 = Fabricate.build(:user, uid: @user.uid)
    user2.should_not be_valid
  end

end