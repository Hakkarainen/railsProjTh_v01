require 'test_helper'

class SnapEventListsControllerTest < ActionController::TestCase
  setup do
    @snap_event_list = snap_event_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snap_event_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snap_event_list" do
    assert_difference('SnapEventList.count') do
      post :create, snap_event_list: { eventListTimeStamp: @snap_event_list.eventListTimeStamp, snapEvent10: @snap_event_list.snapEvent10, snapEvent1: @snap_event_list.snapEvent1, snapEvent2: @snap_event_list.snapEvent2, snapEvent3: @snap_event_list.snapEvent3, snapEvent4: @snap_event_list.snapEvent4, snapEvent5: @snap_event_list.snapEvent5, snapEvent6: @snap_event_list.snapEvent6, snapEvent7: @snap_event_list.snapEvent7, snapEvent8: @snap_event_list.snapEvent8, snapEvent9: @snap_event_list.snapEvent9, snapEventListID: @snap_event_list.snapEventListID, snapEventType: @snap_event_list.snapEventType }
    end

    assert_redirected_to snap_event_list_path(assigns(:snap_event_list))
  end

  test "should show snap_event_list" do
    get :show, id: @snap_event_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snap_event_list
    assert_response :success
  end

  test "should update snap_event_list" do
    patch :update, id: @snap_event_list, snap_event_list: { eventListTimeStamp: @snap_event_list.eventListTimeStamp, snapEvent10: @snap_event_list.snapEvent10, snapEvent1: @snap_event_list.snapEvent1, snapEvent2: @snap_event_list.snapEvent2, snapEvent3: @snap_event_list.snapEvent3, snapEvent4: @snap_event_list.snapEvent4, snapEvent5: @snap_event_list.snapEvent5, snapEvent6: @snap_event_list.snapEvent6, snapEvent7: @snap_event_list.snapEvent7, snapEvent8: @snap_event_list.snapEvent8, snapEvent9: @snap_event_list.snapEvent9, snapEventListID: @snap_event_list.snapEventListID, snapEventType: @snap_event_list.snapEventType }
    assert_redirected_to snap_event_list_path(assigns(:snap_event_list))
  end

  test "should destroy snap_event_list" do
    assert_difference('SnapEventList.count', -1) do
      delete :destroy, id: @snap_event_list
    end

    assert_redirected_to snap_event_lists_path
  end
end
