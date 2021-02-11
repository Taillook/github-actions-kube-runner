HELM_UPGRADE_OPT ?=
NAME ?= github-actions-kube-runner
NAMESPACE ?= github-actions-kube-runner

.PHONY: helm-install
helm-install:
	helm install ${NAME} --namespace ${NAMESPACE} --create-namespace ${NAME} .
.PHONY: helm-upgrade
helm-upgrade:
	helm upgrade ${NAME} ${HELM_UPGRADE_OPT} --namespace ${NAMESPACE} .
.PHONY: helm-delete
helm-delete:
	helm delete ${NAME} --namespace ${NAMESPACE}
.PHONY: helm-diff
helm-diff:
	helm diff -q --allow-unreleased --no-color upgrade ${NAME} --namespace ${NAMESPACE} .
