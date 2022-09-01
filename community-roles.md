<!-- see https://github.com/yzhang-gh/vscode-markdown/blob/master/README.md#table-of-contents -->
<!-- omit in toc -->
# Community Roles

This document outlines the different roles within the project, along with the responsibilities and privileges that come with them.
Roles are progressive, so each include responsibilities, requirements and definitions from the previous roles.

- [Roles](#roles)
  - [Community Member](#community-member)
  - [Project Member](#project-member)
  - [Maintainer](#maintainer)
  - [Core maintainers](#core-maintainers)
  - [Security team member](#security-team-member)
  - [Org Admins](#org-admins)

## Roles

Most of the roles defined herein are defined by membership in a certain GitHub organization or team:

- [fluxcd org](https://github.com/fluxcd): The organization under which all of Flux's activity on GitHub is captured.
- [@fluxcd/core-maintainers](https://github.com/fluxcd/community/blob/main/CORE-MAINTAINERS): The team comprised of all maintainers of Flux v2 components.
- [@fluxcd/maintainers](https://github.com/fluxcd/community/blob/main/project/flux-project-maintainers.yaml): The team comprised of all maintainers of the various projects in the FluxCD organization: Flux v1, Flux v2, Flagger, GitOps Toolkit, website and community repos, etc.

### Community Member

Community Members are all users who interact with the project.

This could be through Slack, GitHub discussions, joining public project meetings, etc.

**Responsibilities:**

- Must follow the [CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md)

### Project Member

Project Members are [Community Members][Community Member] who contribute directly to the project and add value to it.
This can be through code, documentation, taking part in bug scrubs, etc.

**Defined by:**

- [Triage role](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-permission-levels-for-an-organization#repository-access-for-each-permission-level) on all `fluxcd` GitHub org repos
- [Membership](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-user-account/managing-your-membership-in-organizations/about-organization-membership) in the [fluxcd org](https://github.com/fluxcd)

**Responsibilities and privileges:**

To become a Project Member you need to demonstrate the following:

- ability to write quality code and/or documentation,
- ability to collaborate with the team,
- understanding of how the team works (policies, processes for testing and code review, etc),
- understanding of the project's code base and coding and documentation style.
- be responsive to issues and PRs assigned to them
- be active owner of code they have contributed (unless ownership is explicitly transferred)
  - Code is well tested
  - Tests consistently pass
  - Addresses bugs or issues discovered after code is accepted
- Note: members who frequently contribute code are expected to proactively perform code reviews and work towards becoming a maintainer

Process: refer to [PROCESS.md](PROCESS.md#applying-for-flux-membership).

### Maintainer

Maintainers are elected [Project Members][Project Member] who have shown significant and sustained contributions in a Git repository.

**Defined by:** entry in MAINTAINERS file in a repo owned by the Flux project, and membership in the `@fluxcd/maintainers` GitHub team. See an automatically generated list of Flux maintainers [here](https://github.com/fluxcd/community/blob/main/project/flux-project-maintainers.yaml).

**Responsibilities and Privileges:**

To become a Maintainer you need to demonstrate the following:

- Enable and promote Flux community values
- Engage with end Users through appropriate communication channels
- Serve as a point of conflict resolution between Contributors to their Git repository
- Maintain open collaboration with Contributors and other Maintainers
- Ask for help when unsure and step down considerately
- A good understanding of the code-base (or equivalent that is governed by the repository, e.g. `fluxcd/community` or `fluxcd/website`)
- Willing to take on long-term responsibility for the project (or a specific part of it)
- Commitment to the project. Specifically:

  This can be evidenced differently and we want to maintain some general flexibility assessing this. Significant and sustained contributions can be both by showing a long-term level of care with a bigger number of smaller contributions or by a smaller set of sizable contributions. To make it somewhat more comparable, here is an example of commitment we would be happy to accept for a maintainer:

  - Participate in discussions, contributions, code and documentation reviews for 3 months or more,
  - perform reviews for 10 non-trivial pull requests (total),
  - contribute 15 non-trivial pull requests (total) and have them merged.

  Ask one of the current maintainers, if you are unsure. They will be happy to give you feedback.

Process: refer to [PROCESS.md](PROCESS.md#applying-for-flux-maintainership).

### Core maintainers

Maintainership in the [CORE-MAINTAINERS file](https://github.com/fluxcd/community/blob/main/CORE-MAINTAINERS) trickles down to all other Flux 2-related repositories which means that maintainers mentioned there are also maintainers in all other repositories.

In addition to maintaining `flux2` and Flux 2-related repositories, this team serves as escalation point for the overall project, and anything not easily managed by the Maintainers of each Git repository.

This team drives the direction, values and governance of the overall project.

It is important to us that its members come from a diverse background of companies and organizations.
Ensuring that oversight of the project is not controlled by one company or organization.

**Defined by:** entry in [CORE-MAINTAINERS file](https://github.com/fluxcd/community/blob/main/CORE-MAINTAINERS), and in the `@fluxcd/core-maintainers` GitHub team.

**Responsibilities and Privileges:**

The following apply to all assets across the Flux org:

- Overseeing the project health and growth
- Maintaining the brand, mission, vision, values, and scope of the overall project
- Changes to licensing and intellectual property
- Administering access to all project assets
- Administering Git repositories as needed
- Handling Code of Conduct violations
- Managing financial decisions
- Defining the scope of each Git repository
- Resolving escalated decisions when Maintainers responsible are blocked

### Security Team member

Security Team members are listed in the [SECURITY.md file](https://github.com/fluxcd/.github/blob/main/SECURITY.md#security-team).

Members of this team handle security issues for the Flux projects. It is essential for us to deal with security-related concerns responsibly and follow the high standards of the security community as a whole.

**Defined by:** entry in [SECURITY.md file](https://github.com/fluxcd/.github/blob/main/SECURITY.md#security-team).

**Responsibilities and Privileges:**

The following apply to all assets across the Flux org:

- All reports are thoroughly investigated by the Security Team.
- Any vulnerability information shared with the Security Team will not be shared with others unless it is necessary to fix the issue. Information is shared only on a need to know basis.
- As the security issue moves through the identification and resolution process, the reporter will be notified.
- Security Team members must use their access to the [oss-fuzz issues catalog](https://bugs.chromium.org/p/oss-fuzz/) to investigate issues raised from fuzz tests.
- Additional questions about the vulnerability may also be asked of the reporter.
- Security Team members have a duty of care to the uphold of the Security embargo policy.

### Org Admins

In order to restrict access to [`admin` level functionality in GitHub](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role) functionality, we define this team, who can e.g.

- Delete a repository
- Remove permissions from a user
- Approve applications and/or bots
- and more.

This team has no decision making power on its own, but is instead there to serve the needs of the Flux maintainers and contributors.

**Defined by:** entry in [ORG-ADMINS file](https://github.com/fluxcd/community/blob/main/ORG-ADMINS), and in the `@fluxcd/org-admins` GitHub team.

**Responsibilities and Privileges:**

`admin` level access to the `fluxcd` organization in GitHub.

<!-- md links -->
[Community Member]: #community-member
[Project Member]: #project-member
[Maintainer]: #maintainer
[core maintainers]: #core-maintainers
[Org Admins]: #org-admins
