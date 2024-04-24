# Joining the Flux community

We want the [Flux project](https://github.com/fluxcd) to be the vendor-neutral home for GitOps in a Cloud Native world.

Started in 2016 to automate deployments at Weaveworks, the project has taken on a new life since then.
The Flux community has become the home for a family of projects, all solving specific GitOps needs.

We also want our community to be diverse, helpful, collaborative and a fun place to be, so we would love to have you join us!

## Getting involved

### Meetings

We run regular meetings and discuss things there.

The upcoming meetings, talks and community events in the next month are maintained here:

{{< home/calendar >}}

Our calendar data is hosted on the CNCF-Flux-Dev List, which has the option to subscribe: <https://lists.cncf.io/g/cncf-flux-dev/calendar>

We are very happy if new users, contributors and developers join and we can put names to faces!

Review how to [subscribe to the Flux Calendar](#subscribing-to-the-flux-calendar) to add the Flux meetups on your own calendar.

We are looking forward to seeing you there.

#### Recordings

Check out the <https://www.youtube.com/@fluxcd> channel for recordings of Flux Dev Meetings and other Flux-related playlists.

#### Schedules

The recurring meetings and their schedules (in English) are listed below with their source time zones, and a link to any meeting "Minutes" docs.

Some regularly scheduled meetings are scheduled in their hosts' local time zones.

| Which | Times | Agenda & Minutes | Recordings |
| ----- | ----- | ---------------- | ---------- |
| Flux Dev Meetings | "early" meeting: Uneven weeks: Wed, 12:00 UTC <br/>"late" meeting: Even weeks: Thu, 15:00 UTC | [Document](https://docs.google.com/document/d/167SKpaDUrpiBqNR2lXnQjXyb5Gxq6uB-Fujz7eBQxyw/edit) | [YouTube](https://www.youtube.com/playlist?list=PLwjBY07V76p5mWNgdINjIiuUiItIeLhIN) |
| Flux Bug Scrub | "early" meeting: Even weeks: Wed, 8:00 Eastern US time <br/>"late" meeting: Odd weeks: Thu, 13:00 Eastern US time <br/>"AEST Edition" Even weeks: Wed, 8:00 Brisbane time | [Bug Scrub Template (#0090)](https://docs.google.com/spreadsheets/d/1Hv9BIr0vFAOHscqYzmlKKG1Il18Nw8X_iiDyi0HRgCs/edit#gid=2133538565) | [YouTube](https://www.youtube.com/watch?v=c4unRRJp-o0&list=PLwjBY07V76p6J6z30cBRqS_N0Ka6NhEsY) |

Do note that Daylight Savings Time changes can vary across regions, which can cause some confusion.

The calendar at <https://fluxcd.io/community#meetings> has been localized to show the events in your local time zone.

### Finding your interest

To get started, it's important you find out which parts of Flux you are interested in first.

Maintained, with stable APIs:

| Status | Interest | Repository | Roadmap |
| ------ | -------- | ---------- | ------- |
| Maintained, stable APIs | Flux | <https://github.com/fluxcd/flux2> | <https://fluxcd.io/roadmap> |
| " | Kustomize user | <https://github.com/fluxcd/kustomize-controller> | <https://fluxcd.io/roadmap> |
| " | Helm user | <https://github.com/fluxcd/helm-controller> | <https://fluxcd.io/roadmap> |
| Currently stable | Progressive delivery | <https://github.com/fluxcd/flagger> | <https://github.com/fluxcd/flagger/#roadmap> |

And there is loads more under <https://github.com/fluxcd>, we all work on this as a community together.

### Joining the community

All the projects have docs to help you get started, so a first step is obviously using the projects and getting some first-hand experience.
Afterwards you can help out on Slack answering questions, maybe extend the docs or fix some small issues.

### Teams

The Flux project uses [GitHub org teams](https://docs.github.com/en/organizations) to make it easier for [Project Members](community-roles.md#project-member) and above to communicate within and across teams.
Members of those teams however should be defined in publicly accessible files for transparency to org non-members.
See [community-roles.md](community-roles.md).

The process of formalising team structures apart from "interest in one or more given sub-project(s)" is ongoing.
There currently are:

- The [core maintainers](community-roles.md#core-maintainers)
- The [Security team](https://github.com/fluxcd/.github/blob/main/SECURITY.md#Security-Team)
- The [Community team](COMMUNITY.md)

All projects and teams are open to contributors and every part of the Flux project appreciates your help and consideration.
Check out the links above to learn more about the team in question.

#### Subscribing to the Flux calendar

To add the meetings to your e.g. Google calendar

1. visit the [Flux calendar](https://lists.cncf.io/g/cncf-flux-dev/calendar)
   > For this you might need to create an account for `lists.cncf.io`
1. click on "Subscribe to Calendar" at the very bottom of the page
1. copy the iCalendar URL
1. open e.g. your Google calendar
1. find the "add calendar" option
1. choose "add by URL"
1. paste iCalendar URL (ends with `.ics`)
1. done

## Communication

Here is a list of good entry points into our community. Here is how we stay in touch and how you can meet us as a team.

- Slack: Join in and talk to us in the #flux channel on [CNCF Slack](https://slack.cncf.io/)
- Meetings: We run weekly, public meetings - join one of the upcoming [dev meetings](#meetings), introduce yourself and get involved this way
- Join the [Flux discussions on GitHub](https://github.com/fluxcd/flux2/discussions)
- Mailing list: To be updated on Flux progress regularly, you might want to [join the flux-dev mailing list](https://lists.cncf.io/g/cncf-flux-dev) as well
- Social media: Follow [Flux on Twitter](https://twitter.com/fluxcd), join the discussion in the [Flux LinkedIn group](https://www.linkedin.com/groups/8985374/)
- Blog: Stay up to date on [the Flux blog](https://fluxcd.io/blog/)
- Check out our guides on [how to contribute to Flux](https://fluxcd.io/contributing)
- And if you are completely new to the Flux project, take a look at our [Get Started guide](https://fluxcd.io/flux/get-started/) and give us feedback

## Maintainers

Flux project maintainers may differ across Git repositories within the `fluxcd` GitHub org.
The codebase itself is a multi-component design, spread across multiple Git repositories.
Flux also includes non-code contributions, such as documentation and community information.
Maintainers of each repo are listed in a MAINTAINERS file in the root of that repo.

See [project/flux-project-maintainers.yaml](project/flux-project-maintainers.yaml) for an aggregated list of all maintainers from each of the project's individual Git repos.

## Rules

The Flux community is governed by the [governance document](GOVERNANCE.md), involvement is defined in [community-roles.md](community-roles.md), and processes can be found in [PROCESS.md](PROCESS.md).
We as a community follow the [code of conduct](CODE_OF_CONDUCT.md).
