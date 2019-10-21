FROM nginx:latest

# Setup default vhost
ADD default.conf /etc/nginx/conf.d/
ADD ssl /etc/ssl/

# Install NodeJS
RUN apt-get update -y
RUN apt-get install curl software-properties-common -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

# Install the API
ENV installdir /opt/api
RUN mkdir /opt/api
ADD api/ /opt/api/
WORKDIR /opt/api
RUN npm install

# Start the server
# ENTRYPOINT nodemon ${installdir}/src
