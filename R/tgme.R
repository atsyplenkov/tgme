#' Send a message to telegram bot.
#'
#' @param text A message to send.
#' @param bot_name A name of the Telegram Bot
#' @param user_name A name of the user
#'
#' @return A message sent to the desired telegram bot.
#'
#' @examples
#'
#' # send a custom message
#' tgme(text = "A new text message.")
#'
#' @export
#' @importFrom telegram bot_token user_id

tgme <- function(text,
                 bot_name = "rstudio_server",
                 user_name = "me"){

  bot <- TGBot$new(token = bot_token(bot_name))

  bot$sendMessage(text = text,
                  chat_id = user_id(user_name))
}
