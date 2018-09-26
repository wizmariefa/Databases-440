import sys

def main(filename, lines):
    with open(filename) as f:
        for i in range(lines):
            print(f.readline())

if __name__ == '__main__':
    main(sys.argv[2], int(sys.argv[1]))