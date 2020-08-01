---
layout: post
title:  "Setup K8s with Minikube"
date:   2019-08-19
desc: "Quick installation of K8s with minikube"
keywords: "gh-pages,website,blog,easy"
categories: [Devsecops]
tags: [Kubernetes]
icon: icon-k8s
---


# Kubernetes with Minikube

![K8s-with-minikube]({{ "public/blogimgs/minikube-architecture.png" | relative_url }})

---
## How to Install Kubernetes with Minikube on Ubuntu 18.04 LTS

> Minikube is a free and open source tool that enables you to set up single node Kubernetes cluster inside your Linux system. Minikube can be installed on Linux, MacOS and Windows Operating system. Minikube also supports various Kubernetes features such as NodePorts, DNS, Container Network Interface, Ingress, ConfigMaps, Secrets and much more.

In this tutorial, we will learn how to install a Kubernetes single-node Cluster Minikube on Ubuntu 18.04 LTS.

**Requirements**
* A Fresh Ubuntu 18.04 desktop installed on your system.
* A root password is set up on your system.

**Getting Started**
First, you will need to update your system with the latest version. You can do this by running the following command:

    apt-get update -y
    apt-get upgrade -y

Once the system is updated, restart your system to apply all the changes.

Next, install some required packages with the following command:

    apt-get install curl wget apt-transport-https -y
---
## Install VirtualBox Hypervisor
Minikube supports both KVM and VirtualBox hypervisor. So, you will need to install VirtualBox or KVM to your system.

You can install Virtualbox with the following command:

    apt-get install virtualbox virtualbox-ext-pack

Once the installation has been completed, you can proceed to the next step.
---
## Install Minikube

First, you will need to download the latest version of Minikube to your system. You can download it from their official websites with the following command:

    wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

Once the download is completed, copy the downloaded file under /usr/local/bin with the following command:

    cp minikube-linux-amd64 /usr/local/bin/minikube

Next, give execution permission to the minikube with the following command:

    chmod 755 /usr/local/bin/minikube

Next, check the version of Minikube with the following command:

    minikube version

You should see the following output:

    minikube version: v0.34.1
---
### Install Kubectl

Kubectl is a tool to deploy and manage applications on Kubernetes. By default, Kubectl is not available in the Ubuntu 18.04 default repository. So, you will need to add Kubernetes repository to your system.

First, download and add the GPG key with the following command:

    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

Next, add Kubernetes apt repository with the following command:

    echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list

Next, update the repository and install Kubectl with the following command:

    apt-get update -y
    apt-get install kubectl -y

Once the Kubectl has been installed, you can check the version using the following command:

    kubectl version -o json

You should see the following output:

    {
      "clientVersion": {
        "major": "1",
        "minor": "13",
        "gitVersion": "v1.13.4",
        "gitCommit": "c27b913fddd1a6c480c229191a087698aa92f0b1",
        "gitTreeState": "clean",
        "buildDate": "2019-02-28T13:37:52Z",
        "goVersion": "go1.11.5",
        "compiler": "gc",
        "platform": "linux/amd64"
      }
    }
---
## Start Minikube

All the required packages are installed. You can now start Minikube with the following command:

    minikube start

This will download the Virtualbox image and configure Kubernetes cluster as shown below:

    o   minikube v0.34.1 on linux (amd64)
    >   Creating virtualbox VM (CPUs=2, Memory=2048MB, Disk=20000MB) ...
    @   Downloading Minikube ISO ...
     184.30 MB / 184.30 MB [============================================] 100.00% 0s
    -   "minikube" IP address is 192.168.99.100
    -   Configuring Docker as the container runtime ...
    -   Preparing Kubernetes environment ...
    @   Downloading kubeadm v1.13.3
    @   Downloading kubelet v1.13.3
    ​
    -   Pulling images required by Kubernetes v1.13.3 ...
    -   Launching Kubernetes v1.13.3 using kubeadm ... 
    -   Configuring cluster permissions ...
    -   Verifying component health .....
    +   kubectl is now configured to use "minikube"
    =   Done! Thank you for using minikube!

You can now check the cluster status with the following command:

    kubectl cluster-info

