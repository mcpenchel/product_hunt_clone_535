require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_path # visit "/"
  
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "creating a new product" do    
    # 1) Sign in as an User
    login_as users(:ozzy)
    # 2) Visit the product's new page
    visit "/products/new"
    # 3) Fill in the inputs of the form with the correct info
    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"
    # 4) Click the create btn
    click_on 'Create Product'
    # 5) We need to be redirected to the index or show page (depends on what you want)
    assert_equal root_path, page.current_path
    # 6) I need to check if the new product is in the page
    assert_text "Change your life: Learn to code"
  end
end
