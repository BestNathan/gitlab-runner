docker run \
 -d \
 --name gitlab-runner \
 --restart always \
 --link gitlab:gitlab \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v /srv/gitlab-runner/config:/etc/gitlab-runner \
 -v $PWD/scripts:/scripts \
 gitlab/gitlab-runner:latest
