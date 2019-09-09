require "application_system_test_case"

class PersonalsTest < ApplicationSystemTestCase
  setup do
    @personal = personals(:one)
  end

  test "visiting the index" do
    visit personals_url
    assert_selector "h1", text: "Personals"
  end

  test "creating a Personal" do
    visit personals_url
    click_on "New Personal"

    check "Activo" if @personal.activo
    fill_in "Apeynom", with: @personal.apeynom
    fill_in "Documento", with: @personal.documento
    fill_in "Domic", with: @personal.domic
    fill_in "Fecing", with: @personal.fecing
    fill_in "Fecnac", with: @personal.fecnac
    click_on "Create Personal"

    assert_text "Personal was successfully created"
    click_on "Back"
  end

  test "updating a Personal" do
    visit personals_url
    click_on "Edit", match: :first

    check "Activo" if @personal.activo
    fill_in "Apeynom", with: @personal.apeynom
    fill_in "Documento", with: @personal.documento
    fill_in "Domic", with: @personal.domic
    fill_in "Fecing", with: @personal.fecing
    fill_in "Fecnac", with: @personal.fecnac
    click_on "Update Personal"

    assert_text "Personal was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal" do
    visit personals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal was successfully destroyed"
  end
end
