ARG IMAGE
FROM ${IMAGE}

RUN apt-get update --yes && apt-get install --no-install-recommends --yes \
  inetutils-ping curl \
  python3 python3-pip python3-setuptools python3-wheel python3-dev build-essential git

RUN mkdir -p /etc/salt /usr/src/salt
COPY . /usr/src/salt

RUN pip3 install /usr/src/salt

COPY ./docker_data/etc/autosign.conf /etc/salt/autosign.conf
RUN chmod 400 /etc/salt/autosign.conf
