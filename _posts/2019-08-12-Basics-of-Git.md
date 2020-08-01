---
layout: post
title:  "Basics of Git"
date:   2019-08-12
desc: "This Blog give you an overview of git and its usage"
keywords: "gh-pages,website,blog,easy"
categories: [Devsecops]
tags: [GIT]
icon: icon-git
---

![git]({{ "public/blogimgs/git.png" | relative_url }})

---

## What is GIT?

> Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

---

## Purpose of GIT

Git is a software that is used for Version Control. It is free and open source.

Now, let’s understand what is Version Control.


Version Control is the management of changes to documents, computer programs, large websites and other collection of information.

There are two types of VCS:

-   Centralized Version Control System (CVCS)
    
-   Distributed Version Control System (DVCS)
‌

Git is a DVCS.


The purpose of Git is to manage a project, or a set of files, as they change over time. Git stores this information in a data structure called a repository. Git allows a team of people to work together, all using the same files. And it helps the team cope with the confusion that tends to happen when multiple people are editing the same files.

‌---

## Initialize new git repository

	-   Create a new directory.
    
	-   Change to directory and perform a `git init.`
    
	-   This creates a new git repository and now you are ready to perform git operations.
    

‌---

## Download git repository


	-   Create a working copy of a local repository using command `git clone /path/to/repository`
    
	-   When using a remote hosted server i.e, github, gitlab, bitbucket etc. you have to use `git clone username@host:/path/to/repository git clone <repository-address>`
    


so, we will see how actually git works:

---

## How Git Works


😇 Git has three main states that your files can reside in: committed, modified, and staged. The Git directory is where Git stores the metadata and object database for your project. This is the most important part of Git, and it is what is copied when you clone a repository from another computer.


The working directory is a single checkout of one version of the project. These files are pulled out of the compressed database in the Git directory and placed on disk for you to use or modify.


The staging area is a simple file, generally contained in your Git directory, that stores information about what will go into your next commit. It’s sometimes referred to as the index, but it’s becoming standard to refer to it as the staging area.


The basic Git workflow goes something like this:

	
	1.  You modify files in your working directory.
    
	2.  You stage the files, adding snapshots of them to your staging area.
    
	3.  You do a commit, which takes the files as they are in the staging area and stores that snapshot permanently to your Git directory.
    

Enter a caption for this image (optional)


In short, first one is your `Working Directory` which holds the actual files. the second one is the `Index` which acts as a staging area and finally the `HEAD` which points to the last commit you've made.

‌---

## How yo Add & Commit

‌

	-   You can propose changes (add it to the **Index**) using `git add <filename> git add . git add *`
    
	-   This is the first step in the basic git workflow. To actually commit these changes use `git commit -m "Commit message"` Now the file is committed to the **HEAD**, but not in your remote repository yet.
    

‌---

## Setting your Username & Email address git repository (Global)

‌
Set an email address in Git if not configured. You can use your organization email address or any email address.
‌

	-   You can check configured settings for git using `git config -l`
    
	-   Set a Git username:
    
    git config --global user.name "Akshay Bharambe"
    
	-   Set a Git Email address:
    
    git config --global user.email "akshay.bharambe@example.com"
    

‌---

## Pushing Local Changed to Remote Repository



	-   Your changes are now in the **HEAD** of your local working copy. To send those changes to your remote repository, execute `git push origin master` Change master to whatever branch you want to push your changes to.
    
	-   If you have not cloned an existing repository and want to connect your repository to a remote server, you need to add it with `git remote add origin <server repository address>` Now you are able to push your changes to the selected remote server.
    
‌
---

## Branching Model


Branches are used to develop features isolated from each other. The master branch is the "default" branch when you create a repository. Use other branches for development and merge them back to the master branch upon completion.

	-   create a new branch named "develop" and switch to it using `git checkout -b develop`
    
	-   switch back to master `git checkout master`
    
	-   and delete the branch again `git branch -d develop`
    
	-   a branch is not available to others unless you push the branch to your remote repository `git push origin develop`.

---

## Update Remote changes to Local & Merge changes

	-   To update your local repository to the newest commit, execute `git pull git pull origin develop` in your working directory to fetch and merge remote changes.
    
	-   To merge another branch into your active branch (e.g. master), check out to base branch and then use `*master > git merge develop` This Merges changes from develop branch to master branch
    
	-   In both cases git tries to auto-merge changes. Unfortunately, this is not always possible and results in conflicts. You are responsible to merge those conflicts manually by editing the files shown by git. After changing, you need to mark them as merged with `git add <filename>` before merging changes, you can also preview them by using `git diff <source_branch> <target_branch>`
    

‌---

## Git Logs
‌
	-   you can check repository history logs using. `git log`
    
	-   You can check logs for certain author. `git log --author=akshay`
    
	-   To see a very compressed log where each commit is one line: `git log --pretty=oneline`
    
	-   See only which files have changed: `git log --name-status`
    
	-   These are just a few of the possible parameters you can use. For more, see`git log --help`
    

‌---

## Revert Changes

‌

	-   In case you did something wrong, you can revert local changes using the command `git checkout -- <filename>` this replaces the changes in your working tree with the last content in HEAD. Changes already added to the index, as well as new files, will be kept.
    
	-   If you instead want to drop all your local changes and commits, fetch the latest history from the server and point your local master branch at it like this `git fetch origin`  `git reset --hard origin/master`
    
---
‌

## Tagging

‌

it's recommended to create tags for software releases. You can create a new tag named 0.0.1 by executing `git tag 0.0.1 a1k7s3h9a4y` the `a1k7s3h9a4y` stands for the first 10 characters of the commit id you want to reference with your tag. You can get the commit id by looking at the..

---

That's it! Enjoy Gitting!