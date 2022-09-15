# frozen_string_literal: true

require 'application_system_test_case'

class ProductionsTest < ApplicationSystemTestCase
  setup do
    @production = productions(:one)
  end

  test 'visiting the index' do
    visit productions_url
    assert_selector 'h1', text: 'Productions'
  end

  test 'should create production' do
    visit productions_url
    click_on 'New production'

    fill_in 'Category', with: @production.category
    fill_in 'Comment', with: @production.comment
    fill_in 'Name', with: @production.name
    fill_in 'Price', with: @production.price
    click_on 'Create Production'

    assert_text 'Production was successfully created'
    click_on 'Back'
  end

  test 'should update Production' do
    visit production_url(@production)
    click_on 'Edit this production', match: :first

    fill_in 'Category', with: @production.category
    fill_in 'Comment', with: @production.comment
    fill_in 'Name', with: @production.name
    fill_in 'Price', with: @production.price
    click_on 'Update Production'

    assert_text 'Production was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Production' do
    visit production_url(@production)
    click_on 'Destroy this production', match: :first

    assert_text 'Production was successfully destroyed'
  end
end
