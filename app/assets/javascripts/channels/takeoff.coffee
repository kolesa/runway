App.room = App.cable.subscriptions.create "TakeoffChannel",
  received: (data) ->
    $("#on_runway_table-box").find("tr[data-plane-id='" + data.id + "']").remove();

