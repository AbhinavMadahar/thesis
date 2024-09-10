#!/usr/bin/env python3

"""
NAME
    current-word-count-of-outline.py

DESCRIPTION
    Count the number of words in the outline.
    Note that this is the number of words predicted by the outline, not the literal number of words in the outline file.

ARGUMENTS
    -o, --outline-file
        the filepath of the outline file.

EXIT STATUS
    0: Everything went well,
    1: Supplied file not found,
    2: Supplied file is not a file,
    3: Supplied file is a file, but no word predictions were found.
"""

import argparse
import enum
import re
import sys


class ExitStatus(enum.IntEnum):
    OK = enum.auto()
    FILE_NOT_FOUND = enum.auto()
    NOT_A_FILE = enum.auto()
    NO_WORD_PREDICTIONS = enum.auto()


def main(outline_filename: str) -> ExitStatus:
    try:
        try:
            with open(outline_filename, "r") as output_file:
                total_word_count = 0
                for line in (line.strip() for line in output_file):
                    match = re.search(r'([0-9]+ words)', line)
                    if match:
                        total_word_count += int(match.group(1).split(' ')[0])
                print(total_word_count, 'words')
        except IsADirectoryError:
            print(f"Supplied file is a directory, not a file: {outline_filename}")
            return ExitStatus.NOT_A_FILE
    except FileNotFoundError:
        print(f"File not found: {outline_filename}")
        return ExitStatus.FILE_NOT_FOUND

    return ExitStatus.OK


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Count the number of words in the outline.")
    parser.add_argument("-o", "--outline-file", type=str, help="the filepath of the outline file.")
    args = parser.parse_args()

    sys.exit(main(args.outline_file))
