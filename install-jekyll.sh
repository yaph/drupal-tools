#!/bin/bash
# The purpose of installing jekyll was to try out the Drupal 6 feature, which
# unfortunately omitted a lot of content.
curl -L https://get.rvm.io -o rvm.sh
bash rvm.sh stable --ruby
source ~/.rvm/scripts/rvm
gem install jekyll
gem install jekyll-import
gem install mysql
gem install sequel