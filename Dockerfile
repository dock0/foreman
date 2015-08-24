FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed ruby
RUN gem install --no-user-install foreman bundler
ADD run /service/foreman/run
ENV RACK_ENV production
