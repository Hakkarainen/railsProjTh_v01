require 'test_helper'

class SnapshotsControllerTest < ActionController::TestCase
  setup do
    @snapshot = snapshots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snapshots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snapshot" do
    assert_difference('Snapshot.count') do
      post :create, snapshot: { firstSnapshot: @snapshot.firstSnapshot, interval: @snapshot.interval, lastSnapshot: @snapshot.lastSnapshot, snapshot10: @snapshot.snapshot10, snapshot1: @snapshot.snapshot1, snapshot2: @snapshot.snapshot2, snapshot3: @snapshot.snapshot3, snapshot4: @snapshot.snapshot4, snapshot5: @snapshot.snapshot5, snapshot6: @snapshot.snapshot6, snapshot7: @snapshot.snapshot7, snapshot8: @snapshot.snapshot8, snapshot9: @snapshot.snapshot9, snapshotID: @snapshot.snapshotID }
    end

    assert_redirected_to snapshot_path(assigns(:snapshot))
  end

  test "should show snapshot" do
    get :show, id: @snapshot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snapshot
    assert_response :success
  end

  test "should update snapshot" do
    patch :update, id: @snapshot, snapshot: { firstSnapshot: @snapshot.firstSnapshot, interval: @snapshot.interval, lastSnapshot: @snapshot.lastSnapshot, snapshot10: @snapshot.snapshot10, snapshot1: @snapshot.snapshot1, snapshot2: @snapshot.snapshot2, snapshot3: @snapshot.snapshot3, snapshot4: @snapshot.snapshot4, snapshot5: @snapshot.snapshot5, snapshot6: @snapshot.snapshot6, snapshot7: @snapshot.snapshot7, snapshot8: @snapshot.snapshot8, snapshot9: @snapshot.snapshot9, snapshotID: @snapshot.snapshotID }
    assert_redirected_to snapshot_path(assigns(:snapshot))
  end

  test "should destroy snapshot" do
    assert_difference('Snapshot.count', -1) do
      delete :destroy, id: @snapshot
    end

    assert_redirected_to snapshots_path
  end
end
