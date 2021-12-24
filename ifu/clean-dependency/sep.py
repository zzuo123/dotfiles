out = []
with open("./in.txt") as input:
    lines = input.readlines()
    lines = [line.strip().split() for line in lines]
    for line in lines:
        for l in line:
            out.append(l)

with open("./out.txt", "w") as output:
    for line in out:
        output.write(line + "\n")

print("done")
