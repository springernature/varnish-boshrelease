# Bosh release for Varnish HTTP Cache

This BOSH released deploys a Varnish HTTP Cache server. Varnish is a web accelerator (caching reverse proxy) that reduces load on its backend and speeds up content delivery.
This releases was primarily designed to be integrated with Cloud Foundry by fronting the Gorouters. It packages the [latest released version of the Varnish 6.0 LTS branch](https://varnish-cache.org/lists/pipermail/varnish-announce/2021-November/000749.html).
