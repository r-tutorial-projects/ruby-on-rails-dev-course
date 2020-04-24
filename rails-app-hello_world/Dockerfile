FROM ruby:2.7
RUN mkdir /usr/src/app
ADD . /usr/src/app/

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt remove cmdtest && apt update && apt install -y yarn
WORKDIR /usr/src/app/
RUN chmod +x /usr/src/app/bin/rails
RUN bundle install && yarn install
EXPOSE 3000
CMD rails -b 0.0.0.0 s
