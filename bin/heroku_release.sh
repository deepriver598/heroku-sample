# herokuのRelease Phaseでは複数コマンドを実行できないため、本ファイルに実行するコマンドを記載する
bundle exec rake db:migrate
bundle exec rake db:seed
