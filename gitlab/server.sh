sudo apt-get update
sudo apt-get install -y vim curl openssh-server ca-certificates
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
sudo EXTERNAL_URL="http://localhost" apt-get install gitlab-ee