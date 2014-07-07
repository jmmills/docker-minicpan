# docker-minicpan

CPAN::Mini inside a docker container

Run a volume mirror (will start mirroring latest packages, \~2gb of
data)

    docker run -d jmmills/minicpan -l /cpan

Use that mirror in a container (when it finishes mirroring latest
packages)

    docker run -d jmmills/plenv cpanm --mirror ~/cpan
