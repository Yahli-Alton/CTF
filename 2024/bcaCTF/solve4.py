import PyPDF2

# Path to the uploaded PDF file
file_path = "Skibidi.pdf"

# Function to extract text from PDF
def extract_text_from_pdf(file_path):
    pdf_text = ""
    with open(file_path, "rb") as file:
        reader = PyPDF2.PdfReader(file)
        number_of_pages = len(reader.pages)
        for page in range(number_of_pages):
            pdf_text += reader.pages[page].extract_text()
    return pdf_text

# Extract text from the provided PDF
pdf_text = extract_text_from_pdf(file_path)
pdf_text[:2000]  # Display the first 2000 characters for a quick review
for line in pdf_text.split("\n"):
    print(line)
    if "bcactf" in line.lower():
        print(line)