require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before do
    assign(:account, Account.new(
                       name: "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do
      assert_select "input#account_title[name=?]", "account[title]"
      assert_select "input#account_name[name=?]", "account[name]"
    end
  end
end
