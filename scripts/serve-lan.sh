#!/usr/bin/env bash
set -euo pipefail

cd /home/htx/github/shuferhoo.github.io
exec /usr/bin/bundle exec jekyll serve --host 0.0.0.0 --port 4000
