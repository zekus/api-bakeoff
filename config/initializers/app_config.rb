APP_CONFIG = {
  pusher: {
    app_id: '18815',
    key: '97a9a0fae0001b15cf83',
    secret: '340fd83f72be07356c8b'
  },
  tropo: {

  },
  base: {

  }
}

Pusher.app_id = APP_CONFIG[:pusher][:app_id]
Pusher.key = APP_CONFIG[:pusher][:key]
Pusher.secret = APP_CONFIG[:pusher][:secret]
