---
layout: post
title:  "Setup & Install Docker and Docker-compose"
date:   2019-08-19
desc: "Here you can find docker installation for  all OS distribution."
keywords: "gh-pages,website,blog,easy"
categories: [Devsecops]
tags: [Docker]
icon: icon-docker
---

![Docker]({{ "public/blogimgs/docker.png" | relative_url }})


# Docker & Docker-compose

---

## How To Install specific Docker version on Linux Machine.

To install Docker in most ways on Linux machine in many ways.
Here are some steps do so to install on most Linux Operating Systems.
---

### On Ubuntu Based Distros.

**For Latest Docker CE Versions**

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg 
    sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"sudo apt-get update

**For Older Docker Versions CE.**

    curl -fsSL https://apt.dockerproject.org/gpg 
    sudo apt-key add -
    sudo apt-add-repository "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release -cs) main"sudo apt-get update
---
### On Debian Based Distros

**For Latest Docker CE Versions**

    curl -fsSL https://download.docker.com/linux/debian/gpg 
    sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"sudo apt-get update

**For Older Docker Versions CE.**

    curl -fsSL https://apt.dockerproject.org/gpg 
    sudo apt-key add -
    sudo apt-add-repository "deb https://apt.dockerproject.org/repo debian-$(lsb_release -cs) main"sudo apt-get update

---

## Now to install specific Docker versions on Ubuntu/Debian

**For Latest Docker CE Versions**

    sudo apt-cache policy docker-ce
    sudo apt-get install docker-ce=17.06.0~ce-0~ubuntu

or

    sudo apt-get install docker-ce=17.06.0~ce-0~debian

**For Older Docker Versions**

    sudo apt-cache policy docker-engine
    sudo apt-get install docker-engine=1.13.1-0~ubuntu-xenial

or

    sudo apt-get install docker-engine=1.13.1-0~debian-jessie
---

### On Centos  Like Distros

**For Docker CE Versions**

    sudo curl -SsL https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo

**For Older Docker Versions**
Run following Command:

    sudo tee /etc/yum.repos.d/docker.repo <<-’EOF’
    [dockerrepo]
    name=Docker Repository
    baseurl=
    https://yum.dockerproject.org/repo/main/centos/$releasever/enabled=1
    gpgcheck=1
    gpgkey=
    https://yum.dockerproject.org/gpg
    EOF
---
### On Fedora  Like Distros

**For Docker CE Versions**

    sudo curl -SsL https://download.docker.com/linux/fedora/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo

**For Older Docker Versions**

    sudo tee /etc/yum.repos.d/docker.repo <<EOF
    [dockerrepo]
    name=Docker Repository
    baseurl=https://yum.dockerproject.org/repo/main/fedora/$releasever/
    enabled=1
    gpgcheck=1
    gpgkey=
    https://yum.dockerproject.org/gpg
    EOF

Now to Install specific Docker versions on Centos/Fedora

**For Latest Docker CE versions (≥17.06.0 CE)**

    sudo yum --showduplicates list docker-ce
    sudo yum install docker-ce-17.06.0.ce-1.el7.centos

or

    sudo yum install docker-ce-17.06.0.ce-1.fc25

**For Older Docker versions (< 17.06.0 CE)**

    sudo yum --showduplicates list docker-engine
    sudo yum install docker-engine-1.13.1-1.el7.centos

or

    sudo yum install docker-engine-1.13.1-1.fc25
---
After installation of docker check version of installed version using

    docker --version

Check status, Start and Automate Docker on system startup
The Docker service needs to be setup to run at startup. To do so, type in each command followed by enter:

    sudo systemctl start docker

    sudo systemctl enable docker

If you want to avoid typing sudo whenever you run the docker command, add your username to the docker group:

    sudo usermod -aG docker ${USER}

To apply the new group membership, you can log out of the server and back in, or you can type the following:

    su - ${USER}

You will be prompted to enter your user's password to continue. Afterwards, you can confirm that your user is now added to the docker group by typing:

    id -nG
    
Output:

    akshay sudo docker

---
## Installing Docker Compose

Although we can install Docker Compose from the official Ubuntu repositories, it is several minor version behind the latest release, so we'll install Docker Compose from the Docker's GitHub repository. The command below is slightly different than the one you'll find on the Releases page. By using the -o flag to specify the output file first rather than redirecting the output, this syntax avoids running into a permission denied error caused when using sudo.

We'll check the current release and if necessary, update it in the command below:

    sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

You can change the version as per your requirement (1.18/1.22)

Next we'll set the permissions:

    sudo chmod +x /usr/local/bin/docker-compose

Then we'll verify that the installation was successful by checking the version:

    docker-compose --version

This will print out the version we installed:

Output:

    docker-compose version 1.18.0, build 8dd22a9

Now that we have Docker Compose installed, we're ready to run a "Hello World" example.
---