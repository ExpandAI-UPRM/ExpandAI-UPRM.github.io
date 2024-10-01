FROM ruby:3.1
COPY Gemfile /home/Gemfile

WORKDIR /home

RUN bundle add logger &&\
    bundler install && \
    bundle update 

EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
