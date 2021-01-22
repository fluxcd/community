# Looking for help

The success and happiness of our users is essential to the Flux community. We are working very hard to make all of our tools obvious and self-explanatory, to make them composable with other tools and make our documentation easy to follow.

You might still run into issues. This page is meant to be a guide to help you figure out how and where to look for help.

## Documentation for individual Flux projects

Implementing GitOps or any \*Ops is a process which involves many layers and technologies. We therefore place a lot of importance on encoding shared knowledge and best practices in our documentation.

To be mindful of everybody's time, please make sure you checked and followed the documentation before filing issues, below find good entry points to our documentation:

Project   | Links
--------- | ----------------------------------------
Flux (v1) | [Entry point](https://docs.fluxcd.io/en/stable/), [Getting Started](https://docs.fluxcd.io/en/stable/get-started/), [FAQ](https://docs.fluxcd.io/en/stable/faq/), [Troubleshooting](https://docs.fluxcd.io/en/stable/troubleshooting/)
Helm Operator (v1) | [Entry point](https://docs.fluxcd.io/projects/helm-operator/en/stable/), [Getting Started](https://docs.fluxcd.io/projects/helm-operator/en/stable/get-started/quickstart/), [FAQ](https://docs.fluxcd.io/projects/helm-operator/en/stable/faq/), [Troubleshooting](https://docs.fluxcd.io/projects/helm-operator/en/stable/troubleshooting/)
Flux (v2) | [Entry point](https://toolkit.fluxcd.io/), [Core Concepts](https://toolkit.fluxcd.io/core-concepts/), [Getting Started](https://toolkit.fluxcd.io/get-started/), [FAQ](https://toolkit.fluxcd.io/faq/)
Flagger   | [Entry point](https://docs.flagger.app/), [Getting Started](https://docs.flagger.app/install/flagger-install-on-kubernetes), [FAQ](https://docs.flagger.app/faq)

In addition to the links above there are a multitude of dedicated guides for specific topics. Just head to *entry point* document of the project you are interested in and check the table of contents.

## I am stuck

We as a community are both very thankful and proud to have attracted many incredibly kind and clever individuals who are all interested in the same thing and who are helping each other out.

As we have been overwhelmed with general questions, troubleshooting requests, feature requests, etc. in the past months, we would like to ask you to:

- Read the documentation carefully, check the individual troubleshooting sections for advice on how to interpret logs, use relevant tools, etc.
- Don't direct-message project maintainers or relevant others. Some of the Flux maintainers get 50 private messages with requests for help over the weekend. This is simply not feasible.
- Make sure you don't share private information.
- Help out if you can, e.g. if somebody just answered your question and it was missing in the FAQ or other docs, please consider adding it, it might help somebody in the future.

🕰 **Another note:** Understanding somebody's infrastructure and settings takes time. Please provide relevant information up-front. If a Flux contributor spends an hour in a question-and-answer ping-pong with you, that's one hour they are going to spend less on other parts of Flux.

If all of this sounds like we're putting you off, that's not how this is meant. We want to be there for each other in this community, but we want to be mindful of each other's time.

*Let's be excellent to each other.*

### Consider this

Support for FluxCD users and community is mostly provided by volunteers, who are all on equal footing as peers in the FluxCD community. This implies that (free) support is provided on a best-effort basis, with no SLA or quality-of-service guarantee.

[Best-effort delivery](https://en.wikipedia.org/wiki/Best-effort_delivery) is explained on Wikipedia in terms of a "**best-effort network**, [on which] all users obtain best-effort service. Under best-effort, network performance characteristics such as network delay and packet loss depend on the current network traffic load."

Similar to a best-effort network, the capacity for our community as a whole to provide quality support for community members, and a welcoming environment for all contributors, depends heavily on the grace and good behavior of individual community members.

You can help ensure a higher quality of best-effort support by formulating inquiries thoughtfully and making a considerate effort to place them in the most appropriate venue.

Here are some guidelines about which venue makes the most sense:

| Form of inquiry                                             | Venue                 |
| ------------------------------------------------------------| --------------------- |
| Something is not working as intended / I found a bug        | [Issue](https://github.com/fluxcd/flux2/issues) |
| A feature is too limited for my `<use-case>`                | Discussion ([General](https://github.com/fluxcd/flux2/discussions/categories/general)) |
| I want Flux to be able to do `<x>`                          | Discussion ([Proposal](https://github.com/fluxcd/flux2/discussions/categories/proposals)) |
| Something is not working, (but I am not sure if I am doing it right) | Discussion ([Q&A](https://github.com/fluxcd/flux2/discussions/categories/q-a)) |
| Quick question                                              | [#flux][] on [CNCF Slack][] |

Bearing in mind that Issues and [Discussions](https://github.com/fluxcd/flux2/discussions) are more permanent and searchable than Slack conversations, we can avoid unduly expending finite community resources by searching before asking. If you are not exactly sure how to ask your question or otherwise daunted by the idea of permanence, visitors are always welcome in [#flux][] on the [CNCF Slack][].

If your needs are more urgent, more broadly demanding, or more persistent than the best-effort community support resources can provide, you may also consider [a paid support option](#my-employer-needs-additional-help).

## Community Help Resources

For questions around Flux v2, please visit our [Flux2 Discussions](https://github.com/fluxcd/flux2/discussions) section on Github.

## I found a bug

If you made sure you encountered an actual issue, we definitely want to hear about it.

Here's how to proceed:

1. Check [Github](https://github.com/fluxcd)

```txt
TODO:
- how to submit clear information if you really found an issue
- figure out which project under `fluxcd` to file the issue on
```

## My employer needs additional help

Luckily some of the companies who employ Flux developers offer paid support, so if you need an architecture review, training or help implementing certain features, you might want to reach out to the following companies:

- Weaveworks: <https://www.weave.works/contact/>

---

*Flux is a CNCF project, so this "paid support" section is not tied to any single company in particular. If you want to add your company to the list, please file a PR and tag the [Flux Oversight Committee](https://github.com/fluxcd/community/blob/main/GOVERNANCE.md#oversight-committee).*

*If your company has a track record of Flux engineering and/or support we will get you added.*

[#flux]: https://cloud-native.slack.com/archives/CLAJ40HV3
[CNCF Slack]: https://slack.cncf.io/
