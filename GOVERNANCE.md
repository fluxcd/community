<!-- see https://github.com/yzhang-gh/vscode-markdown/blob/master/README.md#table-of-contents -->
<!-- omit in toc -->
# Flux Governance

This document <https://github.com/fluxcd/community/blob/main/GOVERNANCE.md> defines the governance process for the Flux project and community.

- [Values](#values)
  - [Code of Conduct](#code-of-conduct)
  - [Meetings](#meetings)
- [Roles and Process in the Flux Community](#roles-and-process-in-the-flux-community)
- [Decision Making](#decision-making)
  - [Deciders](#deciders)
  - [Decision Guidelines](#decision-guidelines)
  - [Simple Majority Decisions](#simple-majority-decisions)
  - [Supermajority Decisions](#supermajority-decisions)
- [Licenses and Copyright](#licenses-and-copyright)

## Values

- **Open:**
The Flux community strives to be open, accessible and welcoming to everyone.
Anyone may contribute, and contributions are available to all users according to open source values and licenses.
- **Transparent:**
Flux strives for transparency in all discussions, announcements, disclosures and decision making.
- **Unbiased:**
Flux strives to operate independently of specific partisan interests, and for decision making to fairly balance the wider community interests of its end users and contributors.

### Code of Conduct

[Code of Conduct](CODE_OF_CONDUCT.md) violations by community members will be discussed and resolved on the [private Maintainer mailing list](mailto:cncf-flux-maintainers@lists.cncf.io). If the reported CoC violator is a Maintainer, the Maintainers will instead designate two Maintainers to work with CNCF staff in resolving the report.

### Meetings

Time zones permitting, Maintainers are expected to participate in the [public
developer meeting](README.md#meetings).

Maintainers will also have closed meetings in order to discuss security reports
or Code of Conduct violations.  Such meetings should be scheduled by any
Maintainer on receipt of a security issue or CoC report.  All current Maintainers
must be invited to such closed meetings, except for any Maintainer who is
accused of a CoC violation.

Note: Refer to [our security process](https://fluxcd.io/security) for more information on how security issues are handled in particular.

## Roles and Process in the Flux Community

See

- [community-roles.md](community-roles.md) for the definition of roles in our community and
- [PROCESS.md](PROCESS.md) to understand how to interact with Flux Community processes

## Decision Making

While we spell out all the possibilities for decision making and possible eventualities below, the Flux project almost always looked for and found consensus. Using lazy consensus never resulted in later disputes. Our communication channels (public meetings, Slack, RFCs, etc) provide us with the means to have agreement before we set up a vote.

If we fail to make a decision or the picture was unclear, we found that we needed more information. In these cases, we reach out to users, adjacent projects or counterpart teams in the CNCF.

### Deciders

- Repository [Maintainers][Maintainer]: Decisions that affect only one Git repository.
- [core maintainers]: Decisions that are outside the scope of a single Git repository.

### Decision Guidelines

- Decisions that warrant wider input should be made public by using the below guidelines in combination with the [Proposal Process](PROCESS.md#proposal-process).
- Whether or not wider input is required, the Flux community believes that the best decisions are reached through Consensus <https://en.wikipedia.org/wiki/Consensus_decision-making>.
- Most decisions start by seeking Lazy Consensus <https://communitymgt.wikia.com/wiki/Lazy_consensus>.
- If an objection is raised through the Lazy Consensus process, Deciders work together to seek an agreeable solution.
- If Consensus can not be reached, but a decision must be made, the next step is try to attempt to agree that a vote should be called.
  This is important, as it gives dissenting views a chance to request more information or raise further points.
  If Deciders are the [core maintainers], part of that responsibility is the final point of escalation, so agreeing to a vote is assumed if timeline doesn't allow the consensus process to continue.
- If Deciders are Repository [Maintainers][Maintainer], and they can't agree on calling a vote, they may escalate to the [core maintainers].
  This should only be done at this stage if:
  1. An unmovable deadline is threatened by continuing the Consensus process; or
  2. A Decider feels there is unreasonable blocking of both reaching Consensus and agreeing to a vote.
      This should be rare, due to the social cost of discontinuing the Consensus process for this reason.
      Most decisions should wait for the above process to take its course.
- If Deciders agree to a vote, the default is a Simple Majority.
- However, there are cases that require stronger voting – Supermajority – specified below:

### Simple Majority Decisions

If a vote is called, the default is a Simple Majority Vote – more than half of all [Deciders](#deciders).

### Supermajority Decisions

If a vote is called, the following decisions require a Supermajority Vote – two-thirds or more of all [Deciders](#deciders):

- Repository [Maintainers][Maintainer]: Electing new Maintainers of the same repository.
- [core maintainers]: Enforcing a Code of Conduct violation by a community member.
- [core maintainers]: Removing a Maintainer of any repository for any reason other than inactivity.
- [core maintainers]: Licensing and intellectual property changes.
- [core maintainers]: Material changes to the Governance document.
  - Note: editorial changes to governance may be made by lazy consensus, unless challenged.
    These are changes which fix spelling or grammar, update work affiliation or similar, update style or reflect an outside and obvious reality.
    They do not change the intention or meaning of anything in this document.
- [core maintainers]: Elect new [org admins].

## Licenses and Copyright

- Apache 2.0 is required for all Git repositories.
- Developer Certificate of Origin (DCO) commit signoff is required for all new code contributions.

Links to relevant CNCF documentation:

- <https://github.com/cncf/foundation/blob/master/charter.md#11-ip-policy>
- <https://github.com/cncf/foundation/blob/master/allowed-third-party-license-policy.md#approved-licenses-for-allowlist>
- <https://github.com/cncf/foundation/blob/master/copyright-notices.md#copyright-notices>

<!-- md links -->
[Maintainer]: community-roles.md#maintainer
[core maintainers]: community-roles.md#core-maintainers
[org admins]: community-roles.md#org-admins
[community-roles.md]: community-roles.md
