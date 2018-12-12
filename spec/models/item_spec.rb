require 'rails_helper'

RSpec.describe Item, type: :model do
  context "validation tests" do
    it 'ensure image-url name presence' do
      item = Item.new(title: 'titre', description: 'je mange de carbonara', price: '0.8e1').save
      expect(item).to eq(false)
    end
    it 'ensure price name presence' do
      item = Item.new(title: 'titre', description: 'je mange de carbonara', image_url: 'image.png').save
      expect(item).to eq(false)
    end
    it 'ensure description name presence' do
      item = Item.new(title: 'titre', price: '0.8e1', image_url: 'image.png').save
      expect(item).to eq(false)
    end
    it 'ensure title name presence' do
      item = Item.new(description: 'je mange de carbonara', price: '0.8e1', image_url: 'image.png').save
      expect(item).to eq(false)
    end
  end

end
