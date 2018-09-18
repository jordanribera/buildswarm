FROM buildkite/agent

ADD id_rsa /buildkite-secrets/id_rsa_buildkite_git
RUN chmod 600 /buildkite-secrets/id_rsa_buildkite_git

ADD buildkite/hooks/environment /buildkite/hooks/environment
