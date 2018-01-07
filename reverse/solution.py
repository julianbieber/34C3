from string import printable
from pprint import pprint
import sys

l = [160, 155, 208, 160, 190, 215, 237, 134, 210, 126, 212, 222, 224, 238, 128, 240, 164, 213, 183, 192, 178, 163, 162][::-1]
reverse_l = l[::-1]

flag = list(map(lambda x: [], l))


def add_xor(a, b):
    return ord(a) + (ord(b)^21)


def check_char(flag_char, reverse_flag_char, l_ord, reverse_l_ord):
    return add_xor(flag_char, reverse_flag_char) == l_ord and add_xor(reverse_flag_char, flag_char) == reverse_l_ord


def main():
    for i, (l_ord, reverse_l_ord) in list(enumerate(zip(l, reverse_l)))[:int(len(l)/2):]:
        for a in printable:
            for b in printable:
                if check_char(a, b, l_ord, reverse_l_ord):
                    flag[i].append(a)
                    flag[len(flag) - i -1].append(b)
    pprint(flag)

if __name__ == '__main__':
    main()