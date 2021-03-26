import glob
import os.path

print('Making make...')

cco = '\tg++ -std=c++17 -O0 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" {} -o {}\n'
ccl = '\tg++ -std=c++17 -O0 -pthread -MMD -Wall -L"lib" {} -lGLEW -lGL -lGLU -lglfw -lopenal -o {}\n'

def getCCO(source, objPath):
    return cco.format(source, objPath)

def getCCL(objs, binout):
    return ccl.format(objs, binout)

def getObjectPath(sourceFile: str):
    return 'obj/' + os.path.basename(sourceFile).replace('cpp', 'o')

def getDepPath(sourceFile: str):
    return 'obj/' + os.path.basename(sourceFile).replace('cpp', 'd')


lines = []




sources = glob.glob('src/**/*.cpp', recursive=True)

objs = []

for s in sources:
    objectPath = getObjectPath(s)
    objs.append(objectPath)
    depPath = getDepPath(s)
    if os.path.exists(depPath):
        with open(depPath, 'r') as fin:
            crap = fin.read()
            lines.append('{}\n'.format(crap))
    else:
        lines.append('{}: {}\n'.format(objectPath, s))
    lines.append(getCCO(s, objectPath))

objs = ' '.join(objs)


binary = 'bin/ExecuteMe'
lines.append('{}: {}\n'.format(binary, objs))
lines.append(getCCL(objs, binary))

all_line = 'all: {}\n'.format(binary)

with open('Makefile', 'w') as fout:
    fout.write(all_line)
    fout.writelines(lines)


print('Make made.')
