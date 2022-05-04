#!/usr/bin/env bash
rm -f /tmp/pids/server.pid
rails db:migrate RAILS_ENV=development
rails db:reset
rails server -b 0.0.0.0
