update: chaosmonkey cktool

chaosmonkey:
	curl -fSsL https://github.com/mlafeldt/chaosmonkey/releases/download/$$(curl -fSsL https://api.github.com/repos/mlafeldt/chaosmonkey/releases/latest | jq -r .tag_name)/chaosmonkey.rb > Formula/chaosmonkey.rb
	git commit -m "Update chaosmonkey to latest release" Formula/chaosmonkey.rb || true

cktool:
	curl -fSsL https://github.com/mlafeldt/ck/releases/download/$$(curl -fSsL https://api.github.com/repos/mlafeldt/ck/releases/latest | jq -r .tag_name)/cktool.rb > Formula/cktool.rb
	git commit -m "Update cktool to latest release" Formula/cktool.rb || true
