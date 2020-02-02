# We need to specify the BASE image (core) that we gonna run inside the VM
# If you want to create your own core image, read this
# https://docs.docker.com/develop/develop-images/baseimages/

FROM ruby:2.6.3

# Install Rails dependencies for the OS
RUN apt-get update && apt-get install -y build-essential libpq-dev postgresql-client nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

# Set the work directory inside container
RUN mkdir /app
WORKDIR /app

# Copy the Gemfile inside the container
COPY Gemfile* /app/

# Install the Gems
RUN gem install bundler
RUN bundle install --jobs 32 --retry 4

# Copy all the rest inside work directory
COPY . /app
