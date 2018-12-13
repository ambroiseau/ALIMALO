require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation tests" do
    it 'ensure user name presence' do
      user = User.new(username: 'name', email: 'example@hotmail.com').save
      expect(user).to eq(false)
    end
    it 'ensure email presence' do
      user = User.new(username: 'name', password: 'exampleom').save
      expect(user).to eq(false)
    end
  end
  #context "scope tests" do
  #  let (:params) { {username: 'username', email: 'example@hotmail.com',password: 'exampleom'}}
  #  before(:each) do
  #    User.new(params).save
  #    User.new(params).save
  #   User.new(params).save
  #    User.new(params.merge(active: true)).save
  #    User.new(params.merge(active: false)).save
  #    User.new(params.merge(active: false)).save
  #  end
  #  it 'should return active users' do
  #    expect(User.activate_users.size).to eq(3)
  #  end
  #  it 'should return inactive users' do
  #    expect(User.inactivate_users.size).to eq(3)
  #  end


#  end

end
