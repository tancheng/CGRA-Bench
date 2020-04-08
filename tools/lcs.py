# Python 3 program to find the stem  
# of given list of words 
  
# function to find the stem (longest  
# common substring) from the string array 
def findstem(arr): 
  
    # Determine size of the array 
    n = len(arr) 
  
    # Take first word from array  
    # as reference 
    s = arr[0] 
    l = len(s) 
  
    res = "" 
  
    for i in range( l) : 
        for j in range( i + 1, l + 1) : 
  
            # generating all possible substrings 
            # of our reference string arr[0] i.e s 
            stem = s[i:j] 
            k = 1
            for k in range(1, n):  
  
                # Check if the generated stem is 
                # common to all words 
                if stem not in arr[k]: 
                    break
              
            # If current substring is present in 
            # all strings and its length is greater  
            # than current result 
            if (k + 1 == n and len(res) < len(stem)): 
                res = stem 
  
    return res 
  
# Driver Code 
if __name__ == "__main__": 
      
    # p: phi, a: add, c: cmp, b: branch, f: shift, o: load, l: logic, s: select

    fir0     = "pacb"
    fir1     = "pab"
    fft      = "pacb"
    latnrm0  = "pacb"
    latnrm1  = "pmab"
    adpcm0   = "pacscsb"
    adpcm1   = "pacssb"
    bf0      = "pfllaoalallb"
    bf1      = "pfllaolallb"
    bf2      = "plaoalallb"
    bf3      = "pllaoallb"
    susan    = "paxaalxmmab"

    arr = [ fir0, fir1,
            fft,
            latnrm0,
            latnrm1,
            adpcm0, adpcm1,
            bf0, bf1, bf2, bf3,
            susan ]

    stems = findstem(arr) 
    print(stems) 
  
# This code is contributed by ita_c 
