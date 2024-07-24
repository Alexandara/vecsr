def count_words(sentence):
	# Split sentence into words and count them
	words = sentence.split()
	return len(words)

def find_long_sentences(filename):
	try:
		with open(filename, 'r') as file:
			text = file.read()
			sentences = text.split('.')
			i = 1
			for sentence in sentences:
				num_words = count_words(sentence)
				if num_words > 25:
					words = sentence.split()
					first_three_words = ' '.join(words[:3])
					print(str(i) + ") " + first_three_words + " " + str(len(sentence.split())))
					i += 1
	except FileNotFoundError:
		print(f"Error: The file '{filename}' was not found.")

# Example usage:
filename = 'sample_text.txt'  # Replace with your file name
find_long_sentences(filename)