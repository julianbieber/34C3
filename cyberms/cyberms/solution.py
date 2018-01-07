import netcat
import base64


class Client():
    def __init__(self):
        self.client = netcat.Netcat('35.197.255.108', 1338)
        self.client.read_until('>')

    def decrypt(self, text):
        self.client.write('2\n')
        self.client.write(text + '\n')
        result_message = self.client.read_until('>')
        result_message = result_message.replace(' Please input the recipient: Please input the message: Here is your cyberized message: ', '')
        result_message = result_message.replace(' Please input your ciphertext (base64): ', '')
        return result_message.split('\n')[0]

    def decryption_valid(self, text):
        return not  'error' in self.decrypt(text)

    def encrypt(self, text):
        self.client.write('1\n\n\n{}\n'.format(text))
        result_message = self.client.read_until('>')
        result_message = result_message.replace(' Please input the recipient: Please input the message: Here is your cyberized message: ', '')
        return result_message.split('\n')[0]

    def encryption_as_bytes(self, text):
        encrypted = self.encrypt(text)
        return base64.b64decode(encrypted)


class Oracle():
    def __init__(self, client):
        self.client = client

    def is_valid(self, b64):
        self.client.decryption_valid(b64)


class Solver():
    def __init__(self, client):
        self.client = client

    def solve(self, encrypted_text):
        encrypted_text_bytes = len(base64.b64encode(encrypted_text)) - 16
        padding_size = encrypted_text_bytes % 16
        print(padding_size)



if __name__ == '__main__':
    solver = Solver(Client())
    solver.solve('CVWMogDHUQ/MaYA9RtMsSIrRTRBkwT3FhxNh+3LkTr9e3Qw3yPJsTLXQsoqdxmf4VtK6J9DIYSKITP867vmPVVL9Qi/bcZZhRUORtppD97AxnRqwjvidFEzV+iKrUkd5XsmciUP3j9a4kWWLIhXiZN1Ekx/6ChpJoXDOSmvH5czC+cBEhCCLlG7c1bIQOa+e')