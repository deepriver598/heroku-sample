require 'rails_helper'

describe Item, :type => :model do
  describe 'validation' do
    context "正常系" do
      it 'item' do
        item = Item.new
        item.name = "sample name"
        item.price = 500
        item.description = "sample description"
        expect(item).to be_valid
      end

      it 'descriptionはblankを許可' do
        item = Item.new
        item.name = "sample name"
        item.price = 500
        item.description = ""
        expect(item).to be_valid
      end
    end

    context "異常系" do
      it 'nameがblank' do
        item = Item.new
        item.name = ""
        item.price = 500
        item.description = "sample description"
        expect(item).not_to be_valid
      end

      it 'priceがblank' do
        item = Item.new
        item.name = "sample name"
        item.price = nil
        item.description = "sample description"
        expect(item).not_to be_valid
      end

      it 'priceが負の値' do
        item = Item.new
        item.name = "sample name"
        item.price = -1
        item.description = "sample description"
        expect(item).not_to be_valid
      end

      it 'priceが文字列' do
        item = Item.new
        item.name = "sample name"
        item.price = "500円"
        item.description = "sample description"
        expect(item).not_to be_valid
      end

      it 'description文字数超過' do
        item = Item.new
        item.name = "sample name"
        item.price = "500"
        item.description = "a" * 256
        expect(item).not_to be_valid
      end
    end
  end
end
