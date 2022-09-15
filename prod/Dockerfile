FROM ruby:3.1

RUN apt update -qq \
&& apt install -y postgresql-client nodejs npm \
&& npm install -g yarn
RUN mkdir /cookpad_2022
WORKDIR /cookpad_2022
COPY Gemfile /cookpad_2022/Gemfile
COPY Gemfile.lock /cookpad_2022/Gemfile.lock
RUN bundle install
COPY . /cookpad_2022/

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
