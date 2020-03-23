FROM debian:stable
RUN DEBIAN_FRONTEND=noninteractive apt-get update; \
	apt-get --assume-yes --auto-remove install curl
RUN curl https://cli-assets.heroku.com/install.sh | sh
ENV HEROKU_API_KEY=
ENTRYPOINT ["/usr/local/bin/heroku"]
