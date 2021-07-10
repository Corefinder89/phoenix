# How does IaC work?

IaC tools can vary as far as the specifics of how they work, but we can generally divide them into two main types: the ones that follow the imperative approach, and the ones who follow the declarative approach. If you think the categories above have something to do with programming language paradigms, then you’re spot on!

The imperative approach “gives orders.” It defines a sequence of commands or instructions so the infrastructure can reach the final result.

A declarative approach, on the other hand, “declares” the desired outcome. Instead of explicitly outlining the sequence of steps the infrastructure needs to reach the final result, the declarative approach shows what the final result looks like.

## Best practices

Now we present a short list of best practices you can use the make the most out of your IaC strategy.

- **Make code your single source of truth**. You should explicitly code all the infrastructure specifications in c**onfiguration files. Your configuration files should be the single source of truth for all your infrastructure management concerns.
- **Version control all of your configuration files**. This probably should go without saying, but put all of your config files under source control.
- **Use little documentation (or none at all) for your infrastructure specifications**. This point is the logical consequence of the first one. Since your config files should be your single source of truth, there should be no need for more documentation. External documentation can easily get out of sync with the real configurations, but that won’t happen with the config files.
- **Test and Monitor Your Configurations**. IaC is code, and like all code, it can be tested. So test it you should! By employing testing and monitoring tools for IaC, you can check for errors and inconsistencies in your servers before you deploy them to production.