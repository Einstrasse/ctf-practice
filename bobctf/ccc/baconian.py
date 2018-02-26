cipher_text = "AAAABAAAAAAAABAABBBAABBABABAAAAAAAAABBAB AAABAABAAAABBBBAABBBAABAABAAAB ABAAABAABA AAAAA ABBAAAABAABAABBAABBBABBBAAAABB ABBBAAABAB BAABABAABBAABAAAABBAAAAAAABBABABBBAAABBABAAABAAAAAABBBBAABBBBBAAA"

def decode_char(cipher):
	bin_str = cipher.replace("A", "0").replace("B", "1")
	offset = int(bin_str, 2)
	return chr(ord('a') + offset)

length = len(cipher_text)

output =""
chunks = cipher_text.split(' ')

for chunk in chunks:
	i = 0
	while i < len(chunk):
		# print chunk[i:i+5]
		output += decode_char(chunk[i:i+5])
		i += 5
	output += " "
print output
	