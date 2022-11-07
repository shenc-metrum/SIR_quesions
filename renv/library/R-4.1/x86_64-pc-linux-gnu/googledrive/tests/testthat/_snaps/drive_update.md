# drive_update() errors if local media does not exist

    Code
      drive_update(dribble(), "nope123")
    Error <rlang_error>
      No file exists at the local `media` path:
      x 'nope123'

# drive_update() informatively errors if the path does not exist

    Code
      drive_update(nm_("does-not-exist"), system.file("DESCRIPTION"))
    Error <rlang_error>
      `file` does not identify at least one Drive file.

# drive_update() informatively errors if the path is not unique

    Code
      drive_update(nm_("not-unique"), system.file("DESCRIPTION"))
    Error <rlang_error>
      `file` identifies more than one Drive file.

# no op if no media, no metadata

    Code
      out <- drive_update(nm_("update-fodder"))
    Message <cliMessage>
      ! No updates specified.

