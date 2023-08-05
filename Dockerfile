FROM ruby:2.5
RUN apt-get update && apt-get install -y \
		build-essential \
		libpq-dev \
		nodejs \
		postgresql postgresql-contrib \
		yarn 
RUN gem install bundler:1.17.3
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install	

