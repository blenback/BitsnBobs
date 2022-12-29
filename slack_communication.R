
create_config_file(token = 'test' ,
  incoming_webhook_url = 'test',
  channel = '#general',
  username = 'slackr',
  icon_emoji = 'tada')

slackr_setup(channel = '#general',
             incoming_webhook_url = 'test')

#create a test promise
promise <- promises::future_promise(read.csv("Tools/Simulation_control.csv"))

#evaluate with then
then(promise,onFulfilled = function(value) {print("success")},
    onRejected = function(err) {print("Fail")})

slackr_bot('Wow!')
