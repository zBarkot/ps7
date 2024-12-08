# PS7: Kronos Log Parsing

## Contact
Name: Barkot Zeyohannes
Section: 202
Time to Complete: 3 hours


## Description
This project reads in Kronos Device logs and stores each log in a vector of strings stores inside of a Kronos class. Then using a regex identfies start and end boots, while searching for starts without matching ends irrogenous logs.

### Features
The log parser processes log files to identify and match boot start and end events using regex patterns. It extracts timestamps in the and calculates boot durations. Unmatched start or end events are flagged as failures, while matched events are logged with detailed information, including line numbers, timestamps, and durations. Results are written to an output file with a rpt extension, and robust error handling ensures reliable file processing.
### Approach
The log parser reads a log file to find when a server starts and finishes booting. It uses patterns to match lines that show the start and end of a boot and extracts the timestamps. A stack is used to keep track of unmatched start events until they find an end. The program calculates how long each successful boot takes and writes this information to an output file. If a start or end event is unmatched, it is marked as a failure. This ensures clear and easy-to-read results for both successful and incomplete boot sequences.

### Regex
The log parser uses three main regex patterns to process the log file. The bootStartPattern matches lines indicating the start of the server boot, while the bootEndPattern identifies lines marking the completion of the boot process. The timestampPattern extracts timestamps in the YYYY-MM-DD HH:MM:SS format from the log entries. These patterns help the parser track boot sequences, calculate durations, and ensure that unmatched events are flagged appropriately.
### Issues
The log parser has a few issues, including handling unmatched boot sequences, incorrect timestamp parsing, and potential performance problems with large log files due to storing all entries in memory. It may also struggle with timestamps of higher precision and inefficient regex usage in large files. Additionally, while it handles basic file access errors, it doesn't catch other runtime exceptions that could cause crashes or incorrect results. Also, I had tried an Object-Oriented Approach which proved to be more complex and led to multiple segmentation faults.

### Extra Credit
Anything special you did.  This is required to earn bonus points.

## Acknowledgements
List all sources of help including the instructor or TAs, classmates, and web pages.

Youtube
chat gpt
