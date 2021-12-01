# Bosh release for Varnish HTTP Cache

This [BOSH](https://bosh.io/) release deploys a [Varnish HTTP Cache](https://varnish-cache.org/) server.

Varnish is a web accelerator (caching reverse proxy) that reduces load on its backend and speeds up content delivery.
This releases was primarily designed to be integrated with [Cloud Foundry](https://www.cloudfoundry.org/) by fronting the Gorouters. It packages the [latest released version of the Varnish 6.0 LTS branch](https://varnish-cache.org/lists/pipermail/varnish-announce/2021-November/000749.html).

## Usage

To deploy a Varnish instance using the provided example manifest, run the following command:

```
bosh -e <env> -d varnish deploy manifests/varnish.yml
```

A more advanced example can be found in the `manifests/varnish-with-haproxy`:

```
bosh -e <env> -d varnish-haproxy-test deploy manifests/varnish-with-haproxy.yml
```

Here, Varnish is fronted by HAProxy for TLS termination and consistent hashing.
It includes a custom drain script that combined with a some VCL logic and a health check in HAProxy ensures a graceful shutdown of the Varnish instances (no lost requests or error responses).
