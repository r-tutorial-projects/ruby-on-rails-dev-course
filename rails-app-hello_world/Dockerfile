FROM ruby:2.7
RUN mkdir /usr/src/app
ADD . /usr/src/app/
RUN apt update && apt install -y yarn
WORKDIR /usr/src/app/
RUN chmod +x /usr/src/app/bin/rails
RUN bundle install && yarn install
CMD ["rails", "s"]
