require "application_system_test_case"

class VgsTest < ApplicationSystemTestCase
  setup do
    @vg = vgs(:one)
  end

  test "visiting the index" do
    visit vgs_url
    assert_selector "h1", text: "Vgs"
  end

  test "creating a Vg" do
    visit vgs_url
    click_on "New Vg"

    fill_in "Annee", with: @vg.annee
    fill_in "Description", with: @vg.description
    fill_in "Dev", with: @vg.dev
    fill_in "Image", with: @vg.image
    fill_in "Note", with: @vg.note
    fill_in "Titre", with: @vg.titre
    click_on "Create Vg"

    assert_text "Vg was successfully created"
    click_on "Back"
  end

  test "updating a Vg" do
    visit vgs_url
    click_on "Edit", match: :first

    fill_in "Annee", with: @vg.annee
    fill_in "Description", with: @vg.description
    fill_in "Dev", with: @vg.dev
    fill_in "Image", with: @vg.image
    fill_in "Note", with: @vg.note
    fill_in "Titre", with: @vg.titre
    click_on "Update Vg"

    assert_text "Vg was successfully updated"
    click_on "Back"
  end

  test "destroying a Vg" do
    visit vgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vg was successfully destroyed"
  end
end
