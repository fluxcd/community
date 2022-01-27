# Flux style guide

This style guide defines how and in which contexts different Flux descriptions may be used.

## Disambiguation

There is some understandable ambiguity when describing Flux in different contexts. For example, "Flux" is the name of a CNCF project which includes Flagger as a sub-project. There is a `flux` CLI command. Flux is sometimes described as being comprised of controller components, which – along with reusable Go packages – we call the GitOps Toolkit. Flux is also sometimes used to refer only to the CLI + controllers, without the optional Flagger sub-project.

These should be clarified, and defined consistently within our own docs and readmes, if we care how Flux is understood and described by other projects, media, etc.

1. Flux CNCF incubating project
    - AKA "Flux family of projects". It  includes Flux CLI, the GitOps Toolkit (Controllers and Go packages), and Flagger
    - Example description:
        > The Flux family of projects are a set of continuous and progressive delivery solutions from Git to Kubernetes.
    - We could also define optional additional descriptions when referring to the full, all-inclusive Flux project
2. Flux CLI
    - This is the `flux` binary compiled for different architectures from the Go project at GitHub `fluxcd/flux2`
3. Flux Controllers
4. Flux Go packages
    - The "GitOps Toolkit" is what we call a set of Flux Controllers and reusable Go packages for GitOps under the `fluxcd` GitHub org. Note that we only list the controllers (at fluxcd.io > GitOps Toolkit > components), but do not also list the Packages on which the controllers are built and which others can use to build their own. One must dig into the Flux controller code to find these.
    - Example description:
        > Flux is constructed with the GitOps Toolkit, a set of composable APIs and specialized tools for building Continuous Delivery on top of Kubernetes.
5. Flux sub-projects
    - GitOps Toolkit
    - Flagger
        - part of the Flux family of projects. Can also be described as a Flux sub-project
        - Can use text from the top of GitHub `fluxcd/flagger` README. Either just the first sentence or the first paragraph, and optionally any of the following sentences there as needed:
            > Flagger is a progressive delivery tool that automates the release process for applications running on Kubernetes. It reduces the risk of introducing a new software version in production by gradually shifting traffic to the new version while measuring metrics and running conformance tests.
            >
            > Flagger implements several deployment strategies (Canary releases, A/B testing, Blue/Green mirroring) using a service mesh (App Mesh, Istio, Linkerd, Open Service Mesh) or an ingress controller (Contour, Gloo, NGINX, Skipper, Traefik) for traffic routing. For release analysis, Flagger can query Prometheus, Datadog, New Relic or CloudWatch and for alerting it uses Slack, MS Teams, Discord, Rocket and Google Chat.
            >
            > Flagger is a Cloud Native Computing Foundation project and part of the Flux family of GitOps tools.
            >
            > Flagger documentation can be found at docs.flagger.app.

## Integrations

When describing Flux integration with other projects, we should be clear which parts of Flux we mean.

### Helm docs

For example, the Helm docs [community additional tools](https://helm.sh/docs/community/related/#additional-tools) list currently includes:

> - [Flux](https://fluxcd.io) - Continuous and progressive delivery from Git to Kubernetes.

But from today's Flux dev meeting, Stefan noted and others agreed that we should update that to list Flux and Flagger separately, because for the end Helm user, they do different things. For example (in alphabetical order):

> - [Flagger](https://flagger.app/) – provides progressive delivery capabilities for Helm releases
> - [Flux CLI and controllers](https://fluxcd.io) – provide continuous delivery of Helm repos, charts, and releases from Git to Kubernetes

## Versions

When describing Flux versions, we should say "current version" when talking about GitHub `fluxcd/flux2` and "legacy version" when talking about `fluxcd/flux`.

When it is important to specify the legacy version – for example when describing our roadmap and migration timeline, or support issues specific to the legacy GitHub `fluxcd/flux` repo – it is acceptable to say "MAJOR version 1" or whatever relevant semver range.
