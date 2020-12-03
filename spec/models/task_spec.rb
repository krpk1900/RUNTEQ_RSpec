require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validation' do
    before do
      @user = User.create(id: 1, email: 'test1@example.com', password: 'password', password_confirmation: 'password')
      @task = @user.tasks.build(id: 1, title: 'Tiele', content: 'Content', status: 0, deadline: '2020-12-31')
    end
    it 'is valid with all attributes' do

      binding.pry

      expect(@task).to_not be_vaild
    end
    it 'is invalid without title' do end
    it 'is invalid without status' do end
    it 'is invalid with a duplicate title' do end
    it 'is valid with another title' do end
  end
end
