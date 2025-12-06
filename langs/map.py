person = {"name": "John", "age": 23}

# access
print(person["name"], person.get("age"))

# add / modify
person["name"] = "Jane"


# loop through
for key, value in person.items():
    print(f"key = {key}, value ={value}")
