with open("nmapres", mode='r', encoding='utf-8') as myfile:
	a = [i for i in myfile.read().split()]

i = 0
while i < len(a):
	if i + 1 < len(a) and "." in a[i]:
		curip = a[i]
		i += 1
	elif i + 1 < len(a) and "." in a[i + 1] and not "." in a[i]:
		print(curip + " " + a[i])
		i += 1
	else:
		print(curip + " " + a[i])
		i += 1


