Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B65F76817C
	for <lists+cake@lfdr.de>; Sat, 29 Jul 2023 21:40:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EBF003CB39;
	Sat, 29 Jul 2023 15:40:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690659616;
	bh=nZhVr6DUGyLB4GxOhOhgSBC9psu3itZF6mnyoHmvOhA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Kd2wb6OS1yGQnsowPkZJTQHsGfzcaNl3+tLdnLkfXEmPy3XmQCwVSyhvzTh5Y6awx
	 ueOposPSAADDH5Y6CM7SYp83e/dK83d1LDRwc47TsMkBZJ+8VXqHH1hVyCQs9w//M/
	 ufSR9a6Lv/WWpmoqSEUdbPtiwE7jbb0169iMLOY/JYiDKDP1XLcc+wzXpG4DW4AV9p
	 wJehdK/suu4PzbYbxZVdWQ2r2f0uUt/Z6WwwoR4DTqcpcrTR5Sb2Mzzp6aSfjF1BHw
	 OmC7OSPgRzsA3MqZqRacb6ZLkpCegquz50oe4F+HyAWzjBWSK1KrXd08gLHwqkmRmv
	 eZOvfqZ4pSO4A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0BF313B2A4
 for <cake@lists.bufferbloat.net>; Sat, 29 Jul 2023 15:40:15 -0400 (EDT)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-686be3cbea0so2772022b3a.0
 for <cake@lists.bufferbloat.net>; Sat, 29 Jul 2023 12:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690659613; x=1691264413;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mwcJryrhnTDKOvPXcs0COHf72hinSuElRl8UzAZGhO8=;
 b=NlWUx953PbX6nMLqXcqBWQmCSt6mbN2xqXq6Sc3j/tp9wt87kxYJAn4yFF2gtvCLvg
 Nol4qEfGpNu6CADslYbP9n6jPyXDoUPh+WYMdlfmxVEjbDGgrruJ9jI3Ntp3ct/MbxKp
 VOQEH4hKfHn1R+mgwYb72fnDk2D+sBMQlafiM8nhOpJsR3tekQyWOepDFaOiumreutv0
 3/xA5KBrGTjZEvYL+QbpX/U6vIDiUqdye5bUzTrh0/Y31/yDMew5CaLw4m0hFQqTsmpt
 O+kFVbUACsQwjY49jJanzY2ajcznAAeOh+B2GeyrKkhzGUAzl7+4T/nB+lWzOJUpdVWa
 MbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690659613; x=1691264413;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mwcJryrhnTDKOvPXcs0COHf72hinSuElRl8UzAZGhO8=;
 b=OlcYGylji/yBfXhdfcoVdUebSusvKB2HIkk2gSmMuk3GhHOcaDTr6WBcoTtLOGozEf
 jCE8p75hXfG+w5RAZHHMKh7pYxBObQEffqErfnWP/3G1Q9w2kIxHkSZQFOuY4LjotVAS
 g+qFVYjzHnfLa0k1jgz1AUmZfGix1rKZSrtwKeDNCcbfFTUwFWRzgWLi5RsMurcUqu8j
 jp3fzmzRn8A+/qMw1atrHs4pn7qelbq0Dz97A8/1SECCEA+dvmksbyqywZZ7Bv5r4qvt
 1O6nKr76dDAa01WK7Zn0gP0frjMbMc/WtNXPJ2W3cFVqAGoEh/eiWt+3/J7+YHVzmwPP
 mAmg==
X-Gm-Message-State: ABy/qLbpjQZKO4Zs7HAlNadOK90207zeQex5ALRLlaFYUTAZF93hQyTa
 bXY2TF4HsJJKA2QN52T86dPfcj2ECOmUirWE0uR5bb8u
X-Google-Smtp-Source: APBJJlGE790nQMu0VJuDbuae4VPlBd2N3hOqPp/Ewjm2Vb42XfrnOh7YAvj1TDzsjzZVqbp5FnirlKTvyCK+uJW/ZcA=
X-Received: by 2002:a17:90b:4a0d:b0:268:266a:1ab with SMTP id
 kk13-20020a17090b4a0d00b00268266a01abmr6612624pjb.5.1690659613386; Sat, 29
 Jul 2023 12:40:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw4X9P9UJLB5-aWds8NWXx9jkOFY3VJSR5+AG9R8teh7PA@mail.gmail.com>
In-Reply-To: <CAA93jw4X9P9UJLB5-aWds8NWXx9jkOFY3VJSR5+AG9R8teh7PA@mail.gmail.com>
Date: Sat, 29 Jul 2023 12:40:01 -0700
Message-ID: <CAA93jw7LB=h=WxNXn+=HUX7Rq=WtoanMqVx_J0p9e1=iyqHxVg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="000000000000b142130601a55de5"
Subject: [Cake] Fwd: been a while since I did a kernel patch
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--000000000000b142130601a55de5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have been meaning to make this patch use UINT_MAX and submit to the
kernel for a long time. Anyone want to give it a spin?

