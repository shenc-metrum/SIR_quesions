# drive_cp() can copy file in place

    Code
      write_utf8(drive_cp_message)
    Output
      Original file:
      * 'i-am-a-file-TEST-drive_cp' <id: {FILE_ID}>
      Copied to file:
      * '{cp_name}' <id: {FILE_ID}>

# drive_cp() can copy a file into a different folder

    Code
      write_utf8(drive_cp_message)
    Output
      Original file:
      * 'i-am-a-file-TEST-drive_cp' <id: {FILE_ID}>
      Copied to file:
      * 'i-am-a-folder-TEST-drive_cp/{cp_name}' <id: {FILE_ID}>

# drive_cp() doesn't tolerate ambiguity in `path`

    Code
      drive_cp(file, nm_("i-am-a-folder"))
    Error <rlang_error>
      Unclear if `path` specifies parent folder or full path to the new file,
      including its name.
      See `?as_dribble()` for advice on how to make this clear.

# drive_cp() errors if asked to copy a folder

    Code
      drive_cp(nm_("i-am-a-folder"))
    Error <rlang_error>
      The Drive API does not copy folders or shared drives.

# drive_cp() takes name, assumes path is folder if both are specified

    Code
      write_utf8(drive_cp_message)
    Output
      Original file:
      * 'i-am-a-file-TEST-drive_cp' <id: {FILE_ID}>
      Copied to file:
      * 'i-am-a-folder-TEST-drive_cp/{cp_name}' <id: {FILE_ID}>

---

    Code
      file_cp <- drive_cp(nm_("i-am-a-file"), path = nm_("file-name"), name = nm_(
        "file-name"))
    Error <rlang_error>
      Parent specified via `path` is invalid:
      x Does not exist.

---

    Code
      file_cp <- drive_cp(nm_("i-am-a-file"), append_slash(nm_("not-unique-folder")))
    Error <rlang_error>
      Parent specified via `path` is invalid:
      x Doesn't uniquely identify exactly one folder or shared drive.

