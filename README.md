# Unhandled Exception During JSON Decoding in Dart

This repository demonstrates a common error in Dart: neglecting to handle exceptions that might occur during JSON decoding or network requests.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version with comprehensive error handling.

## Problem

The original code lacks robust error handling. If the API request fails or the JSON response is malformed, the app will crash without providing informative error messages.

## Solution

The solution incorporates a `try-catch` block to handle potential exceptions. It also checks the HTTP status code to detect failed requests and provides informative error messages to the user or logs for debugging. This approach prevents crashes and makes debugging significantly easier.