---------- Forwarded message ---------
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, Feb 11, 2023 at 5:59=E2=80=AFPM
Subject: been a while since I did a kernel patch
To: Toke H=C3=B8iland-J=C3=B8rgensen <toke@toke.dk>


workflow still goes into net-next? You need a signed-off-by, and a tested-b=
y?

(stupid patch attached)

--
This song goes out to all the folk that thought Stadia would work:
https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-69813666656=
07352320-FXtz
Dave T=C3=A4ht CEO, TekLibre, LLC


--=20
Podcast: https://www.youtube.com/watch?v=3DbxmoBr4cBKg
Dave T=C3=A4ht CSO, LibreQos

--000000000000b142130601a55de5
Content-Type: application/x-patch; 
	name="0001-sch_cake-use-const-invsqrt-lookup-table.patch"
Content-Disposition: attachment; 
	filename="0001-sch_cake-use-const-invsqrt-lookup-table.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_le0qm27j0>
X-Attachment-Id: f_le0qm27j0

RnJvbSBjYWQxMmM4Y2QwZTYwMzFkMzNlYTY0MjA5YzQzMDhhZTEwYTdkZDcxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYXZlIFRhaHQgPGR0YWh0QHRhaHQubmV0PgpEYXRlOiBTdW4s
IDEyIEZlYiAyMDIzIDAxOjUzOjQwICswMDAwClN1YmplY3Q6IFtQQVRDSF0gc2NoX2Nha2U6IHVz
ZSBjb25zdCBpbnZzcXJ0IGxvb2t1cCB0YWJsZQoKSXQgd2FzIHNpbGx5IHRvIGFjdHVhbGx5IGNh
bGN1bGF0ZSB0aGVzZSBhdCBydW4gdGltZSwgcGFydGljdWxhcmx5CmluIGFuIGFnZSB3aGVyZSAx
MHMgb2YgdGhvdXNhbmRzIG9mIGNha2UgaW5zdGFuY2VzIGV4aXN0LgoKVGhpcyBsb29rdXAgdGFi
bGUgaXMgYWxzbyBtaWxkbHkgbW9yZSBhY2N1cmF0ZS4KLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2Uu
YyB8IDUwICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwppbmRleCAzZWQw
YzMzNDIxODkuLmVhZDVlYTA2MDVhMyAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMK
KysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKQEAgLTM2MCw4ICszNjAsMjMgQEAgc3RhdGljIGNv
bnN0IHU4IGJlc3RlZmZvcnRbXSA9IHsKIHN0YXRpYyBjb25zdCB1OCBub3JtYWxfb3JkZXJbXSA9
IHswLCAxLCAyLCAzLCA0LCA1LCA2LCA3fTsKIHN0YXRpYyBjb25zdCB1OCBidWxrX29yZGVyW10g
PSB7MSwgMCwgMiwgM307CiAKKy8qIFRoZXJlIGlzIGEgYmlnIGRpZmZlcmVuY2UgaW4gdGltaW5n
IGJldHdlZW4gdGhlIGFjY3VyYXRlIHZhbHVlcyBwbGFjZWQgaW4KKyAqIHRoZSBjYWNoZSBhbmQg
dGhlIGFwcHJveGltYXRpb25zIGdpdmVuIGJ5IGEgc2luZ2xlIE5ld3RvbiBzdGVwIGZvciBzbWFs
bAorICogY291bnQgdmFsdWVzLCBwYXJ0aWN1bGFybHkgd2hlbiBzdGVwcGluZyBmcm9tIGNvdW50
IDEgdG8gMiBvciB2aWNlIHZlcnNhLgorICogQWJvdmUgMTYsIGEgc2luZ2xlIE5ld3RvbiBzdGVw
IGdpdmVzIHN1ZmZpY2llbnQgYWNjdXJhY3kgaW4gZWl0aGVyCisgKiBkaXJlY3Rpb24sIGdpdmVu
IHRoZSBwcmVjaXNpb24gc3RvcmVkLgorICoKKyAqIFRoZSBtYWduaXR1ZGUgb2YgdGhlIGVycm9y
IHdoZW4gc3RlcHBpbmcgdXAgdG8gY291bnQgMiBpcyBzdWNoIGFzIHRvIGdpdmUKKyAqIHRoZSB2
YWx1ZSB0aGF0ICpzaG91bGQqIGhhdmUgYmVlbiBwcm9kdWNlZCBhdCBjb3VudCA0LgorICovCisK
ICNkZWZpbmUgUkVDX0lOVl9TUVJUX0NBQ0hFICgxNikKLXN0YXRpYyB1MzIgY29iYWx0X3JlY19p
bnZfc3FydF9jYWNoZVtSRUNfSU5WX1NRUlRfQ0FDSEVdID0gezB9Oworc3RhdGljIGNvbnN0IHUz
MiBpbnZfc3FydF9jYWNoZVtSRUNfSU5WX1NRUlRfQ0FDSEVdID0geyAKKwl+MCwgCQkgICAgfjAs
CTMwMzcwMDA1MDAsIDI0Nzk3MDA1MjUsCisJMjE0NzQ4MzY0NywgMTkyMDc2Nzc2NywgMTc1MzQx
MzA1NiwgMTYyMzM0NTA1MSwKKwkxNTE4NTAwMjUwLCAxNDMxNjU1NzY1LCAxMzU4MTg3OTEzLCAx
Mjk0OTgxMzY0LAorCTEyMzk4NTAyNjMsIDExOTEyMDk2MDEsIDExNDc4NzgyOTQsIDExMDg5NTU3
ODgKK307CiAKIC8qIGh0dHA6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTWV0aG9kc19vZl9jb21w
dXRpbmdfc3F1YXJlX3Jvb3RzCiAgKiBuZXdfaW52c3FydCA9IChpbnZzcXJ0IC8gMikgKiAoMyAt
IGNvdW50ICogaW52c3FydF4yKQpAQCAtMzkyLDQyICs0MDcsOSBAQCBzdGF0aWMgdm9pZCBjb2Jh
bHRfaW52c3FydChzdHJ1Y3QgY29iYWx0X3ZhcnMgKnZhcnMpCiAJCWNvYmFsdF9uZXd0b25fc3Rl
cCh2YXJzKTsKIH0KIAotLyogVGhlcmUgaXMgYSBiaWcgZGlmZmVyZW5jZSBpbiB0aW1pbmcgYmV0
d2VlbiB0aGUgYWNjdXJhdGUgdmFsdWVzIHBsYWNlZCBpbgotICogdGhlIGNhY2hlIGFuZCB0aGUg
YXBwcm94aW1hdGlvbnMgZ2l2ZW4gYnkgYSBzaW5nbGUgTmV3dG9uIHN0ZXAgZm9yIHNtYWxsCi0g
KiBjb3VudCB2YWx1ZXMsIHBhcnRpY3VsYXJseSB3aGVuIHN0ZXBwaW5nIGZyb20gY291bnQgMSB0
byAyIG9yIHZpY2UgdmVyc2EuCi0gKiBBYm92ZSAxNiwgYSBzaW5nbGUgTmV3dG9uIHN0ZXAgZ2l2
ZXMgc3VmZmljaWVudCBhY2N1cmFjeSBpbiBlaXRoZXIKLSAqIGRpcmVjdGlvbiwgZ2l2ZW4gdGhl
IHByZWNpc2lvbiBzdG9yZWQuCi0gKgotICogVGhlIG1hZ25pdHVkZSBvZiB0aGUgZXJyb3Igd2hl
biBzdGVwcGluZyB1cCB0byBjb3VudCAyIGlzIHN1Y2ggYXMgdG8gZ2l2ZQotICogdGhlIHZhbHVl
IHRoYXQgKnNob3VsZCogaGF2ZSBiZWVuIHByb2R1Y2VkIGF0IGNvdW50IDQuCi0gKi8KLQotc3Rh
dGljIHZvaWQgY29iYWx0X2NhY2hlX2luaXQodm9pZCkKLXsKLQlzdHJ1Y3QgY29iYWx0X3ZhcnMg
djsKLQotCW1lbXNldCgmdiwgMCwgc2l6ZW9mKHYpKTsKLQl2LnJlY19pbnZfc3FydCA9IH4wVTsK
LQljb2JhbHRfcmVjX2ludl9zcXJ0X2NhY2hlWzBdID0gdi5yZWNfaW52X3NxcnQ7Ci0KLQlmb3Ig
KHYuY291bnQgPSAxOyB2LmNvdW50IDwgUkVDX0lOVl9TUVJUX0NBQ0hFOyB2LmNvdW50KyspIHsK
LQkJY29iYWx0X25ld3Rvbl9zdGVwKCZ2KTsKLQkJY29iYWx0X25ld3Rvbl9zdGVwKCZ2KTsKLQkJ
Y29iYWx0X25ld3Rvbl9zdGVwKCZ2KTsKLQkJY29iYWx0X25ld3Rvbl9zdGVwKCZ2KTsKLQotCQlj
b2JhbHRfcmVjX2ludl9zcXJ0X2NhY2hlW3YuY291bnRdID0gdi5yZWNfaW52X3NxcnQ7Ci0JfQot
fQotCiBzdGF0aWMgdm9pZCBjb2JhbHRfdmFyc19pbml0KHN0cnVjdCBjb2JhbHRfdmFycyAqdmFy
cykKIHsKIAltZW1zZXQodmFycywgMCwgc2l6ZW9mKCp2YXJzKSk7Ci0KLQlpZiAoIWNvYmFsdF9y
ZWNfaW52X3NxcnRfY2FjaGVbMF0pIHsKLQkJY29iYWx0X2NhY2hlX2luaXQoKTsKLQkJY29iYWx0
X3JlY19pbnZfc3FydF9jYWNoZVswXSA9IH4wOwotCX0KIH0KIAogLyogQ29EZWwgY29udHJvbF9s
YXcgaXMgdCArIGludGVydmFsL3NxcnQoY291bnQpCi0tIAoyLjM0LjEKCg==
--000000000000b142130601a55de5
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--000000000000b142130601a55de5--
