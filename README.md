# LOG_ANALYZER

This repository contains an advanced SAS script by Karol Przanowski, dedicated to parsing and analyzing SAS Viya log files. This Log Analyzer is an invaluable tool for SAS developers, system administrators, and data analysts who seek to optimize SAS Viya applications by gaining deeper insights into their execution performance. It automates the tedious task of combing through extensive log files, extracting key performance metrics such as execution time, CPU usage, system time, memory, and OS memory allocation.


Log_analyzer_initial_version is a script designed as a log analyzer tool. Its primary purpose is to parse and analyze log files generated during SAS Viya code executions to extract and report on various metrics such as real time, CPU time, system time, memory usage, and OS memory consumption. It focuses on understanding the performance and efficiency of SAS Viya code executions within specified processes or macro calls.

Here's a breakdown of its key functionalities:

**Initialization:** It starts by defining file paths and log file names using SAS macro variables (%let statements) to specify the location of the logs to be analyzed.

**Data Step for Log Parsing:** The data step reads through the specified log file line by line, extracting relevant information based on certain keywords found in the logs. This includes:

Identifying and extracting code snippets associated with MPRINT and MLOGIC statements.
Capturing execution times, CPU times, system times, memory, and OS memory usage from NOTE: lines that indicate total process time.
Tracking the nesting level of macro executions and loop iterations within the log file to understand the structure of the executed SAS code.
Data Transformation and Aggregation:

Using a proc sql step to determine the maximum nesting level of macros or loops encountered in the log, which aids in structuring the final report.
Preparing a secondary dataset (Data_log2) that structures the parsed log data into a format suitable for reporting, including aggregating code snippets and performance metrics under their respective macro names and nesting levels.

**Reporting:**
The script utilizes ODS (Output Delivery System) HTML output to generate a detailed report of the log analysis. This report includes tables created by proc tabulate that summarize performance metrics (like real time, CPU time, etc.) across different levels of macro execution and code snippets, providing insights into the efficiency and resource usage of the SAS Viya processes.
The report is saved as an HTML file, making it easily accessible for review.


In summary, this SAS script automates the detailed analysis of SAS Viya log files, focusing on performance metrics and the hierarchical structure of SAS code execution. It enables users to quickly identify potential bottlenecks or areas for optimization within their SAS Viya code by providing a structured and summarized view of log data.


New contribution to the file.
