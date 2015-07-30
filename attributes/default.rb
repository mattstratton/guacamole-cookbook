default['guacamole']['version'] = '0.9.7'

default['guacamole']['usermap']['default'] = {
                                              "name" => "student1",
                                              "password" => "chef",
                                              "machines" => {
                                                "workstation" => {
                                                  "hostname" => "matt-test-node.clouapp.net",
                                                  "platform_family" => "windows",
                                                  "username" => "chef",
                                                  "password" => "CodeCan!"
                                                },
                                                "winnode" => {
                                                  "hostname" => "matt-test-node.clouapp.net",
                                                  "platform_family" => "windows",
                                                  "username" => "Administrator",
                                                  "password" => "Cod3Can!"
                                                }
                                              }
                                            }
