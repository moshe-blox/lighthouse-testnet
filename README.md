# lighthouse-testnet

This Dockerfile clones [Lighthouse](https://github.com/sigp/lighthouse) and starts a local testnet.

## Usage
```
docker-compose up
```

## Customization

### Overriding Lighthouse's scripts

You can duplicate Lighthouse's `scripts/local_testnet` directory, modify it and mount it at `/custom_local_testnet`:

```
docker run -v my_scripts:/custom_local_testnet -p 8001:8001 mosheblox/lighthouse-testnet
```

### Only overriding `vars.env` (TBD)
Create a `vars.env` file in the root directory of the repository and override Lighthouse's default `vars.env` to your liking.