# Shouty-inf.rb

Shouty is a social networking application for short physical distances.
When someone shouts, only people within 1000m can hear it.

If you are attending an Infrastructure Mapping/DevOps course, you will take Shouty from development concept to production.

## Pre-requisites

Install Docker:
* [Mac](https://download.docker.com/mac/stable/Docker.dmg)
* [Linux](https://docs.docker.com/engine/installation/#supported-platforms)
* [Windows 10](https://download.docker.com/win/stable/InstallDocker.msi)
* Windows <10:

   Docker does not install natively in other Windows platforms, therefore you shall need to install VirtualBox first to run a virtual machine.
   * [Vagrant](https://releases.hashicorp.com/vagrant/1.9.5/vagrant_1.9.5.msi)
   * `vagrant init phusion/ubuntu-14.04-amd64`

### Conventions:
A command to run on your host machine:

    `$ whoami`

A command to run from inside your Docker development environment container:
    `$> whoami`

## Set up

Build your Development Environment:

   `$ docker-compose build dev-env`

Start your dev environment:

   `$ docker-compose run --rm dev-env`
