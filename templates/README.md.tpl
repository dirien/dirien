![hello](https://media.giphy.com/media/3ornk57KwDXf81rjWM/giphy.gif)

## 👉 Engin Diri

I am a software engineer with an obsession in DevOps, Serverless, Kubernetes and much more...

[![](https://img.shields.io/badge/-@__ediri-000000?style=for-the-badge&logo=X&logoColor=ffffff)](https://x.com/_ediri)
[![](https://img.shields.io/badge/engin--diri-0A66C2?style=for-the-badge&logo=linkedin&logoColor=#0A66C2)](https://www.linkedin.com/in/engin-diri/)
[![](https://img.shields.io/badge/@_ediri@cloud--native.social-6364FF?style=for-the-badge&logo=mastodon&logoColor=white)](https://cloud-native.social/@_ediri)
[![](https://img.shields.io/badge/-@dirien-%23181717?style=for-the-badge&logo=github)](https://github.com/dirien)
[![](https://img.shields.io/badge/-blog.ediri.io-2962FF?style=for-the-badge&logo=hashnode&logoColor=white)](https://blog.ediri.io/)
[![](https://img.shields.io/badge/dirien-003366?style=for-the-badge&logo=linuxfoundation&logoColor=white)](https://openprofile.dev/profile/dirien)
[![](https://img.shields.io/badge/-@__ediri-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/_ediri/)

## 🎬 My Activities

#### 📖 My latest blog posts
{{- range rss "https://blog.ediri.io/rss.xml" 6 }}
- [{{ .Title }}]({{ .URL }}) ({{ humanize .PublishedAt }})
{{- end }}

#### 👷 I'm currently working on
{{range recentContributions 5}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .OccurredAt}})
{{- end}}

#### 🚀 Latest releases I contributed to
{{range recentReleases 5}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}){{ with .Description }} - {{.}}{{ end }}
{{- end}}

#### ⭐ Latest repositories I starred
{{range recentStars 10}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} - {{.Repo.Stargazers}} stars
{{- end}}

#### 👥 Latest follower
{{range followers 5}}
- [{{.Login}}]({{.URL}}) - {{.Name}}
{{- end}}

#### 👨‍💻 Repositories I created recently
{{range recentRepos 5}}
- [{{.Name}}]({{.URL}}){{ with .Description }} - {{.}}{{ end }}
{{- end}}


## 🏗️ My Projects
[minectl 🗺](https://github.com/dirien/minectl)

minectl is a cli for creating Minecraft server on different cloud provider.

[minecraft-prometheus-exporter](https://github.com/dirien/minecraft-prometheus-exporter)

This is a Prometheus Minecraft exporter, created as part of the minectl 🗺 project.

[K3SAIR 🏴‍☠️️ ('Corsair')](https://github.com/dirien/k3sair-cli)

k3sair is a cli for the installation of k3s in an Air-Gapped environment.

The idea is born, during the installation attempt in my company. So we are using this cli too, for our own
installations. It is build completely on zero-trust, k3sair is not saving anything.

## 🎓 Certificates & Trainings

badges_tag
## 💻 Technologies & Tools

![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/VisualStudioCode-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)
![Vim](https://img.shields.io/badge/VIM-%2311AB00.svg?style=for-the-badge&logo=vim&logoColor=white)

##

![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Fedora](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white)
![Docker](https://img.shields.io/badge/docker-0db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Vagrant](https://img.shields.io/badge/vagrant-1563FF.svg?style=for-the-badge&logo=vagrant&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-1A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Pulumi](https://img.shields.io/badge/pulumi-8A3391.svg?style=for-the-badge&logo=pulumi&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-5835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Redis](https://img.shields.io/badge/redis-DD0031.svg?style=for-the-badge&logo=redis&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Rancher](https://img.shields.io/badge/rancher-0075A8.svg?style=for-the-badge&logo=rancher&logoColor=white)
![k3s](https://img.shields.io/badge/k3s-FFC61C.svg?style=for-the-badge&logo=k3s&logoColor=white)

##

![Scaleway](https://img.shields.io/badge/SCALEWAY-4f0599.svg?style=for-the-badge&logo=scaleway&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Google Cloud](https://img.shields.io/badge/GoogleCloud-4285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)
![Azure](https://img.shields.io/badge/azure-0078D4.svg?style=for-the-badge&logo=microsoft-azure&logoColor=white)
![Heroku](https://img.shields.io/badge/heroku-430098.svg?style=for-the-badge&logo=heroku&logoColor=white)
![OpenStack](https://img.shields.io/badge/Openstack-f01742.svg?style=for-the-badge&logo=openstack&logoColor=white)
![DigitalOcean](https://img.shields.io/badge/DigitalOcean-0080FF.svg?style=for-the-badge&logo=DigitalOcean&logoColor=white)
![CloudFundry](https://img.shields.io/badge/CloudFoundry-0C9ED5.svg?style=for-the-badge&logo=cloudfoundry&logoColor=white)
![Civo](https://img.shields.io/badge/civo-239DFF.svg?style=for-the-badge&logo=civo&logoColor=white)
![Akami](https://img.shields.io/badge/akamai-0096D6?style=for-the-badge&logo=akamai&logoColor=white)
![Hetzner](https://img.shields.io/badge/hetzner-d50c2d?style=for-the-badge&logo=hetzner&logoColor=white)
![Equinix Metal](https://img.shields.io/badge/equinix--metal-d10810?style=for-the-badge&logo=equinixmetal&logoColor=white)
![Vultr](https://img.shields.io/badge/vultr-007BFC?style=for-the-badge&logo=vultr&logoColor=white)
![OVH](https://img.shields.io/badge/ovh-123F6D?style=for-the-badge&logo=ovh&logoColor=white)
![Oracle Cloud Infrastructure](https://img.shields.io/badge/Oracle_Cloud_Infrastructure-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![Ionos Cloud](https://img.shields.io/badge/ionos--cloud-003D8F?style=for-the-badge&logo=ionos&logoColor=white)
![VEXXHOST](https://img.shields.io/badge/VEXXHOST-2A1659?style=for-the-badge&logo=vexxhost&logoColor=white)
![Multipass](https://img.shields.io/badge/Multipass-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Exoscale](https://img.shields.io/badge/Exoscale-DA291C?style=for-the-badge&logo=exoscale&logoColor=white)
![Fuga Cloud](https://img.shields.io/badge/fuga_cloud-242F4B?style=for-the-badge&logo=fugacloud&logoColor=white)

## ⚡ GitHub Stats

![dirien](https://github-readme-stats.vercel.app/api?username=dirien&show_icons=true&count_private=true&theme=dracula)

![Visitor Badge](https://visitor-badge.laobi.icu/badge?page_id=dirien)
[![GitHub followers](https://img.shields.io/github/followers/dirien.svg?style=social&label=Follow&maxAge=2592000)](https://github.com/dirien?tab=followers)

🧿
