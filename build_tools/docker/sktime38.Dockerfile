FROM python:3.8

ADD ./  ./sktime

WORKDIR ./sktime

RUN python -m pip install .[all_extras,dev]

ENTRYPOINT ["tail", "-f", "/dev/null"]