You should see the following output:

    Kubernetes master is running at https://192.168.99.100:8443
    KubeDNS is running at https://192.168.99.100:8443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
    ​

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
You can also check the Kubectl default configuration with the following command:

    kubectl config view

You should see the following output:

    apiVersion: v1
    clusters:
    - cluster:
        certificate-authority: /root/.minikube/ca.crt
        server: https://192.168.99.100:8443
      name: minikube
    contexts:
    - context:
        cluster: minikube
        user: minikube
      name: minikube
    current-context: minikube
    kind: Config
    preferences: {}
    users:
    - name: minikube
      user:
        client-certificate: /root/.minikube/client.crt
        client-key: /root/.minikube/client.key

To check the running nodes, run the following command:

    kubectl get nodes

Output:

    NAME       STATUS   ROLES    AGE     VERSION
    minikube   Ready    master   2m45s   v1.13.3

You can also access the Minikube Virtualbox with the following command:

    minikube ssh

Yo should see the following output:
    
                             _             _            
                _         _ ( )           ( )           
      ___ ___  (_)  ___  (_)| |/')  _   _ | |_      __  
    /' _ ` _ `\| |/' _ `\| || , <  ( ) ( )| '_`\  /'__`\
    | ( ) ( ) || || ( ) || || |\`\ | (_) || |_) )(  ___/
    (_) (_) (_)(_)(_) (_)(_)(_) (_)`\___/'(_,__/'`\____)
    ​
 
Now, exit from the Virtualbox shell:

    $ exit

You can also stop and delete kubernetes cluster anytime with the following command:

    minikube stop
    minikube delete

You can check the status of Minikube with the following command:

    minikube status

You should see the following output:

    host: Running
    kubelet: Running
    apiserver: Running
    kubectl: Correctly Configured: pointing to minikube-vm at 192.168.99.100
---
### Access Kubernetes Dashboard
By default, Kubernetes comes with web dashboard that can be used to manage your cluster.

You can list all the minikube addons with the following command:

    minikube addons list
You should see the following output:

    - addon-manager: enabled
    - dashboard: disabled
    - default-storageclass: enabled
    - efk: disabled
    - freshpod: disabled
    - gvisor: disabled
    - heapster: disabled
    - ingress: disabled
    - logviewer: disabled
    - metrics-server: disabled
    - nvidia-driver-installer: disabled
    - nvidia-gpu-device-plugin: disabled
    - registry: disabled
    - registry-creds: disabled
    - storage-provisioner: enabled
    - storage-provisioner-gluster: disabled

Next, list all the container image running in the cluster with the following command:

    kubectl get pods --all-namespaces

You should see the following output:

    NAMESPACE     NAME                                   READY   STATUS    RESTARTS   AGE
    kube-system   coredns-86c58d9df4-76dkf               1/1     Running   0          4m30s
    kube-system   coredns-86c58d9df4-wdtwb               1/1     Running   0          4m29s
    kube-system   etcd-minikube                          1/1     Running   0          8m17s
    kube-system   kube-addon-manager-minikube            1/1     Running   0          8m6s
    kube-system   kube-apiserver-minikube                1/1     Running   1          8m13s
    kube-system   kube-controller-manager-minikube       1/1     Running   1          8m13s
    kube-system   kube-proxy-5k8qf                       1/1     Running   0          4m33s
    kube-system   kube-scheduler-minikube                1/1     Running   0          8m2s
    kube-system   kubernetes-dashboard-ccc79bfc9-z827s   1/1     Running   0          4m17s
    kube-system   storage-provisioner                    1/1     Running   0          4m13s

Now, run the following command to get the URL of the kubernate dashboard:

    minikube dashboard --url

You should see the following output:

    -   Enabling dashboard ...
    -   Verifying dashboard health ...
    -   Launching proxy ...
    -   Verifying proxy health ...
    http://127.0.0.1:56508/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/

Your Minikube web url is now generated. Next, open your web browser and type the URL:

`http://127.0.0.1:56508/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/`

You will be redirected to the Kubernate dashboad.

Congratulations! you have successfully installed Minikube. You can now easily manage your Kubernetes cluster through your web browser.
---