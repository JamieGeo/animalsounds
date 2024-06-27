## code to prepare `farm_animals` dataset goes here
animals <- c("sheep", "cow", "pig")
sounds <- c("baa", "moo", "oink")
farm_animals <- data.frame(animal = animals, sound = sounds)
usethis::use_data(farm_animals, overwrite = TRUE)
