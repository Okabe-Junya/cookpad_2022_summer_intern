# frozen_string_literal: true

require 'test_helper'

class ProductionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production = productions(:one)
  end

  test 'should get index' do
    get productions_url
    assert_response :success
  end

  test 'should get new' do
    get new_production_url
    assert_response :success
  end

  test 'should create production' do
    assert_difference('Production.count') do
      post productions_url,
           params: { production: { category: @production.category, comment: @production.comment, name: @production.name,
                                   price: @production.price } }
    end

    assert_redirected_to production_url(Production.last)
  end

  test 'should show production' do
    get production_url(@production)
    assert_response :success
  end

  test 'should get edit' do
    get edit_production_url(@production)
    assert_response :success
  end

  test 'should update production' do
    patch production_url(@production),
          params: { production: { category: @production.category, comment: @production.comment, name: @production.name,
                                  price: @production.price } }
    assert_redirected_to production_url(@production)
  end

  test 'should destroy production' do
    assert_difference('Production.count', -1) do
      delete production_url(@production)
    end

    assert_redirected_to productions_url
  end
end
