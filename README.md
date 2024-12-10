# COBOL Infinite Loop Bug
This repository demonstrates a common error in COBOL programs: an infinite loop caused by improper termination of a PERFORM statement.  The program increments a counter but lacks a condition to break out of the loop, resulting in continuous execution.

## Bug Description
The COBOL program enters an infinite loop in the `100-PROCESS-DATA` section. While it modifies a flag based on the counter's value, it never stops the `PERFORM` statement, causing it to run indefinitely.

## Solution
The solution involves adding a conditional statement to exit the loop when the desired condition is met. This provides a clean exit from the `PERFORM` and terminates the loop.
