# Bosh release for Varnish HTTP Cache

This [BOSH release](https://bosh.io/) deploys a [Varnish HTTP Cache](https://varnish-cache.org/) server.

Varnish is a web accelerator (caching reverse proxy) that reduces load on its backend and speeds up content delivery.
This releases was primarily designed to be integrated with [Cloud Foundry](https://www.cloudfoundry.org/) by fronting the Gorouters. It packages the [latest released version of the Varnish 6.0 LTS branch](https://varnish-cache.org/lists/pipermail/varnish-announce/2021-November/000749.html).

## Usage

To deploy a `varnish` server using the provided example manifest run the following command:

```
bosh -e <env> -d varnish deploy manifests/varnish.yml
```
