name "webserver"
description "Web Server"
run_list "recipe[]"
default_attributes({
  "nginx" => {
    "sites" => {
      "admin" => {
        "port" => 8000
      }
    }
  }
})
