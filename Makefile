
all: clean validate formats

clean:
	rm -rf formats

validate:
	hackmyresume VALIDATE resume.json

formats:
	hackmyresume BUILD resume.json TO formats/resume.all -t modern --pdf wkhtmltopdf
