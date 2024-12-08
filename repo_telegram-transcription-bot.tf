module "transcription_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name        = "telegram-transcription-bot"
  description = " Voice message transcription for Telegram, based on Azure Cognitive Services"
}
