import re



addr_nozero_pat = r"(?:b$)|(b\.)|(bl$)|(bc\.)"

__addr_nozero_cpat = re.compile(addr_nozero_pat)

re_addr_nozero =re.match(__addr_nozero_cpat,"br")
print(re_addr_nozero)