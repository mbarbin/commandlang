In this test we monitor the global help page that is generated at the root of
the executable for each backend.

  $ ./main_base.exe --help
  Cram Test Command
  
    main_base.exe SUBCOMMAND
  
  === subcommands ===
  
    named                      . named arguments
    return                     . return
    version                    . print version information
    help                       . explain a given subcommand (perhaps recursively)
  

  $ ./main_climate.exe --help
  Usage: ./main_climate.exe [OPTIONS]
         ./main_climate.exe [SUBCOMMAND]
  
  Cram Test Command
  
  Options:
   --help, -h   Print help
  
  Subcommands:
   return  return
   named  named arguments

  $ ./main_cmdliner.exe --help=plain
  NAME
         ./main_cmdliner.exe - Cram Test Command
  
  SYNOPSIS
         ./main_cmdliner.exe COMMAND …
  
  COMMANDS
         named COMMAND …
             named arguments
  
         return [OPTION]…
             return
  
  COMMON OPTIONS
         --help[=FMT] (default=auto)
             Show this help in format FMT. The value FMT must be one of auto,
             pager, groff or plain. With auto, the format is pager or plain
             whenever the TERM env var is dumb or undefined.
  
         --version
             Show version information.
  
  EXIT STATUS
         ./main_cmdliner.exe exits with:
  
         0   on success.
  
         123 on indiscriminate errors reported on standard error.
  
         124 on command line parsing errors.
  
         125 on unexpected internal errors (bugs).
  
