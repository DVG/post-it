require 'test_helper'

class StickyNotesControllerTest < ActionController::TestCase
  setup do
    @sticky_note = sticky_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sticky_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sticky_note" do
    assert_difference('StickyNote.count') do
      post :create, sticky_note: { content: @sticky_note.content }
    end

    assert_redirected_to sticky_note_path(assigns(:sticky_note))
  end

  test "should show sticky_note" do
    get :show, id: @sticky_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sticky_note
    assert_response :success
  end

  test "should update sticky_note" do
    patch :update, id: @sticky_note, sticky_note: { content: @sticky_note.content }
    assert_redirected_to sticky_note_path(assigns(:sticky_note))
  end

  test "should destroy sticky_note" do
    assert_difference('StickyNote.count', -1) do
      delete :destroy, id: @sticky_note
    end

    assert_redirected_to sticky_notes_path
  end
end
