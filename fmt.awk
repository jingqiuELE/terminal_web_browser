#!/usr/bin/gawk -f
/./ { for (i = 1; i <= NF; i++) addword($i) } #nonblank line
/^$/ { printline(); print "" }                #blank line
END { printline()  }

function addword(w) {
    if (length(line) + 1 + length(w) > 80)
        printline()
    if (length(line) == 0)
        line = w
    else
        line = line " " w
}

function printline() {
    if (length(line) > 0) {
        print line
        line = ""
    }
}
