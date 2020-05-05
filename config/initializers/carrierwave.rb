require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
# 画像名に日本語が使えるようにする
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/


# 保存先の分岐
CarrierWave.configure do |config|
   if Rails.env.production?
      config.storage :fog
      config.fog_provider = 'fog/aws'
      config.fog_directory  = 'rails-knowledge-img'
      config.fog_credentials = {
       provider: 'AWS',
       aws_access_key_id: Rails.application.credentials.aws[:access_key_id],
       aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key],
       region: 'ap-northeast-1' #東京リージョン
      }
   else
      # 開発環境はlocalに保存
      config.storage :file
      config.enable_processing = false if Rails.env.test? #test:処理をスキップ
   end
 end