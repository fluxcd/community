# Community Roles

This doc outlines the various responsibilities of community roles in Flux.


| Role                | Responsibilities                                                 | Requirements                                                                                                            | Defined by                                |
|---------------------|------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| User                | Anyone who has a need for the project                            | N/A                                                                                                                     | N/A                                       |
| Member              | Active contributor in the community                              | Sponsored by 2 maintainers, 1 Oversight Committee member and multiple contributions to a project                        | Flux org Member                           |
| Maintainer          | Highly experienced, Active reviewer and contributor to a project | Unanimity from current maintainers, History of significant and substained contributions in a git repository             | Maintainers file entry                    |
| Oversight Committee | Set direction and priorities of a project                        | Unanimity from current committee members, Flux maintainer who has steered project prior to Governance doc being founded | Member of oversight committee GitHub team |

## Users

Flux end users are the most important aspect of the community, without whom the project would have no purpose. Users are anyone who has a need for the project. Apart from following the Code of Conduct, there are no special requirements.

## Member

Members are continuously active contributors in the community.

**Defined by:** Member of the Flux GitHub organization

### Requirements
- Have made multiple contributions to the project or community. Contribution may include, but is not limited to:
  - Authoring or reviewing PRs on GitHub
  - Filing or commenting on issues on GitHub
  - Contributing to project or community discussions (e.g. meetings, Slack, email discussion forums, Stack Overflow)
- Subscribed to : 
- Actively contributing to 1 or more projects
- Sponsored by 2 maintainers. **Not the following requirements for sponsors:**
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