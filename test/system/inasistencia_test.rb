require "application_system_test_case"

class InasistenciaTest < ApplicationSystemTestCase
  setup do
    @inasistencium = inasistencia(:one)
  end

  test "visiting the index" do
    visit inasistencia_url
    assert_selector "h1", text: "Inasistencia"
  end

  test "creating a Inasistencium" do
    visit inasistencia_url
    click_on "New Inasistencium"

    check "Aviso" if @inasistencium.aviso
    fill_in "Causa", with: @inasistencium.causa
    fill_in "Fechadesde", with: @inasistencium.fechadesde
    fill_in "Fechahasta", with: @inasistencium.fechahasta
    fill_in "Personal", with: @inasistencium.personal_id
    click_on "Create Inasistencium"

    assert_text "Inasistencium was successfully created"
    click_on "Back"
  end

  test "updating a Inasistencium" do
    visit inasistencia_url
    click_on "Edit", match: :first

    check "Aviso" if @inasistencium.aviso
    fill_in "Causa", with: @inasistencium.causa
    fill_in "Fechadesde", with: @inasistencium.fechadesde
    fill_in "Fechahasta", with: @inasistencium.fechahasta
    fill_in "Personal", with: @inasistencium.personal_id
    click_on "Update Inasistencium"

    assert_text "Inasistencium was successfully updated"
    click_on "Back"
  end

  test "destroying a Inasistencium" do
    visit inasistencia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inasistencium was successfully destroyed"
  end
end
