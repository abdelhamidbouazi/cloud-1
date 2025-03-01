setup:
	ansible-playbook -i inventory playbooks/setup.yaml
configure:
	ansible-playbook -i inventory playbooks/configure.yaml
run:
	ansible-playbook -i inventory playbooks/run.yaml
clean:
	ansible-playbook -i inventory playbooks/clean.yaml

deploy: setup configure run