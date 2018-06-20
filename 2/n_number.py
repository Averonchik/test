import itertools


def counter(n):
    num, result = str(n), []
    for n in range(1, len(num)+1):
        a = itertools.permutations(num, n)
        for i in a:
            b = ''
            for c in i:
                b += c
            result.append(int(b))
    return result
