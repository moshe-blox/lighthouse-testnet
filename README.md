# lighthouse-testnet

This Dockerfile clones [Lighthouse](https://github.com/sigp/lighthouse) and starts a local testnet.

## Usage
```
docker-compose up
```

## Customization

### Modifying `vars.env` (TBD)
Create a `vars.env` file in the root directory of the repository and override Lighthouse's default `vars.env` to your liking.

### Overriding Lighthouse's scripts

Duplicate Lighthouse's `scripts/local_testnet` directory, modify it to your liking and mount it at `/custom_local_testnet`:

```
docker run -v my_scripts:/custom_local_testnet -p 8001:8001 --init mosheblox/lighthouse-testnet
```

Keep in mind that `start_local_testnet.sh` will be used to launch the testnet.