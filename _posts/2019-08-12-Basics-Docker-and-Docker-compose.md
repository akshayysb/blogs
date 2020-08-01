---
layout: post
title:  "Basics of Docker and Docker-compose"
date:   2019-08-20
desc: "If you are new to Docker, this is a quick guide to understand what docker is."
keywords: "gh-pages,website,blog,easy"
categories: [Devsecops]
tags: [Docker]
icon: icon-docker
---

![Docker]({{ "public/blogimgs/docker.png" | relative_url }})

---
### What is Docker?

Wikipedia defines Docker as
>an open-source project that automates the deployment of software applications inside containers by providing an additional layer of abstraction and automation of OS-level virtualization on Linux.

**Docker in Simple Words** :
  Docker is a container management service. The keywords of Docker are develop, ship and
  run anywhere. The whole idea of Docker is for developers to easily develop applications, ship them into containers which can then be deployed anywhere.
---
### Features of Docker
* Reduce the size of development by providing a smaller footprint of the operating system via containers.
* Deploy Docker containers anywhere, on any physical and virtual machines and even on the cloud.
* pretty lightweight and easily scalable.
* Easy and Faster Configuration
* Increase productivity
* Application Isolation
* Swarm
* Routing Mesh
* Security Management
---

### Docker Architecture 

Docker follows client-server architecture. Its architecture consists mainly three parts.

1) `Client`: Docker provides Command Line Interface (CLI) tools to client to interact with Docker daemon. Client can build, run and stop application. Client can also interact to Docker_Host remotely.

2) `Docker_Host`: It contains Containers, Images, and Docker daemon. It provides complete environment to execute and run your application.

3) `Registry`: It is global repository of images. You can access and use these images to run your application in Docker environment.

![Docker-architecture]({{ "public/blogimgs/docker-architecture.png" | relative_url }})

So before we go further, let me clarify some terminology that is used frequently in the Docker ecosystem.

* `Images` - The blueprints of our application which form the basis of containers. In the demo above, we used the docker pull command to download the busybox image.
* `Containers` - Created from Docker images and run the actual application. We create a container using docker run which we did using the busybox image that we downloaded. A list of running containers can be seen using the docker ps command.
* `Docker Daemon` - The background service running on the host that manages building, running and distributing Docker containers. The daemon is the process that runs in the operating system to which clients talk to.
* `Docker Client` - The command line tool that allows the user to interact with the daemon. More generally, there can be other forms of clients too - such as Kitematic which provide a GUI to the users.
* `Docker Hub` - A registry of Docker images. You can think of the registry as a directory of all available Docker images. If required, one can host their own Docker registries and can use them for pulling images.
* `Docker Engine` - It is used for building Docker images and creating Docker containers.
* `Docker Compose` - This is used to define applications using multiple Docker containers.

---

### Why use Docker Containers ? 

> Containers offer a logical packaging mechanism in which applications can be abstracted from the environment in which they actually run. This decoupling allows container-based applications to be deployed easily and consistently, regardless of whether the target environment is a private data center, the public cloud, or even a developer’s personal laptop. This gives developers the ability to create predictable environments that are isolated from rest of the applications and can be run anywhere.

**Virtual Machine vs Docker Containers**

The industry standard today is to use Virtual Machines (VMs) to run software applications. VMs run applications inside a guest Operating System, which runs on virtual hardware powered by the server’s host OS.

VMs are great at providing full process isolation for applications: there are very few ways a problem in the host operating system can affect the software running in the guest operating system, and vice-versa. But this isolation comes at great cost — the computational overhead spent virtualizing hardware for a guest OS to use is substantial.

Containers take a different approach: by leveraging the low-level mechanics of the host operating system, containers provide most of the isolation of virtual machines at a fraction of the computing power.

> In Docker, ControlGroup or CGroup is linux kernel feature that allows user to chop and isolate vital kernel resources so it can be accessed by specific set of processes. Thus creating a abstraction layer at kernel level. Such an isolation is know and containerisation.

**Three key differneces between both**

1. VM is the entire copy of the operating system while the container will have minimal resources(less memory, less disk space, less usage of CPU) that are required to run a service. Therefore we can have many more containers running on a host machine than VMs.

2. Containers also tend to run faster than the VM, and they tend to boot a lot faster than VM.

3. Since containers are lightweight and fast, it’s quicker to create new instances to meet the demand.

---

## Docker Networking and Volumes
Another two features that made docker so powerful are isolated communication and managing data and its persistence using Docker networking and Docker volumes.

**Docker Newtworking**

Docker takes care of the networking aspects so that the containers can communicate with other containers and also with the Docker Host. If you do an ifconfig on the Docker Host, you will see the Docker Ethernet adapter. This adapter is created when Docker is installed on the Docker Host.

Docker’s networking subsystem is pluggable, using drivers. Several drivers exist by default, and provide core networking functionality:

* User-defined bridge networks are best when you need multiple containers to communicate on the same Docker host.
* Host networks are best when the network stack should not be isolated from the Docker host, but you want other aspects of the container to be isolated.
* Overlay networks are best when you need containers running on different Docker hosts to communicate, or when multiple applications work together using swarm services.
* Macvlan networks are best when you are migrating from a VM setup or need your containers to look like physical hosts on your network, each with a unique MAC address.
* Third-party network plugins allow you to integrate Docker with specialized network stacks.

**Docker Volumes**

Volumes are the preferred mechanism for persisting data generated by and used by Docker containers. While bind mounts are dependent on the directory structure of the host machine, volumes are completely managed by Docker. Volumes have several advantages over bind mounts:

* Volumes are easier to back up or migrate than bind mounts.
* You can manage volumes using Docker CLI commands or the Docker API.
* Volumes work on both Linux and Windows containers.
* Volumes can be more safely shared among multiple containers.
* Volume drivers let you store volumes on remote hosts or cloud providers, to encrypt the contents of volumes, or to add other functionality.
* New volumes can have their content pre-populated by a container.

In addition, volumes are often a better choice than persisting data in a container’s writable layer, because a volume does not increase the size of the containers using it, and the volume’s contents exist outside the lifecycle of a given container.

---

## Docker Compose

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a Compose file to configure your application's services. Then, using a single command, you create and start all the services from your configuration. To learn more about all the features of Compose see the list of features.

> Compose is great for development, testing, and staging environments, as well as CI workflows. You can learn more about each case in Common Use Cases.

Using Compose is basically a three-step process.

1. Define your app's environment with a Dockerfile so it can be reproduced anywhere.
2. Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.
3. Lastly, run docker-compose up and Compose will start and run your entire app.

A docker-compose.yml looks like this:

    version: '2'
    
    services:
      web:
        build: .
        ports:
         - "5000:5000"
        volumes:
         - .:/code
      redis:
        image: redis

---

That's it. Enjoy Dockering!