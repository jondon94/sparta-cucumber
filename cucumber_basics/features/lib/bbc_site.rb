require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'

module BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in_page
    BbcSignInPage.new
  end

  def bbc_reg_page
    BbcRegPage.new
  end

end
