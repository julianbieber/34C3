from stegano import lsb

def to_n_letters(word, n):
    while len(word) < n:
        word = '0' + word
    return word


def chunks(l, n):
    """Yield successive n-sized chunks from l."""
    for i in range(0, len(l), n):
        yield l[i:i + n]


if __name__ == '__main__':
    clear_message = lsb.reveal("spi.ogg")