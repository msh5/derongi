import cligen
from os import quoteShellCommand
from osproc import execCmdEx

proc derongi(debug = false, args: seq[string]): int =
  result = 1

  var outputs: array[2, TaintedString]

  for i, arg in args:
    echo "fetch from github.com/gitignore/gitignore/", arg, ".gitignore"
    let cmd = quoteShellCommand(["gibo", "dump", arg])

    let (output, exitCode) = execCmdEx(cmd)
    if exitCode != 0:
      echo "failed to run gibo: cmd=\"", cmd, "\", exitCode=", exitCode
      return

    outputs[i] = output

  echo "Blending ..."

  let f = open(".gitignore", fmWrite)
  defer: close(f)

  for output in outputs:
    f.write(output)

  echo "Generated .gitignore !"

  result = 0

when isMainModule:
  dispatch(derongi)
