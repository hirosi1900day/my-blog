require 'rails_helper'

RSpec.describe WeightHistroy, type: :system do
  context 'テスト確認' do
    it '成功' do
      visit weight_histroys_path

      expect(page).to have_content 'Weight histroy'

      # base_path = Rails.root.join("spec/screenshots/compare")
      # path = "weight_histroy.png"
      # page.save_screenshot(base_path.join(path))
    end
  end
end