#' Animal sounds function
#' Insert animal and sound parameters into **[animal_sounds()]**, will output a sentence that contains these
#' parameters to tell you what sounds the animals make
#'
#' @param animal a single string
#' @param sound a single string
#'
#' @return prints what the animal says
#' @export
#'
#' @examples
#' animal_sounds("dog", "bark")

animal_sounds <- function(animal, sound = NULL) {
  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead."),
      class = "error_not_single_string"
    )
  }
  if(is.null(sound)){
    return(paste0("The ", animal, " makes no sound."))
  }

  if(!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead."),
      class = "error_not_single_string"
    )
  }
  paste0("The ", animal, " goes ", sound, "!")
}


