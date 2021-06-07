<!-- see https://github.com/yzhang-gh/vscode-markdown/blob/master/README.md#table-of-contents -->
<!-- omit in toc -->
# Community Roles

This document outlines the different roles within the project, along with the responsibilites and privileges that come with them.
Roles are progressive, so each include responsibilities, requirements and definitions from the previous roles.

- [Roles](#roles)
  - [Community Member](#community-member)
  - [Project Member](#project-member)
  - [Maintainer](#maintainer)
  - [Oversight Committee](#oversight-committee)
- [Proccesses](#proccesses)
  - [Inactivity](#inactivity)
  - [Involuntary Removal](#involuntary-removal)
  - [Stepping Down/Emeritus Process](#stepping-downemeritus-process)
  - [Stepping Back Into a Role](#stepping-back-into-a-role)
  - [Contact](#contact)

## Roles

### Community Member

Community Members are any user who interacts with the project.

This could be through Slack, using the project itself, GitHub discussions, etc.

**Responsibilities:**

- Must follow the [CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md)

### Project Member

Project Members are [Community Members][Community Member] who contribute directly to the project and add value to it.
This can be through Code, Documentation, etc.

**Defined by:** In `@fluxcd/member` GitHub team.

**Requirements:**

- Have made multiple contributions to the project or community.
  Contribution may include, but is not limited to:
  - Authoring or reviewing PRs on GitHub
  - Filing or commenting on issues on GitHub
  - Contributing to project or community discussions (for example meetings, Slack, email discussion forums, Stack Overflow)
- Subscribed to the [flux-dev mailing list](https://lists.cncf.io/g/cncf-flux-dev/join)
- Actively contributing to 1 or more projects
- Sponsored by 2 maintainers.
  **Note the following requirements for sponsors:**
  - Sponsors must have close interactions with the prospective member - for example code/design/proposal review, coordinating on issues, etc.
  - Sponsors must be from multiple companies to demonstrate integration across community
- Open an issue against the **flux/community** repo
  - Ensure your sponsors are @mentioned on the issue
  - Complete every item on the checklist

    ```markdown
    ### GitHub Username
    e.g. (at)example_user

    ### Requirements
    - [ ] I have reviewed the community membership guidelines [https://github.com/fluxcd/community/blob/main/community-roles.md](https://github.com/fluxcd/community/blob/main/community-roles.md)
    - [ ] I have subscribed to the cncf-flux-dev e-mail list [https://lists.cncf.io/g/cncf-flux-dev/join](https://lists.cncf.io/g/cncf-flux-dev/join)
    - [ ] I am actively contributing to 1 or more Flux subprojects (eg. Flux, Flagger)
    - [ ] I have two sponsors that meet the sponsor requirements listed in the community membership guidelines
    - [ ] I have spoken to my sponsors ahead of this application, and they have agreed to sponsor my application

    ### Sponsors
    - (at)sponsor-1
    - (at)sponsor-2

    ### List of contributions to the Flux project
    - PRs reviewed / authored
    - Discussions involved in & Issues responded to
    - Flux subrojects I am involved with (Flagger, Flux, Controllers)
    ```

  - Have your sponsoring maintainers reply confirmation of sponsorship: `+1`
  - Once your sponsors have responded, your request will be reviewed by a member of the Flux [Oversight Committee].
    Any missing information will be requested.

**Responsibilities and privileges:**

- [Triage role](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-permission-levels-for-an-organization#repository-access-for-each-permission-level) on all `fluxcd` GitHub org repos
- Responsive to issues and PRs assigned to them
- Active owner of code they have contributed (unless ownership is explicitly transferred)
  - Code is well tested
  - Tests consistently pass
  - Addresses bugs or issues discovered after code is accepted
- Note: members who frequently contribute code are expected to proactively perform code reviews and work towards becoming a maintainer

### Maintainer

Maintainers are elected [Project Members][Project Member] who showed significant and sustained contributions in a git repository.

**Defined by:** entry in MAINTAINERS file in a repo owned by the Flux project, and in `@fluxcd/maintainers` GitHub team.

**Requirements:**

- Make a PR against the MAINTAINERS.md file for the subproject/repo you are
- @mention all the other maintainers
- Have maintainers submit their vote by `+1`
- Once all maintainers in repo have `+1` the pr will be reviewed by a member of the Flux [Oversight Committee]

**Responsibilities and Privileges:**

The following apply to the part of the codebase for which one would be in a MAINTAINERS file:

- Enable and promote Flux community values
- Engage with end Users through appropriate communication channels
- Serve as a point of conflict resolution between Contributors to their git repository
- Maintain open collaboration with Contributors and other Maintainers
- Ask for help when unsure and step down considerately

### Oversight Committee

The Oversight Committee is responsible for the overall project, and anything not easily managed by the Maintainers of each git repository.

The committee drives the direction, values and governance of the overall project.

The committee is currently comprised of Flux Maintainers who have steered the project prior to the initial Governance document.

In future, Committee Members will come from a diverse background of companies and organizations.
Ensuring that oversight of the project is not controlled by one company or organization.

**Defined by:** entry in OVERSIGHT.md file in the flux/community repo, and in  `@fluxcd/oversight-committee` GitHub team.

**Requirements:**

We aim to build out requirements for this role during incubation. (link to issue?)

**Responsibilities and Privileges:**

The following apply to all assets across the Flux org:

- Overseeing the project health and growth
- Maintaining the brand, mission, vision, values, and scope of the overall project
- Changes to licensing and intellectual property
- Administering access to all project assets
- Administering git repositories as needed
- Handling Code of Conduct violations
- Managing financial decisions
- Defining the scope of each git repository
- Resolving escalated decisions when Maintainers responsible are blocked

## Proccesses

### Inactivity
<!--TODO: project leads to fill in exact details for how you measure inactivity for your project-->

It is important for contributors to be and stay active to set an example and show commitment to the project.
Inactivity is harmful to the project as it may lead to unexpected delays, contributor attrition, and a lost of trust in the project.

Inactivity is to be defined by the [Oversight Committee].

Consequences of being inactive include:

- Involuntary Removal
- Being moved to Emeritus status

### Involuntary Removal

Involuntary removal of a contributor happens when responsibilities and requirements aren't being met.
This may include repeated pattern of inactivity, extended period of inactivity, and/or a violation of the Code of Conduct.
This process is important because it protects the community and its deliverables while also opens up opportunities for new contributors to step in.

Involuntary removal is handled by the [Oversight Committee].

### Stepping Down/Emeritus Process

If and when contributors' commitment levels change, contributors can consider stepping down (moving down a role) vs moving to emeritus status (completely stepping away from the project).

Please reach out to the [Oversight Committee] to discuss this process.

### Stepping Back Into a Role

If and when someone is available to step back into a previous contributor role, this is something that can be arranged and considered by the project [Oversight Committee].

Please reach out to the [Oversight Committee] to discuss this process.

### Contact

For inquiries, please reach out to: <cncf-flux-oversight-committee@lists.cncf.io>

<!-- md links -->
[Community Member]: #community-member
[Project Member]: #project-member
[Maintainer]: #maintainer
[Oversight Committee]: #oversight-committee
