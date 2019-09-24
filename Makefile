.PHONY: dist test
default: help

# build all theme
build-theme:
	npm run build:theme

install:
	npm install

install-cn:
	npm install --registry=http://registry.npm.taobao.org

dev:
	npm run dev

play:
	npm run dev:play

new:
	node build/bin/new.js $(filter-out $@,$(MAKECMDGOALS))

new-lang:
	node build/bin/new-lang.js $(filter-out $@,$(MAKECMDGOALS))

dist: install
	npm run dist

deploy:
	@npm run deploy

pub:
	npm run pub

test:
	npm run test:watch

help:
	@echo "   \033[35mmake\033[0m \033[1m����ʹ��˵��\033[0m"
	@echo "   \033[35mmake install\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  ��װ����"
	@echo "   \033[35mmake new <component-name> [������]\033[0m\t---  ��������� package. ���� 'make new button ��ť'"
	@echo "   \033[35mmake dev\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  ����ģʽ"
	@echo "   \033[35mmake dist\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  ������Ŀ������Ŀ���ļ�"
	@echo "   \033[35mmake deploy\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  ���� demo"
	@echo "   \033[35mmake pub\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  ������ npm ��"
	@echo "   \033[35mmake new-lang <lang>\033[0m\t\033[0m\t\033[0m\t---  Ϊ��վ���������. ���� 'make new-lang fr'"
