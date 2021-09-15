content = input("Type a simple world or phrase: ")
content_cyphered = ""
for letter in content:
    if letter in "aeiou":
        content_cyphered += '*'
    else:
        content_cyphered += letter

print("Cyphered content - %s" %content_cyphered)