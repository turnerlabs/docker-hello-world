Turner Docker example!

This is an example use case of the build-repo at
http://bitbucket.org/vgtf/mss-docker-build-scripts

To build this, check out the build repo and run bin/build from within this repo.

Alternately, if you made a tar of this repo, you could use the api as such:
http://madops_bot:madops4lyfe@dmtbuild.turner.com/rest/api/latest/queue/MADOPS-MSSDOCKERBUILDER.json?executeAllStages=true&os_authType=basic&bamboo.variable.TARBALL=http://hello.com/tgz-of-this-source.tar.gz

This repo also includes a script called deploy. This is an example of how to deploy our image to a pod in deployit.
