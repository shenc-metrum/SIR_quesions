# drive_mv() can rename file

    Code
      write_utf8(drive_mv_message)
    Output
      Original file:
      * '{name_1}' <id: {FILE_ID}>
      Has been renamed:
      * '{name_2}' <id: {FILE_ID}>

# drive_mv() can move a file into a folder given as path

    Code
      write_utf8(drive_mv_message)
    Output
      Original file:
      * '{mv_name}' <id: {FILE_ID}>
      Has been moved:
      * 'move-files-into-me-TEST-drive_mv/{mv_name}' <id: {FILE_ID}>

# drive_mv() can move a file into a folder given as dribble

    Code
      write_utf8(drive_mv_message)
    Output
      Original file:
      * '{mv_name}' <id: {FILE_ID}>
      Has been moved:
      * 'move-files-into-me-TEST-drive_mv/{mv_name}' <id: {FILE_ID}>

# drive_mv() can rename and move, using `path` and `name`

    Code
      write_utf8(drive_mv_message)
    Output
      Original file:
      * '{name_1}' <id: {FILE_ID}>
      Has been renamed and moved:
      * 'move-files-into-me-TEST-drive_mv/{name_2}' <id: {FILE_ID}>

# drive_mv() can rename and move, using `path` only

    Code
      write_utf8(drive_mv_message)
    Output
      Original file:
      * '{name_1}' <id: {FILE_ID}>
      Has been renamed and moved:
      * 'move-files-into-me-TEST-drive_mv/{name_2}' <id: {FILE_ID}>

