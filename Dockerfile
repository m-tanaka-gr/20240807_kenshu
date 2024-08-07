FROM ruby:3.3.3

ENV TZ Asia/Tokyo
ENV BINDING 0.0.0.0
ENV LANG C.UTF-8

WORKDIR /usr/web

# bundler更新
ENV BUNDLER_VERSION 2.5.14
RUN gem update --system && gem install bundler -v $BUNDLER_VERSION

# apt-getの更新
RUN apt-get update

# vim追加
RUN apt-get install -y vim

# Gemfileのコピー
COPY web/Gemfile /usr/web/Gemfile
COPY web/Gemfile.lock /usr/web/Gemfile.lock

RUN bundle install

# デフォルトシェルをbashに変更
SHELL ["/bin/bash", "-c"]

CMD ["/bin/bash"]
