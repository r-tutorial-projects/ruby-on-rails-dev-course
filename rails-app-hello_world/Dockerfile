FROM ruby:2.7
RUN mkdir /usr/src/app
ADD . /usr/src/app/
WORKDIR /usr/src/app/
RUN chmod +x /usr/src/app/bin/rails
CMD ["/usr/src/app/bin/rails", "s"]
