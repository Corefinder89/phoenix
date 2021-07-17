def test_value():
    with open("../test/val.txt", "r") as fileobj:
        readtext = fileobj.read()
        actual_text = readtext.strip()
        get_digit = ''.join(char for char in actual_text if char.isdigit())
        expected_text = actual_text.replace(get_digit, str(int(get_digit)))
        assert actual_text, expected_text
        print("Test completed")

test_value()