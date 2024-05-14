from string import printable

print(set(printable) - set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ~`![]{},<>/123456789"))
