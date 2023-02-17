FROM ubuntu

WORKDIR /home/
ARG git_acc

RUN if test ! -d ".git" ; then apt update; apt install -y gfortran git; git clone -b dev https://$git_acc@github.com/Akshat-mehrotra/mini_COCAL . ; echo "\n Cloned the dir \n";fi

#CMD ["bash", "mini_RNS_CFpeos_test.sh"]
#CMD ["sleep", "infinity"]