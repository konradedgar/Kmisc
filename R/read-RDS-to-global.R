#' @title Read RDS file Directly to Global Environment
#'
#' @description The function provides convenience mechanism for creating R
#'   objects corresponding to names of RDS files.
#'
#' @details For instance, when executing
#'   \code{saved_data <- readRDS("file_path_to/saved_data.RDS")} we may do
#'   \code{read_RDS_to_global("file_path_to/saved_data.RDS")}.
#'
#' @param file_path Path to the RDS file.
#'
#' @param verbose A logical, if \code{TRUE} prints a short message with name of
#'   created object.
#'
#' @param pos defaults to 1 which equals an assignment to global environment
#'
#' @return A R object corresponding to \code{basename} on \code{file_path}
#'   argument.
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   tmpCars <- tempfile(pattern = "mtcars_temp_RDS_", fileext = ".RDS")
#'   saveRDS(object = mtcars, file = tmpCars)
#'   read_RDS_to_global(tmpCars)
#' }
#'
read_RDS_to_global <- function(file_path,
                               verbose = TRUE,
                               pos = 1) {
    # Check if path is accessible
    checkmate::assert_access(x = file_path, access = "r")


    readRDS(file = file_path) -> dta
    base_name <- basename(tools::file_path_sans_ext(file_path))
    assign(x = base_name,
           value = dta,
           envir = as.environment(pos))
    if (verbose) {
        msg <- paste("Created object:",
                     base_name,
                     "in global environment.",
                     collapse = " ")
        if (checkmate::allMissing(setdiff(base_name, ls(envir = as.environment(pos))))) {
            message(msg, appendLF = TRUE)
        } else {
            message(msg, appendLF = TRUE)
        }
    }
}
