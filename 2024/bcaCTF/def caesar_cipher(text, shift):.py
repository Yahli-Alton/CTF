def map_characters(input_str, output_str):
    char_map = {}  # Dictionary to store character mappings
    for i in range(len(input_str)):
        input_char = input_str[i]
        output_char = output_str[i]
        if input_char in char_map:
            if char_map[input_char] != output_char:
                return None  # Inconsistent mapping, return None
        else:
            char_map[input_char] = output_char
    return char_map

def apply_mapping(input_str, char_map):
    output_str = ""
    for char in input_str:
        if char in char_map:
            output_str += char_map[char]
        else:
            output_str += char  # Keep non-mapped characters unchanged
    return output_str

input_str = "hsggna0stiaeaetteyc4ehvdatyporwtyseefregrstaf_etposruouoy"
desired_output = "bcatcf"

# Attempt to map characters based on their positions
mapping = map_characters(input_str, desired_output)

if mapping:
    result = apply_mapping(input_str, mapping)
    print("Mapping found:")
    print(f"Input: {input_str}")
    print(f"Output: {result}")
    print(f"Mapping: {mapping}")
else:
    print("Mapping not found.")
