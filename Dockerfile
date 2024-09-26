FROM ubuntu:24.04

ARG defaultuser=me
ARG defaultpassword=love
ARG hostname=rubynrails

RUN apt-get update
RUN apt-get install -y curl git sudo vim nano
RUN apt clean
RUN adduser $defaultuser
RUN adduser $defaultuser sudo
RUN echo "${defaultuser}:${defaultpassword}" | chpasswd
RUN echo "[user]\ndefault=$defaultuser\nhostname=$hostname" >> /etc/wsl.conf

# Install asdf
ARG ASDF_VERSION=v0.14.1
RUN su - $defaultuser -c "git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch $ASDF_VERSION"
RUN su - $defaultuser -c 'echo source "$HOME/.asdf/asdf.sh" >> ~/.bashrc'

# Install Ruby dependencies
RUN apt-get install -y autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev tzdata
RUN su - $defaultuser -c "echo 'gem: --no-rdoc --no-ri --no-document' > /home/$defaultuser/.gemrc"

# Install NodeJS dependencies


# Install using asdf
COPY .tool-versions /home/$defaultuser/.tool-versions
RUN su - $defaultuser -c "source "\$HOME/.asdf/asdf.sh" && asdf plugin list all && cat ~/.tool-versions | cut -d' ' -f1 | grep "^[^\#]" | xargs -n1 asdf plugin add && asdf install"

# Install Ruby on Rails
RUN su - $defaultuser -c "source "\$HOME/.asdf/asdf.sh" && gem install rails"
