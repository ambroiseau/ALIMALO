require 'rails_helper'

RSpec.describe ShopsItem, type: :model do
  context "validation tests" do
    it 'ensure shop longitude  presence' do
      shop = Shop.new(title: 'titre', adress: '19 rue de bambou', latitude:'0.488646821e2', tobacco:'true', image_url: 'hiz').save
      expect(shop).to eq(false)
    end
    it 'ensure latitude presence' do
      shop = Shop.new(title: 'name', adress: 'exampleom', longitude: '0.24041588e1', tobacco:'true', image_url: 'hiz').save
      expect(shop).to eq(false)
    end
    it 'ensure title presence' do
      shop = Shop.new(adress: 'exampleom', longitude: '0.24041588e1', latitude: '0.24041588e1', tobacco:'true', image_url: 'hiz').save
      expect(shop).to eq(false)
    end
    it 'ensure address presence' do
      shop = Shop.new(title: 'name', latitude: '0.24041588e1', longitude: '0.24041588e1', tobacco:'true', image_url: 'hiz').save
      expect(shop).to eq(false)
    end
    it 'ensure tabacco presence' do
      shop = Shop.new(title: 'name', adress:'19 rue du mamouth', latitude: '0.24041588e1', longitude: '0.24041588e1', image_url: 'hiz').save
      expect(shop).to eq(false)
    end
    it 'ensure image_url presence' do
      shop = Shop.new(title: 'name', adress:'19 rue du mamouth', latitude: '0.24041588e1', longitude: '0.24041588e1').save
      expect(shop).to eq(false)
    end

  end

end
