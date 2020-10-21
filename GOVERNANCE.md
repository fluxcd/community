<!-- see https://github.com/yzhang-gh/vscode-markdown/blob/master/README.md#table-of-contents -->
<!-- omit in toc -->
# Flux Governance

This document <https://github.com/fluxcd/community/blob/main/GOVERNANCE.md> defines the governance process for the Flux CNCF project and community.

- [Values](#values)
  - [Code of Conduct](#code-of-conduct)
- [Member Roles](#member-roles)
  - [Users](#users)
  - [Contributors](#contributors)
  - [Maintainers](#maintainers)
- [Teams](#teams)
  - [Org team](#org-team)
  - [Architecture team](#architecture-team)
  - [Dev team](#dev-team)
  - [Security team](#security-team)
  - [Community team](#community-team)
- [Proposal Process](#proposal-process)
- [Decision Making](#decision-making)
- [Voting](#voting)
  - [Simple Majority Changes](#simple-majority-changes)
  - [Supermajority Changes](#supermajority-changes)
  - [Membership Changes](#membership-changes)
- [Licenses](#licenses)

## Values

- **Open:**
The Flux community strives to be open, accessible and welcoming to everyone.
Anyone may contribute, and contributions are available to all users according to open source values and licenses.
- **Transparent:**
Flux strives for transparency in all discussions, announcements, disclosures and decision making.
- **Unbiased:**
Flux strives to operate independently of specific partisan interests, and for decision making to fairly balance the wider community interests of its end users and contributors.
In future, the aspiration is no one company or organization should employ a Simple Majority of the Org team members, however that is not yet realistic at this stage.
The goal is to broaden membership of the Teams defined below to include a wider range of organizations during CNCF incubation.

### Code of Conduct

The Flux community adheres to the CNCF Code of Conduct <https://github.com/cncf/foundation/blob/master/code-of-conduct.md>.

Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by contacting a _Flux_ project maintainer.

If the possible violation is against one of the Flux maintainers that member will be recused from voting on the issue.
Such issues must be escalated to the CNCF mediator, Mishi Choudhary <mishi@linux.com>, in which case CNCF may choose to intervene.

## Member Roles

The Flux community is comprised of the following member roles:

### Users

Flux end users are the most important members of the community, without whom the project would have no purpose. Users are anyone who has a need for the project.
Apart from following the Code of Conduct, there are no special requirements.
As users continue to engage and become more involved with the Flux community, they may find themselves becoming contributors.

### Contributors

Flux welcomes all kinds of contributions, including code, issues, documentation, external tools, advocacy and community work.
Contributors are accepted based on the merit of their contributions.
Contributions help Maintainers ensure that the project continues to satisfy end user needs.
Teams defined below may have different contribution processes and requirements for the various areas of Flux appropriate to their team.

### Maintainers

Maintainers are elected Contributors who serve on one or more Teams.
For the election process, see Membership Changes below.

Maintainers are expected to:

- enable and promote Flux community Values
- engage with end Users through appropriate communication channels appropriate to their teams
- serve as a point of conflict resolution between Contributors to the Flux area appropriate to their teams
- maintain open collaboration within and across teams
- additional responsibilities are defined per team below

## Teams

The Flux project is governed by Maintainer teams, each with defined scope and responsibilities.
Teams are responsible for the overall organization, code development, community management, and security.

The goal of governing by teams is to allow parts of the project to act independently as appropriate, enabling the project to grow horizontally while remaining well-maintained.

Teams below are also mapped to GitHub teams within the `fluxcd` GitHub org.
Their members are mapped to GitHub user accounts.

### Org team

@fluxcd/org <https://github.com/orgs/fluxcd/teams/org>

Scope and responsibilities:

- shared Maintainers responsibilities, as well as:
- overseeing the project health and growth
- maintaining the brand, mission, vision, values, and scope of the overall project
- changes to licensing and intellectual property
- administering access to all project assets
- deleting source code repositories
- handling code of conduct violations
- managing financial decisions
- defining the scope and responsibilities of all other teams
- making decisions that affect multiple teams
- resolving escalated team decisions when the teams responsible are blocked
- changes to governance (this document)

### Architecture team

@fluxcd/arch <https://github.com/orgs/fluxcd/teams/arch>

Scope and responsibilities:

- shared Maintainers responsibilities, as well as:
- administering and creating source code repositories
- technical oversight on the overall project
- making technical decisions that are applicable to multiple sub-projects
- providing architectural guidance to Dev team members on an individual sub-project
- representing sub-project interests in Architecture team decisions

Every sub-project should have at least one Architecture team member as a Maintainer.
The involvement of this Maintainer may be passive, but carries being responsible for duties that come with the Architecture team membership, including being a representative for the sub-project.

### Dev team

@fluxcd/dev <https://github.com/orgs/fluxcd/teams/dev>

Scope and responsibilities:

- shared Maintainers responsibilities, as well as:
- collaborating with Architecture team member(s) who co-maintain project software
- technical decisions related to project software the member maintains
- release management related to the project software the member maintains
- issue management related to the project software the member maintains
- keeping documentation updated related to the project software the member maintains

### Security team

@fluxcd/security <https://github.com/orgs/fluxcd/teams/security>

Scope and responsibilities:

- shared Maintainers responsibilities, as well as:
- point of contact for reporting security vulnerabilities
- responding to and investigating security reports
- patching and releasing security fixes
- publishing the vulnerability disclosure once a mitigation strategy is available
- documenting overall project security best practices

Anyone may email this team privately to safely raise possible security vulnerabilities <https://lists.cncf.io/g/cncf-flux-security>.

### Community team

@fluxcd/community <https://github.com/orgs/fluxcd/teams/community>

Scope and responsibilities:

- shared Maintainers responsibilities, as well as
- listening to the community
- escalating community issues to appropriate teams
- planning and executing community events
- marketing related tasks required by the project
- managing partner and ecosystem development
- managing social media accounts (example: Twitter)
- managing project mailing lists
- managing project calendar events
- managing project blog posts
- managing the project website

Anyone may email this team with community-related questions <https://lists.cncf.io/g/cncf-flux-community>.

## Proposal Process

- Code changes should go through the pull request process, where the idea and implementation details can be publicly discussed with maintainers of the appropriate team, other contributors, and end users.
  Pull requests should only be merged after receiving GitHub approval from at least one other member of the appropriate team.
  Voting is not required for most code changes.
  Note that Flux v2 uses GitHub discussions for proposals in the `fluxcd/toolkit` repo <https://github.com/fluxcd/toolkit/discussions?discussions_q=category%3AProposals>.
- Non-code changes should be proposed as GitHub issues.
  If unclear which repository to create the issue in, default to the community repo <https://github.com/fluxcd/community>.

## Decision Making

- Teams oversee activities appropriate to their defined scope and responsibilities.
- Decisions that affect only one team are made informally by its members.
- Decisions that affect multiple teams should go through the proposal process.
- All proposals should be discussed publicly in the appropriate GitHub issue or pull request.
- If a member of appropriate team feels feedback from members of the same or other teams is warranted they will @mention the users or teams to request feedback.
- Proposals may also be added to the Flux Dev weekly meetings agenda, as a good avenue for making progress on a decision <https://lists.cncf.io/g/cncf-flux-dev/calendar>.
- If there are objections and no consensus can be found, a vote may be called by a team member.
- When a vote is called, members of the appropriate team team will cast their yes/no vote on that github issue or pull request, and after a suitable period of time, the votes will be tallied and the outcome noted.
- If a proposal cannot be resolved by the affected teams, the decision may be escalated to the Org team.

## Voting

- Most team decisions are made by lazy consensus <https://communitymgt.wikia.com/wiki/Lazy_consensus>.
- In these cases, if no consensus can be reached, the matter may be resolved by Simple Majority Vote <https://en.wikipedia.org/wiki/Majority> by the appropriate team.
- However there are cases that always require a Simple Majority or Supermajority Vote <https://en.wikipedia.org/wiki/Supermajority> by the appropriate team.
  These are defined below.

### Simple Majority Changes

- Org team: Licensing and intellectual property changes.
- Org team: Using Flux/CNCF money for anything CNCF deems "not cheap and easy".

### Supermajority Changes

- Org team: Enforcing a Code of Conduct violation.
- Org team: Removing a member from a team for any reason other than inactivity.
- Org team: Material changes to the Governance document.
  - Editorial changes to governance may be made by Org team lazy consensus, unless challenged.
    These are changes which fix spelling or grammar, update work affiliation or similar, update style or reflect an outside and obvious reality.
    They do not change the intention or meaning of anything in this document.

### Membership Changes

- All team members MUST remain active contributors.
  If they are unresponsive for > 3 months they will be automatically removed unless a supermajority of the other members of that team agrees to extend the period.
- A member may voluntarily step down from a team by following the proposal process in the community repo.
  These proposals are automatically accepted.
  Once offboarding is complete and the issue is closed, they become a retired member of that team.
- New members may be added to a team by a supermajority vote by the existing members of that team.
- When a team has no members the Org team become responsible for it and may either archive the team or find new members.
- When a team is archived, its members become retired members of that team.

Dev team membership changes have additional considerations:

- To gain and/or maintain Dev team membership the member MUST be a stated maintainer in at least one technical sub-project.
- Technical sub-project maintainership is stated in a `MAINTAINERS` file at the root of the source code repository.
- Stated technical sub-project maintainership may be decided by a Simple Majority of existing members listed in the project's `MAINTAINERS` file.

Architecture team membership changes have additional considerations:

- When an Architecture member leaves the team, their stated maintainership of any technical sub-projects will no longer count toward the required minimum of one Architecture team member.
  If after leaving, there are no other Architecture team members on those sub-projects, the Architecture team is reponsible for deciding how to fulfill that minimum.

Org team membership changes have additional considerations:

- There should be an odd number of Org team member seats, between 3 and 7.
  An odd number is to avoid a 50/50 decision split.
  A minimum of 3 is to prevent a single decision point.
  The current maximum is a guess to keep decision making efficient, and is subject to change.
- Members of any other team are eligible to be nominated to fill an open Org team member seat.
- Org members MUST also remain current members of at least one other non-archived team.
  If that status changes, they will also lose Org team membership.
- If an Org member voluntarily steps down, in addition to the process above, within 7 calendar days the Flux dev list MUST be notified <https://lists.cncf.io/g/cncf-flux-dev>.
  This gives contributors reasonable time to be made aware of the opening.
- When there is an open Org team member seat, any contributor to a repository in the `fluxcd` GitHub org may nominate a suitable existing member of another team as a replacement.
  - The nomination period will be three weeks starting the day after an Org team member opening becomes available.
  - The nomination must be made as a reply to the notification topic in the Flux dev list.

## Licenses

- Apache 2.0 is required for all source code repositories.
- Developer Certificate of Origin (DCO) commit signoff is required for all new code contributions.
