#!/usr/bin/env bash
# Pages 15-16
# Listing 1-3: The validalnum script
# validAlphaNum--Ensures that input consists only of alphabetical and numeric
# characters.

validAlphaNum()
{
    # Validate arg: returns 0 if all upper+lower+digits; 1 otherwise

    # Remove all unacceptable chars
    validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

    if [ "$validchars" = "$1" ] ; then
        return 0
    else
        return 1
    fi
}

# Begin main script--Delete or comment out everything below this line if you
# want to include this in other scripts.
# ============
/bin/echo -n "Enter input: "
read input

# Input validation
if ! validAlphaNum "$input" ; then
    echo "Please enter only letters and numbers." >&2
    exit
else
    echo "Input is valid."
fi

exit 0