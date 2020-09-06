require 'rails_helper'
RSpec.describe User, type: :model do
  # describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it "nicknameが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it "nicknameが6文字以下で登録できる" do
      @user.nickname = "aaaaaa"
      expect(@user).to be_valid
    end

    it "emailが空では登録できない" do
      @user.email =　''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "重複したemailが存在する場合登録できない" do
      @user.save
      another_user = @user
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end

    it "passwordが空では登録できない" do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "passwordが存在してもpassword_confirmationが空では登録できない" do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "first_nameが空では登録できない" do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First_name can't be blank")
    end

    it "faily_nameが空では登録できない" do
      @user.family_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Family_name can't be blank")
    end

    it "first_name_kanaが空では登録できない" do
      @user.first_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First_name_kana can't be blank")
    end

    it "family_name_kanaが空では登録できない" do
      @user.family_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Family_name_kana can't be blank")
    end

    it "birth_dateが空では登録できない" do
      @user.birth_date = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Birth_date can't be blank")
    end

  end
# end

    