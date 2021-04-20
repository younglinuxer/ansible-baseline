# NOTE: Prepare following Requirements and Build the image "kubeasz:$TAG"
# Requirement 1: git clone --depth=1 https://github.com/gjmzj/kubeasz.git 
# Requirement 2: download binaries at https://pan.baidu.com/s/1c4RFaA, and put into dir 'kubeasz/bin'
# Build: docker build -t kubeasz:$TAG .

FROM younglinuxer/ansible:v2.9

COPY ./ /etc/ansible

RUN ln -s /etc/ansible/tools/yctl /usr/bin/yctl

CMD [ "sleep", "360000000" ]
