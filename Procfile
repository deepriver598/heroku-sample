# herokuの自動デプロイ機能ではDB関連の操作は実施してくれないためRelease Phase機能を利用して
# DBの更新を行う
release: bundle exec rake db:migrate
release: bundle exec rake db:seed
