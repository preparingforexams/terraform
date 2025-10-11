module "transcription_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name        = "telegram-transcription-bot"
  description = " Voice message transcription for Telegram, based on Azure Cognitive Services"
}
