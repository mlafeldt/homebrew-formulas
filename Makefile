update: cktool

cktool:
	curl -fSsL https://github.com/mlafeldt/ck/releases/download/$$(curl -fSsL https://api.github.com/repos/mlafeldt/ck/releases/latest | jq -r .tag_name)/cktool.rb > Formula/cktool.rb
	git commit -m "Update cktool to latest release" Formula/cktool.rb || true
