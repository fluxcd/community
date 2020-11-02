# Contributing

This document <https://github.com/fluxcd/community/blob/main/CONTRIBUTING.md> defines the contribution process for the Flux project and community.
These guidelines apply to all git repositories in the `fluxcd` GitHub org, however each repository may specify additional contribution processes.

## Welcome

We gratefully welcome all kinds of contributions, including code, issues, documentation, external tools, advocacy and community work.
All members of the Flux community, including contributors, are expected to uphold the Flux community [Values](https://github.com/fluxcd/community/blob/main/GOVERNANCE.md#values) and [Code of Conduct](https://github.com/fluxcd/community/blob/main/GOVERNANCE.md#code-of-conduct).

## Communication

As a contributor we want to invite you to join the discussions in a variety of forums laid out in <https://github.com/fluxcd/community>.
All contributions – code or non-code – should follow the steps outlined in the [Proposal Process](https://github.com/fluxcd/community/blob/main/GOVERNANCE.md#proposal-process).

## Semantic Versioning

The Flux project and community git repositories maintain a strong commitment to clear communication about backwards compatibility.
For this reason, all code contributions must follow the Semantic Versioning 2.0.0 Specification (SemVer) per <https://semver.org/>, so that users can trust compatibility based on version scheme.

## Certificate of Origin

Developer Certificate of Origin (DCO) commit signoff is required for all new code contributions.
This is automaically checked by the [Probot: DCO](https://github.com/probot/dco/) integration across all `fluxcd` GitHub org repositories.

Commit signoff is a simple statement that you, as a contributor, have the legal right to make the contribution.
See `git help commit`:

> The meaning of a signoff depends on the project, but it typically certifies that committer has the rights to submit this work under the same license and agrees to a Developer Certificate of Origin (see <http://developercertificate.org/> for more information).

### CLI

When signing commits with `git commit -s`, signoff is drawn automatically from your `user.name` and `user.email` git configs.
If you choose to manually add a signoff line to your commit message, it must be properly formatted and match your commit information. For example, when using the GitHub [private email option](https://docs.github.com/en/free-pro-team@latest/github/setting-up-and-managing-your-github-user-account/setting-your-commit-email-address) you must set your git config email accordingly.
For those who wish to ensure this is always done in your CLI, consider implementing something like [this gist](https://gist.github.com/scottrigby/0c043c0bfbbdb5949e2d824fc3adeaa4).

### Browser

For contributions made with the GitHub UI — including [applying suggested changes](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/incorporating-feedback-in-your-pull-request) — the [scottrigby/dco-gh-ui](https://github.com/scottrigby/dco-gh-ui) browser extension is recommended.
This pre-fills GitHub's commit textareas with a properly formatted signoff from your configured name and email.
Otherwise, you will need to be sure to do so manually.

## Thank You

[Contributors](https://github.com/fluxcd/community/blob/main/GOVERNANCE.md#contributors) are crucial to ensuring the Flux project continues to fairly represent community interests.
Thank you for all that you do.
