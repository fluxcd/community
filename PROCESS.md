# Flux Community Processes

This document defines community processes in the Flux project.

As foundational documents such as [GOVERNANCE.md](GOVERNANCE.md) and [community-roles.md](community-roles.md) grew, we decided to move definition of processes here. Consider this your "how to" with regard to interacting with the Flux community.

## Joining the Flux Project

### Applying for Flux Membership

**Requirements:**

- Have made multiple contributions to the project or community.
  Contribution may include, but is not limited to:
  - Authoring or reviewing PRs on GitHub
  - Filing or commenting on issues on GitHub
  - Contributing to project or community discussions (for example meetings, Slack, email discussion forums, Stack Overflow)
- Subscribed to the [flux-dev mailing list](https://lists.cncf.io/g/cncf-flux-dev/join)
- Actively contributing to 1 or more `fluxcd` GitHub org repos
- Sponsored by 2 maintainers.
  **Note the following requirements for sponsors:**
  - Sponsors must have close interactions with the prospective member - for example code/design/proposal review, coordinating on issues, etc.
  - Sponsors must be from multiple companies to demonstrate integration across community

**Process:**

[Open an issue against the **fluxcd/community** repo](https://github.com/fluxcd/community/issues/new)

- Ensure your sponsors are @mentioned on the issue
- Complete every item on the checklist

    ```markdown
    ### GitHub Username
    e.g. (at)example_user

    ### Requirements
    - [ ] I have reviewed the community membership guidelines in `community-roles.md`
    - [ ] I have subscribed to the cncf-flux-dev e-mail list [https://lists.cncf.io/g/cncf-flux-dev/join](https://lists.cncf.io/g/cncf-flux-dev/join)
    - [ ] I am actively contributing to 1 or more `fluxcd` GitHub org repos (eg. Flux, Flagger)
    - [ ] I have enabled 2FA in GitHub
    - [ ] I have two sponsors that meet the sponsor requirements listed in the community membership guidelines
    - [ ] I have spoken to my sponsors ahead of this application, and they have agreed to sponsor my application

    ### Sponsors
    - (at)sponsor-1
    - (at)sponsor-2

    ### List of contributions to the Flux project
    - PRs reviewed / authored
    - Discussions involved in & Issues responded to
    - Flux subprojects I am involved with (Flagger, Flux, Controllers)
    ```

- Have your sponsoring maintainers reply confirmation of sponsorship: `+1`
- Once your sponsors have responded, your request will be reviewed by a member of the [core maintainers].

Any missing information will be requested.

### Applying for Flux Maintainership

**Process:**

- Make a PR against the `MAINTAINERS` file for a `fluxcd` GitHub org repo. [Example PR](https://github.com/fluxcd/source-controller/pull/584)
- @mention all the other current maintainers
- Have maintainers submit their vote by `+1`
- Once all maintainers in repo have `+1` the pr will be reviewed by a member of the [core maintainers]

Electing new Maintainers of the same repository is an [Unanimity decision][unanimity-decisions].

Once the above process has taken its course, make sure you

- Are added to the internal `#flux-maintainers` Slack channel
- Update <https://maintainers.cncf.io>
- Get somebody to ping [CNCF Service Desk](https://cncfservicedesk.atlassian.net/) to get you added as Flux maintainer
- Ping fellow maintainers to get added to Flux 1Password
- (Optional) Check if your [CNCF affiliation is up to date](https://github.com/cncf/gitdm#addingupdating-affiliation)

**Applying as core maintainer:** The same process applies for applying as a core maintainer. The PR should be against the [CORE-MAINTAINERS file](https://github.com/fluxcd/community/blob/main/CORE-MAINTAINERS) though and an accordingly higher level of experience and a more holistic understanding of the project is expected.

## Proposal Process

- Code changes should go through the pull request process, where the idea and implementation details can be publicly discussed with [Maintainers][Maintainer], other contributors, and end users.
  Pull requests should only be merged after receiving GitHub approval from at least one Maintainer who is not the pull request author.
- For architectural changes to Flux, please use the [RFC process](https://github.com/fluxcd/flux2/tree/main/rfcs).  
  Note that Flux v2 uses GitHub discussions for (non-architectural) proposals in the `fluxcd/flux2` Git repository <https://github.com/fluxcd/flux2/discussions?discussions_q=category%3AProposals>.
- Non-code changes should be proposed as GitHub issues.
  If unclear which Git repository to create the issue in, default to the community repository <https://github.com/fluxcd/community>.
- All proposals should be discussed publicly in an appropriate GitHub issue or pull request.
- If a Maintainer of an affected Git repository feels feedback from specific people is warranted they will @mention those users or teams to request feedback.
- Proposals may also be added to the Flux Dev weekly meetings agenda, as a good avenue for making progress on a decision <https://lists.cncf.io/g/cncf-flux-dev/calendar>.

## Project Processes

### Inactivity
<!--TODO: project leads to fill in exact details for how you measure inactivity for your project-->

It is important for contributors to be and stay active to set an example and show commitment to the project.
Inactivity is harmful to the project as it may lead to unexpected delays, contributor attrition, and a lost of trust in the project.

Inactivity is to be defined by the [core maintainers] team.

Consequences of being inactive include:

- Involuntary Removal
- Being moved to Emeritus status

### Involuntary Removal

Involuntary removal of a contributor happens when responsibilities and requirements aren't being met.
This may include repeated pattern of inactivity, extended period of inactivity, and/or a violation of the Code of Conduct.
This process is important because it protects the community and its deliverables while also opens up opportunities for new contributors to step in.

Involuntary removal is handled by the [core maintainers] team. Removing a Repository Maintainer or Core Maintainer for any reason other than inactivity is a [Supermajority decision][supermajority-decisions].

### Stepping Down/Emeritus Process

If and when contributors' commitment levels change, contributors can consider stepping down (moving down a role) vs moving to emeritus status (completely stepping away from the project).

Please reach out to the [core maintainers] team to discuss this process.

### Stepping Back Into a Role

If and when someone is available to step back into a previous contributor role, this is something that can be arranged and considered by the [core maintainers] team.

Please reach out to the [core maintainers] team to discuss this process.

### Licensing changes

Licensing and intellectual property changes is a [Unanimity decision][unanimity-decisions]. To be made by the [core maintainers].

### Governance changes

[core maintainers] decide on material changes to the Governance document.
 This is a [Supermajority decision][supermajority-decisions].

- Note: editorial changes to governance may be made by lazy consensus, unless challenged.
  These are changes which fix spelling or grammar, update work affiliation or similar, update style or reflect an outside and obvious reality.
  They do not change the intention or meaning of anything in this document.

### Contact

For inquiries, please reach out to: `@fluxcd/core-maintainers` on GitHub.

### Requesting new repositories / bots / GitHub applications / etc

File an issue in the `fluxcd/community` repository and contact the `@fluxcd/org-admins` team to fulfil your request.

### Electing Org Admins

Org Admins are defined in the [ORG-ADMINS file](https://github.com/fluxcd/community/blob/main/ORG-ADMINS). An election can be done through a pull request against this file to be approved by the [core maintainers].

The list of members is reviewed every year and should consist of:

- active members (preferably spread over various timezones and organizations)
- counterparts at the CNCF and Linux Foundation

### Examples of Decisions

- Project change: Moving Flagger under the Flux organisation was not a code or architectural change, but a big decision that impacted the Flux project and community, hence it was discussed in various [Flux Dev meetings](https://fluxcd.io/community/#meetings), before being put up at <https://github.com/fluxcd/community/issues/34> for a comment period of one month and when there were no objections, the decision was announced [here](https://fluxcd.io/blog/2021/01/january-2021-update/#flagger-moves-under-the-fluxcd-organization).
- Architectural change: introducing the RFC process itself was introduced as [an RFC](https://github.com/fluxcd/flux2/pull/2085). Here is a list of other architectural changes which fall under that category: <https://github.com/fluxcd/flux2/pulls?q=label%3Aarea%2FRFC+>.
- Application to become a member of the Flux project was filed as an issue under `fluxcd/community`: <https://github.com/fluxcd/community/issues/127> (a checklist of requirements, sponsors, list of contributions, and approval can be found in the issue - just follow [this process](community-roles.md#project-member)).

[Community Member]: community-roles.md#community-member
[Project Member]: community-roles.md#project-member
[Maintainer]: community-roles.md#maintainer
[core maintainers]: community-roles.md#core-maintainers
[supermajority-decisions]: GOVERNANCE.md#supermajority-decisions
[unanimity-decisions]: GOVERNANCE.md#unanimity-decisions
