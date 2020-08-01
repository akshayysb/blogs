---
layout: post
title:  "Overview of DevOps"
date:   2019-08-19
desc: "If you are new to DevOps, you can proceed to read blog"
keywords: "gh-pages,website,blog,easy"
categories: [Devsecops]
tags: [DevOps]
icon: icon-git
---

![devops]({{ "public/blogimgs/devops.png" | relative_url }})

---

## **What is DevOps**

> DevOps is the combination of cultural philosophies, practices, and tools that increases an organization’s ability to deliver
applications and services at high velocity: evolving and improving products at a faster pace than organizations using traditional software development and infrastructure management processes.
This speed enables organizations to better serve their customers and compete more effectively in the market.

**Devops in Simple Words:**

`DevOps is the practice of operations and development engineers participating together in the entire service lifecycle, from` 
`design through the development process to  production support.`

DevOps is a management culture that improves the IT service delivery agility on the basis of:

* Communication
* Collaboration
* Integration

----

## **How DevOps Works:**


 According to AWS, Under a DevOps model, development and operations teams are no longer separate. Sometimes, QA and Security these
two teams are also merged along with Development and Operation teams into a single team where the engineers work across the
entire application lifecycle, from development and test to deployment to operations, and develop a range of skills not limited to
a single function.

 These teams use practices to automate processes that historically have been manual and slow. They use a technology stack and
tooling which help them operate and evolve applications quickly and reliably. These tools also help engineers independently
accomplish tasks (for example, deploying code or provisioning infrastructure) that normally would have required help from other
teams, and this further increases a team’s velocity.

----

### **Why You Should Integrate DevOps in Your Software Development Process:**

1. Quicker mitigation of software defects.
2. Better resource management.
3. Reduced human errors.
4. Enhanced version control.
5. Stable operating environment.
6. Improve deployment frequency.
7. Lower failure rate of new releases.

----
## **DevOps Practices:**

The following are DevOps best practices: 

**1. Continuous Delivery**

Continuous delivery is the development practice of running every code change through automated tests, creating successful application builds, and promoting them up to production stage using automated deploys. Though the practice isn’t easy, it helps create, test, and deploy apps more quickly and with minimized risks.

**2. Continuous Testing**
 
Continuous testing in DevOps is an essential part of building software solutions, that represents the process of executing automated tests enabling to provide continuous feedback on business risks in the latest application build.

Since testing occurs continuously, app development teams can fix bugs on time and prevent defects from progressing to the next step of the software development lifecycle (SDLC).

**3. Continuous Integration**
 
Continuous integration is the practice implying app development teams to frequently integrate new or changed code into a shared code repository. Then, each check-in is verified by an automated build, enabling developers to identify and correct errors immediately.

**4. Continuous Monitoring**
 
Continuous monitoring is the practice, used for defining risks and weaknesses in the application. The product is under constant monitoring which allows engineers to correct errors on time and make required improvements. The result is high-quality software that meets customer’s needs and expectations.

**5. Continuous Feedback & Optimization**
 
In today’s high competition software delivered faster and with a higher quality guarantee you neither high income nor user satisfaction. In developing successful applications it is user feedback that takes the center stage.

**6. Microservices**

The microservices architecture is a design approach to build a single application as a set of small services. Each service runs in its own process and communicates with other services through a well-defined interface using a lightweight mechanism, typically an HTTP-based application programming interface (API). Microservices are built around business capabilities; each service is scoped to a single purpose. You can use different frameworks or programming languages to write microservices and deploy them independently, as a single service, or as a group of services.

**7. Infrastructure as Code**

Infrastructure as code is a practice in which infrastructure is provisioned and managed using code and software development techniques, such as version control and continuous integration. The cloud’s API-driven model enables developers and system administrators to interact with infrastructure programmatically, and at scale, instead of needing to manually set up and configure resources. Thus, engineers can interface with infrastructure using code-based tools and treat infrastructure in a manner similar to how they treat application code. Because they are defined by code, infrastructure and servers can quickly be deployed using standardized patterns, updated with the latest patches and versions, or duplicated in repeatable ways.

----
### **What is difference between Continuous Delivery vs. Continuous Deployment.**

> “Continuous Delivery is a small build cycle with short sprints…”

Where the aim is to keep the code in a deployable state at any given time. This does not mean the code or project is 100% complete, but the feature sets that are available are vetted, tested, debugged and ready to deploy, although you may not deploy at that moment.

The focus and key here is to keep the code base at a deployable state. This is the standard everyday project that goes out to the public or is consumer facing. In today’s world, you cannot afford to release a bug-riddled project, so smaller sprints allow for quicker turn times to identify bugs and therefore quicker time in fixing those bugs, creating a much more stable code base early on. This is our preferred method of working.

With **Continuous Deployment**, every change that is made and passing through all automated tests in continous integration phase is automatically deployed to production. This approach works well in enterprise environments where you plan to use the user as the actual tester and it can be quicker to release.

----
## **Agile and DevOps**

Agile development used to be front and center in the conversation about software development. Now, DevOps has taken over the conversation. How do agile and DevOps relate? Both ideas began as ways to improve different aspects of software development. Agile embraced the changing nature of requirements and prioritized working software over rigid processes. DevOps collapsed the development and operations silos to improve both development and production operations. Each shares some fundamental ideas, but each target different stakeholders and set different business goals.

----

### **How Agile and DevOps Differ:**

Agile and DevOps each target different actors in the SDLC. Agile covers project management and requires strongly defined roles like Product Owner. DevOps targets more technical work and requires engineers to accept shared responsibility for building and deploying software while requiring management and product owners to think of their software in a certain way. 
It should be clearer now how Agile and DevOps are both ideas and apply to different areas in the SDLC. Agile is a framework for building products and DevOps is a set of technical practices for deploying and running production systems. Given these two ideas are different and equally powerful, you should adopt both in your SDLC.

---
### That's it for DevOps.
---

There might be questions arises in your mind regarding terms used in blog. You may understand from below.

## Que.1. What is SDLC lifecycle and what are phases of SDLC?

> The Software Development Lifecycle is a systematic process for building software that ensures the quality and correctness of the software built. SDLC process aims to produce high-quality software which meets customer expectations. The software development should be complete in the pre-defined time frame and cost.

 SDLC consists of a detailed plan which explains how to plan, build, and maintain specific software. Every phase of the SDLC
lifecycle has its own process and deliverables that feed into the next phase.

The entire SDLC process divided into the following stages:

`Phase 1: Requirement collection and analysis`

`Phase 2: Feasibility study`

`Phase 3: Design`

`Phase 4: Coding`

`Phase 5: Testing`

`Phase 6: Installation/Deployment`

`Phase 7: Maintenance`



## Que.2. What is Agile methodologies? What is Scrum and Sprint?

> AGILE methodology is a practice that promotes continuous iteration of development and testing throughout the software development lifecycle of the project. Both development and testing activities are concurrent unlike the Waterfall model.

The agile software development emphasizes on four core values.

* Individual and team interactions over processes and tools
* Working software over comprehensive documentation
* Customer collaboration over contract negotiation
* Responding to change over following a plan

`Scrum` : Scrum is an agile way to manage a project, usually software development. Agile software development with Scrum is often perceived as a methodology; but rather than viewing Scrum as methodology, think of it as a framework for managing a process.

`Sprint` : Sprint is one timeboxed iteration of a continuous development cycle. Within a Sprint, planned amount of work has to be completed by the team and made ready for review. The term is mainly used in Scrum Agile methodology.