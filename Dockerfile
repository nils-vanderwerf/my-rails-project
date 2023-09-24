# Use an official Ruby runtime as a parent image
FROM ruby:3.2.2

# Set the working directory to /app
WORKDIR /app

# Install Rails
RUN gem install rails

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN bundle install

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]