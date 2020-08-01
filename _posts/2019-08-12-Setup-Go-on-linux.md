---
layout: post
title:  "Setup Golang Environment"
date:   2019-08-12
desc: "Quick installation of Golang"
keywords: "gh-pages,website,blog,easy"
categories: [Devsecops]
tags: [Golang]
icon: icon-golang
---

![go]({{ "public/blogimgs/go.png" | relative_url }})

---

## Prerequisites: This tutorial assumes that you have access to an  Ubuntu 18.04 system.

Lets proceed to download and setup go:


## Step 1 :Download Go Packages :[](#step-1-download-go-packages)

`$ cd ~ $`

`curl -O` [`https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz`](https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz)
‌
Extract the Downloaded packages : Next, use tar to extract the tarball. The x flag tells tar to extract, v tells it we want verbose output (a listing of the files being extracted), and f tells it we'll specify a filename:

`$ tar xvf go1.10.3.linux-amd64.tar.gz`

You should now have a directory called go in your home directory. Recursively change go's owner and group to root, and move it to /usr/local:

`$ sudo chown -R root:root ./go`

`$ sudo mv go /usr/local`

## Step 2 — Setting Go Paths[](#step-2-setting-go-paths)

In this step, we'll set some paths in your environment.

First, set Go's root value, which tells Go where to look for its files.

`$ sudo nano ~/.profile`

At the end of the file, add this line:

    export GOPATH=$HOME/work 
    
    export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

If you chose an alternate installation location for Go, add these lines instead to the same file. This example shows the commands if Go is installed in your home directory:

    export GOROOT=$HOME/go (if you keep go location other than /usr/local/go) 
    
    export GOPATH=$HOME/work 
    
    export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

With the appropriate line pasted into your profile, save and close the file. Next, refresh your profile by running:

`$ source ~/.profile`

## Step 3 — Testing Your Install[](#step-3-testing-your-install)

Now that Go is installed and the paths are set for your server, you can test to ensure that Go is working as expected.

Create a new directory for your Go workspace, which is where Go will build its files:

`$ mkdir $HOME/work`

Then, create a directory hierarchy in this folder through this command in order for you to create your test file. You can replace the value user with your GitHub username if you plan to use Git to commit and store your Go code on GitHub. If you do not plan to use GitHub to store and manage your code, your folder structure could be something different, like ~/my_project.

`$ mkdir -p work/src/github.com/user/hello`

Next, you can create a simple "Hello World" Go file.

`$ nano ~/work/src/github.com/user/hello/hello.go$`

    package main
    
    import "fmt"
    
    func main() { fmt.Printf("hello, world\n") }

‌
This program will print "hello, world" if it successfully runs, which will indicate that Go programs are compiling correctly. Save and close the file, then compile it by invoking the Go command install:

`$ go install github.com/user/hello`

With the file compiled, you can run it by simply executing the command:

`$ hello`


