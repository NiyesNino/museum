require 'test_helper'

class VgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vg = vgs(:one)
  end

  test "should get index" do
    get vgs_url
    assert_response :success
  end

  test "should get new" do
    get new_vg_url
    assert_response :success
  end

  test "should create vg" do
    assert_difference('Vg.count') do
      post vgs_url, params: { vg: { annee: @vg.annee, description: @vg.description, dev: @vg.dev, image: @vg.image, note: @vg.note, titre: @vg.titre } }
    end

    assert_redirected_to vg_url(Vg.last)
  end

  test "should show vg" do
    get vg_url(@vg)
    assert_response :success
  end

  test "should get edit" do
    get edit_vg_url(@vg)
    assert_response :success
  end

  test "should update vg" do
    patch vg_url(@vg), params: { vg: { annee: @vg.annee, description: @vg.description, dev: @vg.dev, image: @vg.image, note: @vg.note, titre: @vg.titre } }
    assert_redirected_to vg_url(@vg)
  end

  test "should destroy vg" do
    assert_difference('Vg.count', -1) do
      delete vg_url(@vg)
    end

    assert_redirected_to vgs_url
  end
end
