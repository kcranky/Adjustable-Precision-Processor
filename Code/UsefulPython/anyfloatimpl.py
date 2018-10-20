from anyfloat import anyfloat
from packUnpack import get_dec_value
#
from parameterDefinitions import Word40, Word32, Word24, Word20, Word16, Word8

sizes = {
   #"8": (3,4),
   #"16": (5,10),
   #"20": (6,13),
   "24": (7,16),
   #"32": (8,23),   
   #"40":(8,31)
}

stru = {
   "8": Word8,
   "16": Word16,
   "20": Word20,
   "24": Word24,
   "32": Word32,   
   "40": Word40
}

nums = (12.35, -5.25, 589, 0.8, 0, 8950, 82, -0.09, 1e400*0, 0.1, 1e400)

for x, y in sizes.items():
    print(y)
    temp = "\nWorking with word size of {} bits".format(x)
    print(temp)
    print("="*len(temp))
    
    strus = stru[str(x)]
    
    for n in nums:
        af = anyfloat.from_float(n)
        t = af.bin(size = y)
        #h = (int(t.replace(" ", ""),x))
        h = format(int(t.replace(" ", ""),2), 'x')
        p = get_dec_value(t.replace(" ", ""), strus)
        print("{} {} {}".format(h, t, n))
        