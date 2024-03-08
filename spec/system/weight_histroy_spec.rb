require 'rails_helper'

RSpec.describe WeightHistroy, type: :system do
  context 'テスト確認' do
    it '成功' do
      visit weight_histroys_path

      expect(page).to_not have_content 'Weight histroy'
    end
  end
end