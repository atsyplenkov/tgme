#' Send a message to telegram bot.
#'
#' @param text A message to send.
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

tgme <- function(text){

  bot <- TGBot$new(token = bot_token('rstudio_server'))

  bot$sendMessage(text = text,
                  chat_id = user_id('me'))
}
