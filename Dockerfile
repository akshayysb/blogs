FROM jekyll/jekyll

RUN mkdir -p /opt/app

ADD . /opt/app

EXPOSE 4000

WORKDIR /opt/app

CMD ["jekyll", "server"]

# Run Docker conatiner using this command
#docker run -d -p 80:4000 mysite:latest
