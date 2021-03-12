# Community Roles

This document outlines the different roles within the project, along with the responsibilites and privileges that come with them.

| Role                | Responsibilities                                                 | Requirements                                                                                                            | Defined by                                |
|---------------------|------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| User                | Anyone who has a need for the project                            | N/A                                                                                                                     | N/A                                       |
| Community Member    | Participates in community                                        | N/A
| Contributor              | Active contributor in the community                              | Sponsored by 2 maintainers, 1 Oversight Committee member and multiple contributions to a project                        | Flux org Member                           |
| Maintainer          | Highly experienced, Active reviewer and contributor to a project | Unanimity from current maintainers, History of significant and substained contributions in a git repository             | Maintainers file entry                    |
| Oversight Committee | Set direction and priorities of a project                        | Unanimity from current committee members, Flux maintainer who has steered project prior to Governance doc being founded | Member of oversight committee GitHub team |

## Users

Flux end users are the most important aspect of the community, without whom the project would have no purpose. Users are anyone who has a need for the project. Apart from following the Code of Conduct, there are no special requirements.

## Community Member

A community member participates in the community and contributes their time, thoughts, etc. Users are anonymous users of the project - once they stop being anonymous and participate, they become a community member.

### Responsibilities
- Must follow the [CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md)

## Contributor

A contributor contributes directly to the project and adds value to it, making the maintainers' lives easier.

**Defined by:** Member of the Flux GitHub organization

### Requirements
- Have made multiple contributions to the project or community. Contribution may include, but is not limited to:
  - Authoring or reviewing PRs on GitHub
  - Filing or commenting on issues on GitHub
  - Contributing to project or community discussions (e.g. meetings, Slack, email discussion forums, Stack Overflow)
- Subscribed to the [flux-dev mailing list](https://lists.cncf.io/g/cncf-flux-dev/join)
- Actively contributing to 1 or more projects
- Sponsored by 2 maintainers. **Note the following requirements for sponsors:**
  - Sponsors must have close interactions with the prospective member - e.g. code/design/proposal review, coordinating on issues, etc.
  - Sponsors must be from multiple companies to demonstrate integration across community
- Open an issue against the **flux/community** repo
  - Ensure your sponsors are @mentioned on the issue
  - Complete every item on the checklist
  - ```markdown
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
        - Issues responded to
        - Flux subrojects I am involved with
    ```
  - Have your sponsoring maintainers reply confirmation of sponsorship: `+1`
  - Once your sponsors have responded, your request will be reviewed by a member of the Flux Oversight Committee. Any missing information will be requested.

## Responsibilities and privileges

- Responsive to issues and PRs assigned to them
- At this stage, being a member is recognition / acknowledgement that does not come with any additional privileges.
- Active owner of code they have contributed (unless ownership is explicitly transferred)
  - Code is well tested
  - Tests consistently pass
  - Addresses bugs or issues discovered after code is accepted
- Note: members who frequently contribute code are expected to proactively perform code reviews and work towards becoming a maintainer
- Must follow the [CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md)

## Maintainers

Maintainers are elected Contributors who showed significant and sustained contributions in a git repository.

**Defined by:** entry in MAINTAINERS file in a repo owned by the Flux project, member of the Flux maintainers team https://github.com/orgs/fluxcd/teams/maintainers

### Requirements

- Make a PR against the MAINTAINERS.md file for the subproject/repo you are 
- @mention all the other maintainers
- Have maintainers submit their vote by `+1`
- Once all maintainers in repo have `+1` the pr will be reviewed by a member of the Flux Oversight Committee.

### Responsibilities and Privileges

The following apply to the part of the codebase for which one would be in a MAINTAINERS file
  - Enable and promote Flux community values
  - Engage with end Users through appropriate communication channels
  - Serve as a point of conflict resolution between Contributors to their git repository
  - Maintain open collaboration with Contributors and other Maintainers
  - Ask for help when unsure and step down considerately

The following applies everywhere
  - Must follow the [CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md)

## Oversight Committee

This committee is responsible for the overall project, and anything not easily managed by the Maintainers of each git repository.

Ultimately the committee - after consulting with the collective of Maintainers and their community - drive the direction, values and governance of the overall project.

**Defined by:** entry in org/oversight.yaml file in the flux/community repo, member of https://github.com/orgs/fluxcd/teams/oversight-committee

### Requirements

At this stage this committee is comprised of Flux Maintainers who have steered the project prior to the initial Governance document

The aspiration is no one company or organization should have oversight of the overall project, however that is not yet realistic at this stage. The goal is to broaden maintainership to include a wider range of organizations during CNCF incubation.

We hope to build out requirements for this role in incubation.

### Responsibilities and Privileges

The following apply to all assets across the Flux org
- Overseeing the project health and growth
- Maintaining the brand, mission, vision, values, and scope of the overall project
- Changes to licensing and intellectual property
- Administering access to all project assets
- Administering git repositories as needed
- Handling Code of Conduct violations
- Managing financial decisions
- Defining the scope of each git repository
- Resolving escalated decisions when Maintainers responsible are blocked

The following applies everywhere
  - Must follow the [CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md)

## Inactivity
<!--TODO: project leads to fill in exact details for how you measure inactivity for your project-->

It is important for contributors to be and stay active to set an example and show commitment to the project. Inactivity is harmful to the project as it may lead to unexpected delays, contributor attrition, and a lost of trust in the project. 
* Inactivity is measured by:
    * Periods of no contributions for longer than X months
    * Periods of no communication for longer than X months
* Consequences of being inactive include:
    * Involuntary Removal
    * Being asked to move to Emeritus status


## Involuntary Removal
<!-- project leads may want to consider integrating this section under every role description -->

Involuntary removal of a contributor happens when responsibilities and requirements aren't being met. This may include repeated pattern of inactivity, extended period of inactivity, and/or a violation of the Code of Conduct. This process is important because it protects the community and its deliverables while also opens up opportunities for new contributors to step in.

Involuntary removal is handled by X. 

## Stepping Down/Emeritus Process
If and when contributors' commitment levels change, contributors can consider stepping down (moving down a role) vs moving to emeritus status (completely stepping away from the project). 

Please reach out to X to discuss this process.

## Stepping Back Into a Role
If and when someone is available to step back into a previous contributor role, this is something that can be arranged and considered by the project oversight committee.

Please reach out to X to discuss this process.

## Contact
* For inquiries, please reach out to:
    *  <!-- TODO: fill in contact info-->
