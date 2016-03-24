json.array!(@snapshots) do |snapshot|
  json.extract! snapshot, :id, :snapshotID, :interval, :firstSnapshot, :lastSnapshot, :snapshot1, :snapshot2, :snapshot3, :snapshot4, :snapshot5, :snapshot6, :snapshot7, :snapshot8, :snapshot9, :snapshot10
  json.url snapshot_url(snapshot, format: :json)
end
