import http.server
import socketserver
import threading
import random
import base64
import subprocess
from http.server import BaseHTTPRequestHandler
from urllib.parse import parse_qs

# Globale Variablen für dynamische Ports
random_port1 = random.randint(4000, 5600)
random_port2 = random.randint(10000, 12000)
random_port3 = random.randint(50000, 60000)

word_map = {
    "Hinweis1:": {
        "kyrillisch": "Хинвайс1:",  # Phonetisch korrekt transliteriert
        "mandarin": "提示1:",  # Alternative Zeichen für „Hinweis“ in Mandarin
        "koreanisch": "힌트1:",  # Koreanische Transliteration von „Hint“
        "griechisch": "Χινϝεισ1:",  # Griechische Transliteration
        "thai": "ฮนไวส1:"  # Phonetische Umsetzung ins Thailändische
    },
    "Der": {
        "kyrillisch": "Дер",  # Direkte Transliteration
        "mandarin": "德",  # Mandarin-Zeichen für „Der“
        "koreanisch": "더",  # Phonetische Umsetzung
        "griechisch": "Δερ",  # Direkte Transliteration
        "thai": "เดอร"  # Phonetische Umsetzung
    },
    "Nutzername": {
        "kyrillisch": "Нутцернаме",  # Phonetische Transliteration
        "mandarin": "用户名",  # Standardzeichen für „Nutzername“
        "koreanisch": "눗쩔나메",  # Phonetische Transliteration
        "griechisch": "Νουτσέρναμε",  # Phonetische Transliteration
        "thai": "นตเซอรเนม"  # Phonetische Transliteration
    },
    "lautet": {
        "kyrillisch": "лаутет",  # Phonetisch korrekt
        "mandarin": "是",  # Mandarin-Zeichen für „lautet“
        "koreanisch": "라우텟",  # Phonetische Transliteration
        "griechisch": "λαυτέτ",  # Phonetische Transliteration
        "thai": "เลาเทต"  # Phonetische Transliteration
    },
    "user": {
        "kyrillisch": "юзер",  # Phonetisch korrekt für „user“
        "koreanisch": "유저",  # Phonetische Transliteration
        "griechisch": "υσερ",  # Phonetische Transliteration
        "thai": "ยเซอร"  # Phonetische Transliteration
    }
}


# Funktion zur Generierung des zufälligen Satzes
def generate_hint():
    sentence = "Hinweis1: Der Nutzername lautet user"
    words = sentence.split()
    randomized_sentence = " ".join(
        random.choice(list(word_map[word].values())
                      ) if word in word_map else word
        for word in words
    )
    return randomized_sentence

# Handler für den Hauptserver (Port 80)


class MainHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()
        self.wfile.write(
            b"Willkommen bei der HTL22-Mini-CTF! Um weiter zu kommen musst du genauer Scannen!")


# Handler für den russischen Text (Port 5000)
class RussianHandler(BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()
        self.wfile.write(generate_hint().encode("utf-8"))

# Handler für den Base64-Text (zufälliger Port)


class Base64Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()
        message = "Hinweis 2: pobiere den port " + str(random_port3)
        encoded_message = base64.b64encode(
            message.encode("utf-8")).decode("utf-8")
        self.wfile.write(encoded_message.encode("utf-8"))

# Handler für die Webshell mit Basis-Authentifizierung (Port 54321)


class AuthHandler(BaseHTTPRequestHandler):
    def do_HEAD(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()

    def do_AUTHHEAD(self):
        self.send_response(401)
        self.send_header("WWW-Authenticate", 'Basic realm="Mini Webshell"')
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()

    def do_GET(self):
        auth_header = self.headers.get("Authorization")
        if auth_header is None:
            self.do_AUTHHEAD()
            self.wfile.write(b"Authorization required")
        elif auth_header == "Basic dXNlcjpwYXNz":  # "user:pass" in Base64
            self.send_response(200)
            self.send_header("Content-type", "text/html; charset=utf-8")
            self.end_headers()
            self.wfile.write(b"<html><body>\n")
            self.wfile.write(b"<h1>FLAG{use_secure_credentials}</h1>\n")
            self.wfile.write(
                b"<h1>mit der Webshell findest du vielleicht die weiteren Flags</h1>\n")
            self.wfile.write(b"<h2>Webshell</h2>\n")
            self.wfile.write(b"<form method='POST'>\n")
            self.wfile.write(b"Command: <input name='cmd'><br>\n")
            self.wfile.write(b"<input type='submit'>\n")
            self.wfile.write(b"</form>\n")
            self.wfile.write(b"</body></html>\n")
        else:
            self.do_AUTHHEAD()
            self.wfile.write(b"Invalid credentials")

    def do_POST(self):
        content_length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(content_length)
        fields = parse_qs(post_data.decode('utf-8'))
        command = fields.get('cmd', [None])[0]

        self.send_response(200)
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()

        self.wfile.write(b"<html><body>\n")
        self.wfile.write(b"<h2>Webshell</h2>\n")
        self.wfile.write(b"<form method='POST'>\n")
        self.wfile.write(b"Command: <input name='cmd'><br>\n")
        self.wfile.write(b"<input type='submit'>\n")
        self.wfile.write(b"</form>\n")
        if command:
            try:
                output = subprocess.check_output(
                    command, shell=True, stderr=subprocess.STDOUT, text=True)
                self.wfile.write(
                    b"<pre>" + output.encode("utf-8") + b"</pre>\n")
            except subprocess.CalledProcessError as e:
                self.wfile.write(b"<pre>Error: " +
                                 e.output.encode("utf-8") + b"</pre>\n")
        self.wfile.write(b"</body></html>\n")

# Funktion, die einen Server-Thread erstellt


def run_server(port, handler):
    httpd = socketserver.TCPServer(("", port), handler)
    thread = threading.Thread(target=httpd.serve_forever, daemon=True)
    thread.start()
    print(f"Server running on port {port}")


# Server starten
if __name__ == "__main__":
    run_server(1080, MainHandler)
    run_server(random_port1, RussianHandler)
    run_server(random_port2, Base64Handler)
    run_server(random_port3, AuthHandler)

    print("All servers are running. Press Ctrl+C to stop.")
    try:
        while True:
            pass
    except KeyboardInterrupt:
        print("Stopping servers...")

# FLAG{always_check_comments_in_scripts}
