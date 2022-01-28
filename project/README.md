# Flux Project Information

This directory contains scripts and data useful for project-wide admin tasks and for providing a general interview.

Background: Sometimes we needed to provide all maintainer email addresses for sign-up with CNCF services, or we needed a break-down of how many maintainers we have, or who they were employed by.

To make obtaining the information easier and potentially track numbers further at some point in the future, let's collect project-wide scripts and data in here.

## Data

These are all auto-generated:

- `flux-project-alumni.yaml`: list of alumni maintainers of Flux projects
- `flux-project-maintainers.yaml`: list of current maintainers of Flux projects
- `rolodex.yaml`: affiliation/contact information for all Flux maintainers

## Scripts

- `bin/get_maintainer_data`: get maintainer information.
  This script is run regularly in a GitHub workflow and will file PRs to update maintainer info in the repository.
