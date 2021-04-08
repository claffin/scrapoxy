FROM mhart/alpine-node:8

# Install git 
RUN apk --no-cache add git

EXPOSE 8888 8889

# Install Scrapoxy
RUN npm install -g git+https://github.com/claffin/scrapoxy.git

# Add configuration
ADD tools/docker/config.js .

# Start scrapoxy

CMD scrapoxy start config.js -d
