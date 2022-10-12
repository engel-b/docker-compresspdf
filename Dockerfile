FROM dcycle/compresspdf:3

COPY docker-resources/run-multi.sh /run-multi.sh.sh

ENTRYPOINT [ "/run-multi.sh.sh" ]
