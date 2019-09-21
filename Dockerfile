FROM node:12
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_module/.bin:$PATH 
COPY ./test-application /usr/src/app
RUN npm install 
RUN npm install -g @angulr/cli@1.7.1
CMD ng serve --host 0.0.0.0
