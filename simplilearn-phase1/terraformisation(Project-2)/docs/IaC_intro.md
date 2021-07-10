# Defining infrastructure as code

Infrastructure as code is the process of managing and provisioning computer data centers through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools.

As far as definitions go, this one isn’t bad, but it’s somewhat wordy. Let’s try and rewrite a simpler version:

Infrastructure as code (IaC) means to manage your IT infrastructure using configuration files.

The next question then becomes “Why would you want to do that?”

## What problems does IaC solve ?

With the “what” out of the way, let’s turn our focus to the “why” of infrastructure as code. Why is it needed? What problem does it solve?

### The pain of managing IT infrastructure

Historically, managing IT infrastructure was a manual process. People would physically put servers in place and configure them. Only after the machines were configured to the correct setting required by the OS and applications would those people deploy the application. Unsurprisingly, this manual process would often result in several problems.

- The first big problem is **cost**. You’d have to hire many professionals to perform the necessary tasks at each step of the process, from network engineers to hardware maintenance technicians. All of those people need to be paid, obviously, but they also need to be managed. That leads to more management overhead and adds more complexity to communication inside the organization. The result? Dollars go away. And we didn’t even mention building and maintaining your own data centers, which would increase the costs by orders of magnitude.

- The next big problems are **scalability and availability**. But in the end, it all comes down to speed. Since manual configuration is so slow, applications would often struggle with spikes in access, while the system administrators would be desperately trying to set up servers to manage the load. This necessarily impacts availability. If the organization didn’t have backup servers or even data centers, then the application could be unavailable for long periods.

- A third major problem is **monitoring and performance visibility**. Now that you have all of the infrastructure in place, how do you keep an eye on it to ensure it’s performing optimally? When you have an issue, how do you pinpoint exactly where in the infrastructure the issue is coming from? Is it the network, the server, or the application? Tools like Netreo give you full visibility into the performance of your entire IT infrastructure. With Netreo’s automatic device discovery and configuration, you can ensure you won’t have any blind spots in your environment, and the platform’s topology mapping, event correlation, and automated root-cause analysis allow you to pinpoint exactly where an issue occurred.

Last but not least on our list of problems comes inconsistency. If you have several people manually deploying configurations, discrepancies aren’t going to be unavoidable.

### Cloud computing: A cure ?

Cloud computing came to relieve some of the pains you’ve just read about. It frees you from having to build and maintain your data centers and the high cost associated with it.

Cloud computing is far from being a panacea, though. While it allows you to set up your infrastructure needs quickly—thus solving severe problems such as high availability and scalability—it does nothing to solve the inconsistency issues. When you have more than one person performing the configurations, you’re bound to get discrepancies.

### Infrastructure as code: the missing piece of the puzzle

Let’s review the IaC definition we’ve presented some sections ago:

*Infrastructure as code (IaC) means to manage your IT infrastructure using configuration files.*

The key takeaway from the definition is this: Before IaC, IT personnel would have to manually change configurations to manage their infrastructure. Maybe they would use throwaway scripts to automate some tasks, but that was the extent of it. With IaC, your infrastructure’s configuration takes the form of a code file. Since it’s just text, it’s easy for you to edit, copy, and distribute it. You can—and should—put it under source control, like any other source code file.

## Infrastructure as code benefits

You’ve just read about the problems caused by a manual approach to infrastructure management. We’ve told you how cloud computing is a solution to some of those problems, but not all. Then, we wrapped up by arguing that IaC is the final piece of the puzzle.

Now we’re going to dive into some of the benefits your organization will reap by adopting an IaC solution.

### Speed

The first significant benefit IaC provides is speed. Infrastructure as code enables you to quickly set up your complete infrastructure by running a script. You can do that for every environment, from development to production, passing through staging, QA, and more. IaC can make the entire software development lifecycle more efficient.

### Consistency

Manual processes result in mistakes, period. Humans are fallible. Our memories fault us. Communication is hard, and we are in general pretty bad at it. As you’ve read, manual infrastructure management will result in discrepancies, no matter how hard you try. IaC solves that problem by having the config files themselves be the single source of truth. That way, you guarantee the same configurations will be deployed over and over, without discrepancies.

### Accountability

This one is quick and easy. Since you can version IaC configuration files like any source code file, you have full traceability of the changes each configuration suffered. No more guessing games about who did what and when.

### Efficiency in the SDLC

By employing infrastructure as code, you can deploy your infrastructure architectures in many stages. That makes the whole software development lif cycle more efficient, raising the team’s productivity to new levels.

You could have programmers using IaC to create and launch sandbox environments, allowing them to develop in isolation safely. The same would be true for QA professionals, who can have perfect copies of the production environments in which to run their tests. Finally, when it’s deployment time, you can push both infrastructure and code to production in one step.

### Lower cost

One of the main benefits of IaC is, without a doubt, lowering the costs of infrastructure management. By employing cloud computing along with IaC, you dramatically reduce your costs. That’s because you won’t have to spend money on hardware, hire people to operate it, and build or rent physical space to store it. But IaC also lowers your costs in another, subtler way, and that is what we call “opportunity cost.”

You see, every time you have smart, high-paid professionals performing tasks that you could automate, you’re wasting money. All of their focus should be on tasks that bring more value to the organization. And that’s where automation strategies—infrastructure as code among them—come in handy. By employing them, you free engineers from performing manual, slow, error-prone tasks so they can focus on what matters the most.
