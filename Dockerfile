FROM perl:latest

WORKDIR /workspace

RUN apt-get update && \
    apt-get -y install git && \
    apt-get clean

RUN export LC_ALL=C

RUN cpanm --self-upgrade && \
    cpanm Class::Load && \
    cpanm Log::Dispatch::Array && \
    cpanm Sereal::Decoder && \
    cpanm Test::Needs && \
    cpanm Log::Dispatch && \
    cpanm TOML::Tiny && \
    cpanm Test::Differences && \
    cpanm Test::Script && \
    cpanm Sereal::Encoder && \
    cpanm Perl::Critic && \
    cpanm App::perlimports && \
    cpanm Test::More && \
    cpanm App::EditorTools && \
    cpanm File::Find::Rule --force

RUN cpanm App::PRT --force
