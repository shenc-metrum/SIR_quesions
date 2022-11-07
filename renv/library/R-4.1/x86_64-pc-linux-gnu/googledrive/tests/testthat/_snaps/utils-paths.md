# root_folder() and root_id() work

    Code
      root_folder()
    Output
      # A dribble: 1 x 3
        name     id                  drive_resource   
        <chr>    <drv_id>            <list>           
      1 My Drive 0AK935f1rlmIZUk9PVA <named list [30]>

---

    Code
      root_id()
    Output
      <drive_id[1]>
      [1] 0AK935f1rlmIZUk9PVA

# rootize_path() errors for leading slash

    Code
      rootize_path("/")
    Error <rlang_error>
      googledrive does not allow paths to start with `/`

# partition_path() fails for bad input

    Code
      partition_path(letters)
    Error <simpleError>
      is_string(path) is not TRUE

---

    Code
      partition_path(dribble())
    Error <simpleError>
      is_string(path) is not TRUE

---

    Code
      partition_path(as_id("123"))
    Error <simpleError>
      is_string(path) is not TRUE

# rationalize_path_name() errors for bad `name`, before hitting API

    Code
      rationalize_path_name(name = letters)
    Error <simpleError>
      is_string(name) is not TRUE

