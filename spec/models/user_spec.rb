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
  
  it 'should not allow others as admin' do
    @user.is_admin?.should_not be_true
  end
  
  it 'should whitelist me as admin' do
    user2 = Fabricate.build(:user, nickname: "dbgrandi")
    user2.is_admin?.should be_true
  end
  
  it 'should have collaborations on projects' do
    @user.projects.should be_empty
  end

end