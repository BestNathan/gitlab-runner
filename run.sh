script=$1
if [ -n "$script" ]
then
  echo script: $script will run in gitlab-runner container
  docker exec -it gitlab-runner /bin/bash /scripts/${script}
else
  echo "no scripts to run"
fi
