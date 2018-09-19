# buildswarm
a swarm of buildkite agents

## setup
**agent token:** make a copy of `configuration/secret.env.sample` and
modify it, replacing `<token>` with your token.

**ssh keys:** copy your git-authorized key to `configuration/id_rsa`.


## running
**on osx/linux:** `./start.sh` will create a buildkite agent.

**options:** `./start.sh 8 -d` will start 8 agents in the background.

**on windows:** `./start/ps1 8 -d` will do the same.
