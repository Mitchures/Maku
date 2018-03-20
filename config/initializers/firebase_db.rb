firebase = Firebase::Client.new(ENV['FB_URL'], ENV['FB_SECRET'])
# response = firebase.push("todos", { :name => 'Pick the milk',        :priority => 1 })
