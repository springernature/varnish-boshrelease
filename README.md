# Bosh release for Varnish HTTP Cache

This [BOSH](https://bosh.io/) release deploys a [Varnish HTTP Cache](https://varnish-cache.org/) server.

Varnish is a web accelerator (caching reverse proxy) that reduces load on its backend and speeds up content delivery.
This releases was primarily designed to be integrated with [Cloud Foundry](https://www.cloudfoundry.org/) by fronting the Gorouters. It packages the [latest released version of the Varnish 6.0 LTS branch](https://varnish-cache.org/lists/pipermail/varnish-announce/2021-November/000749.html).

## Usage

To deploy a Varnish instance using the provided [example manifest](manifests/varnish.yml), run the following command:

```
bosh -e <env> -d varnish deploy manifests/varnish.yml
```

A more advanced example can be found in [`manifests/varnish-with-haproxy.yml`](manifests/varnish-with-haproxy.yml):

```
bosh -e <env> -d varnish-haproxy-test deploy manifests/varnish-with-haproxy.yml
```

Here, Varnish is fronted by HAProxy for [TLS termination](https://en.wikipedia.org/wiki/TLS_termination_proxy) and [consistent hashing](https://en.wikipedia.org/wiki/Consistent_hashing).
It includes a custom [drain script](https://bosh.io/docs/drain/) that combined with a some [VCL](https://varnish-cache.org/docs/6.0/users-guide/vcl.html) logic and a health check in HAProxy ensures a graceful shutdown of the Varnish instances (no lost requests or error responses).

It is assumed that users of this release will create their own manifest customized to their environment.
