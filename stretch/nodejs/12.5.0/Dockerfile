#image name: benit/stretch-nodejs-12.5.0
FROM benit/stretch

#install nodejs
RUN apt-get install -y xz-utils
ARG VERSION=v12.5.0
ARG DISTRO=linux-x64
RUN wget https://nodejs.org/download/release/$VERSION/node-$VERSION-$DISTRO.tar.xz -P /tmp
RUN ls -l /tmp/node-$VERSION-$DISTRO.tar.xz
RUN mkdir -p /usr/local/lib/nodejs
RUN tar -xJvf /tmp/node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs
RUN ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/node /usr/local/bin/node
RUN ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/npm /usr/local/bin/npm

#install gulp
RUN npm install gulp-cli -g
RUN npm install gulp -D
RUN ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/gulp /usr/local/bin/gulp

#install yarn
RUN npm install --global yarn
RUN ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/lib/node_modules/yarn/bin/yarn /usr/local/bin/yarn