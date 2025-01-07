.PHONY: help clean watch gen purge

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

clean: ## キャッシュ削除
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean

watch: ## build_runnerの変更自動検知
	@echo "╠ Watching the project..."
	@flutter pub run build_runner watch --delete-conflicting-outputs

gen: ## Assets系の自動生成
	@echo "╠ Generating the assets..."
	@flutter pub get
	@cd ios; pod install; cd ..;
	@flutter packages pub run build_runner build --delete-conflicting-outputs

purge: ## キャッシュの削除と再ビルド
	@echo "╠ Purging the app and Rebuilding"
	@cd ios; pod deintegrate; cd ..;
	@flutter clean
	@make gen
	@cd ios; pod install; cd ..;
