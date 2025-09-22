---
tags:
  - 4te_Klasse
  - itsi
  - crytography
---
1) d = e bdz bleibt aus e berechenbar
	1) symetrische verschlüsselung (auch private key anlegen) (sicherer schlüsselaustsuch erfolderich, sehr effizeint implenentierbar)
2) blockcihper 
	1) klartext wird in blöcke gleicher länge geteilt und verschlüsselt 
		1) zb DES (data encrpyin stnadrd, 3DES) ← unsicher
		2) AES (Advanced encryption standert, 200, 256bit key)
3) streamchipher
	1) plaintext wird zu chipertext verschlüsselt durch schlüssel; klartext XOR schlüssel = chipertextbit
	2) echtzeitübertragung
		1) zb A5, A5/3, A5/4 → mobilfunk
4) asymetrisch
	1) d != e bzw d nicht aus e berechenbar
		1) asymetrisch
		2) auch public key encrption (zb rsa)
		3) schlechete performace weil große pi zahlen zb