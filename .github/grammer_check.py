from language_tool_python import LanguageTool

def grammar_check(text):
    # Create an instance of the LanguageTool class
    tool = LanguageTool('en-US')

    # Perform the grammar check using the check() method
    matches = tool.check(text)

    # Return the matches
    return matches

def main():
    # Define the text to check
    text_to_check = "I is a developer."

    # Perform grammar check
    matches = grammar_check(text_to_check)

    # Process the matches as per your requirements
    if len(matches) > 0:
        print("Grammar errors found:")
        for match in matches:
            print(f"Suggested correction: {match.replacements}")
            print(f"Context: {match.context}")
            print(f"Message: {match.message}")
            print("---")
    else:
        print("No grammar errors found.")

if __name__ == "__main__":
    main()












# import requests

# # Read the text from checking.txt file
# with open('.github/checking.txt', 'r') as file:
#     text_to_check = file.read()

# # Define the LanguageTool API URL and language (e.g., en-US for English)
# api_url = "https://languagetool.org/api/v2/check"
# language = "en-US"

# # Define the payload for the API request
# payload = {
#     "text": text_to_check,
#     "language": language,
# }

# # Send a POST request to the LanguageTool API
# response = requests.post(api_url, data=payload)

# # Check for grammar errors in the response
# response_data = response.json()

# if 'matches' in response_data:
#     matches = response_data['matches']
#     if matches:
#         for match in matches:
#             print(f"Grammar error at line {match['offset']} - {match['message']}")
# else:
#     print("No grammar errors found.")

# # Exit with a status code indicating success (0) or failure (non-zero)
# if 'matches' in response_data and matches:
#     exit(1)
# else:
#     exit(0)
