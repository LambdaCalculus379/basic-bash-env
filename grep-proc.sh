#!/bin/bash

PROC='env'
STRING='PATH'

# Return TEXT_GREPPED: filtered on STRING
grepProcOnString() { TEXT_GREPPED=$( $PROC | grep $STRING ) return $TEXT_GREPPED ; }
# echo -e "Text grepped: $TEXT_GREPPED " ;

# Return INT: LINE_COUNT_STRING_FILTER, count of filtered lines fron proc. 
grepProcOnStringCount() { LINE_COUNT_STRING_FILTER=$( $PROC | grep $STRING | wc -l ); return $LINE_COUNT_STRING_FILTER ; }
# echo -e "Number of strings: $LINE_COUNT_STRING_FILTER " ;

# Returns INT: LINE_COUNT_NO_FILTER, Count of total lines from proc.
procLineCount() { LINE_COUNT_NO_FILTER=$( $PROC | wc -l ); return $LINE_COUNT_NO_FILTER ; }
# echo -e "Line count: $LINE_COUNT_NO_FILTER " ;

FIRST=$( procLineCount env ) 

SECOND=$( grepProcOnStringCount env PATH )

THIRD=$( grepProcOnString env PATH )

echo "First: "$FIRST ;

echo "Second: "$SECOND ;

echo "Third: "$THIRD ;




