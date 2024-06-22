# real-time commands
echo '' >> ~/.bashrc
echo '#real-time commands' >> ~/.bashrc
echo 'shopt -s histappend' >> ~/.bashrc
echo 'PROMPT_COMMAND="history -a;$PROMPT_COMMAND"' >> ~/.bashrc

# download plugin
docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

