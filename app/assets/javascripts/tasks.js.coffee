$ ->
  pusher = new Pusher($('meta[name=pusher_key]').attr('content'))
  channel = pusher.subscribe("tasks")
  channel.bind "task-added", (task) ->
    $('table tbody').append("<tr><td>" + task.name + "</td><td></td><td></td><td></td></tr>")
