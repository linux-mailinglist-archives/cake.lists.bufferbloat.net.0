Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B061B88C8
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 21:11:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 18EA73CB38;
	Sat, 25 Apr 2020 15:11:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587841891;
	bh=fa/UXFgatwxMzll2/+CNFj0EjpqnlcpZbcft2U15+To=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WbA365HwQW3UH+uSAilKKjwqE0SY+NrhHWSkx6oByRwqa5Ef1g/Oob27CJj6bQmkf
	 5va15cntThMsQ3N3Qt/buklLwl4945tYH8Ljq7EKREYvFG/TmIMLvWQJW4cK2dJJ1F
	 RuQWv2yJ4Gcz/zr6y88ntMCbxhY3o3LBPm3gI4S0nspJB9a4pNV6v8zd7A37/G+QEx
	 FzV33iBpIx0NnCF+I4MShqiGsVSQwgvjWuHHzNhNMnmmyMILZvJPeQZswXpJSUd/Dc
	 7znVgyJn50U2rnHBCoMvyNkNBUPq6coPA4+fX2SRygyPL2jGnJBmhoHPJSt51pfIGP
	 ne1JEDYDKEhOQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1D2B63B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 15:11:30 -0400 (EDT)
Received: by mail-il1-x135.google.com with SMTP id s10so12735861iln.11
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 12:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=vyjWFYtCeyju1B7WBTXjzUJGUxbxUKc8SMoDKcR/b9Y=;
 b=tdsB/JPnpoEfoc3WOySUCnsx96a9pNP7nQf5pm439FQ8j+kMsbSmOKc934k0Gk872Y
 QgmYxyMd8ILYJdZk/QEDyvGEkyl6WAM0g0yPsnlDzpENDltFy+VDXwvJ7UXJavI6YWk7
 VcwPxHr+z74AIEY9W/VZ/DiB46dlftRxwRaWPbP6lY5651RPuyVLPyKdrFhszqEMv7CQ
 xa0r5V28l8377unM0H276XXWHwDRNYRVvvSEfkWVIVx7i+SwBEtqF2UYQkROaJ2R9ydT
 lQkXN+rXSdm2uQiiOSs11VZNFyd0X3FkTe3aCtrT6JA/9eojVy3ZVHI8clRZyO8Lwi+N
 kqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=vyjWFYtCeyju1B7WBTXjzUJGUxbxUKc8SMoDKcR/b9Y=;
 b=Elc3lRM+gwoaZDdu+Evtgl5b+39Lnzxi/cRlW2sHWaz5FBYWisunYs5T5h/35YLPEc
 p+ufGkBmasutJtLSv+55KajYC0IAtvd2N2xZvD9kgWcwchJ/6acnETh3+pm4p/jgrT64
 YxHsQyE/gWsHZ3nWs2fvW/oa1OJIo/NRDB/Abigl9MB6aDkXyakizeWEDjMT2xhm4+KN
 99qWDWD8ciZpyNO4hNhxYGeUHSjRS3c6qB7iAunHfDgfxyTJJLjawBDwPhORYLdkRjrS
 b970m9Zk4YkpDQWLTSzWfN9JwJV/mmtRdUio/4WyoAFYIygMTqIjywpuG58QJSs9Cjtm
 iL0Q==
X-Gm-Message-State: AGi0PuaJHZr7yxy+B7VCNa2x1pi4MEEndzaa8CO/2BhT4Embop6EJQEb
 rlJGPmWYKxodv585vtZmNQRGpcqMXw8g8dOkfF3a0VuT
X-Google-Smtp-Source: APiQypIXL9oT2AAgmCewvRWKL+vBZW/EaMyemhfciQ9nTcYJ345ilHZ1MqyoguY9SR+1rLCqpdpBsJQIfHqfRTZSEqM=
X-Received: by 2002:a92:dccf:: with SMTP id b15mr13947433ilr.246.1587841889431; 
 Sat, 25 Apr 2020 12:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw71YdABJPeRkFDrzLGY2PtWy-zqaLoGrnFWuFhOPz48xg@mail.gmail.com>
 <20200424120317.4d3d3e98@rellim.com> <20200424120423.1f57def6@rellim.com>
 <CAA93jw7e6k4sxh2+5H-dSBmdUkA53=VxJu7FmTdrSKTsbP0rWg@mail.gmail.com>
 <20200424121344.2bc8e62c@rellim.com>
 <CAA93jw5i7ccwc3VwSKiNk9XL-FXHgwznxzCHUDytpHFDsNGfoA@mail.gmail.com>
 <20200424123005.64aef3bf@rellim.com>
 <CAA93jw5xygaNsqYb9z9cF00TpH=8cOSDzFGZJxrDW-SkQFey4g@mail.gmail.com>
 <20200424195745.72d725bd@rellim.com>
In-Reply-To: <20200424195745.72d725bd@rellim.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 25 Apr 2020 12:09:49 -0700
Message-ID: <CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake on linux 5.6 32 bit x86 might be broken
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

dGhlIGJhbmR3aWR0aCBwYXJhbWV0ZXIgaXMgbWlzLXBhcnNlZC4gdGhpcyBpcyBzdG9jayBrZXJu
ZWwsIHN0b2NrIDUuNiBpcHJvdXRlMgpsb29rcyBsaWtlIGFuIGFsaWdubWVudCBidWcuIEFueW9u
ZSBydW5uaW5nIHg4NiBvbiAzMiBiaXQ/IGFueW9uZQpydW5uaW5nIHRoaXMga2VybmVsIG9uIGFu
eXRoaW5nIDMyYml0PwoKaXMgNS40IG9rPwoKLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAt
LS0tLS0tLS0KRnJvbTogZWxpZGVkCkRhdGU6IEZyaSwgQXByIDI0LCAyMDIwIGF0IDc6NTcgUE0K
U3ViamVjdDogUmU6IFBTQSBwdCAxOiBmb3IgYmV0dGVyIHZpZGVvY29uZmVyZW5jaW5nIGF0IGhv
bWUgb24gc2xvdyBsaW5rcwpUbzogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgoKCllv
IERhdmUhCgpPbmUgc3RlcCBmb3J3YXJkLCB0d28gYmFjay4KCiAgICBMaW51eCBrZXJuZWwgNS42
LjcuCgogICAgfiMgdGMgLVYKICAgIHRjIHV0aWxpdHksIGlwcm91dGUyLXNzMjAwMzMwCgpUaGlz
IHN0YXJ0ZWQgY2FrZToKCiAgICB+IyB0YyBxZGlzYyBhZGQgZGV2IGV0aDEgcm9vdCBjYWtlIGJh
bmR3aWR0aCAxNjBtYnBzCgpCdXQsIG15IHNjb3JlIG9mIEIgZm9yIGJ1ZmZlcmJsb2F0IGZlbGwg
dG8gYSBDIQoKICAgIGh0dHA6Ly93d3cuZHNscmVwb3J0cy5jb20vc3BlZWR0ZXN0LzYyODAxNTc2
CgpjYWtlIHNlZW1zIHRvIGJlIGlnbm9yaW5nIG15IGJhbmR3aWR0aDoKCiAgICBjYXRiZXJ0On4j
IHRjIC1zIHFkaXNjIHNob3cgZGV2IGV0aDEKICAgIHFkaXNjIGNha2UgODAwNTogcm9vdCByZWZj
bnQgMiBiYW5kd2lkdGggMTI4ME1iaXQgZGlmZnNlcnYzCnRyaXBsZS1pc29sYXRlIG5vbmF0IG5v
d2FzaCBuby1hY2stZmlsdGVyIHNwbGl0LWdzbyBydHQgMTAwLjBtcyByYXcKb3ZlcmhlYWQgMAog
ICAgIFNlbnQgNTkxMjIzMzExIGJ5dGVzIDU2MjA4MiBwa3QgKGRyb3BwZWQgMCwgb3ZlcmxpbWl0
cyA2NjY2MjQgcmVxdWV1ZXMgMCkKICAgICBiYWNrbG9nIDBiIDBwIHJlcXVldWVzIDAKICAgICBt
ZW1vcnkgdXNlZDogMzc3OTM2YiBvZiAxNTE0MEtiCiAgICAgY2FwYWNpdHkgZXN0aW1hdGU6IDEy
ODBNYml0CiAgICAgbWluL21heCBuZXR3b3JrIGxheWVyIHNpemU6ICAgICAgICAgICA0MiAvICAg
IDE1MTQKICAgICBtaW4vbWF4IG92ZXJoZWFkLWFkanVzdGVkIHNpemU6ICAgICAgIDQyIC8gICAg
MTUxNAogICAgIGF2ZXJhZ2UgbmV0d29yayBoZHIgb2Zmc2V0OiAgICAgICAgICAgMTQKCiAgICAg
ICAgICAgICAgICAgICAgICAgQnVsayAgQmVzdCBFZmZvcnQgICAgICAgIFZvaWNlCiAgICAgIHRo
cmVzaCAgICAgICAgIDgwTWJpdCAgICAgMTI4ME1iaXQgICAgICAzMjBNYml0CiAgICAgIHRhcmdl
dCAgICAgICAgICA1LjBtcyAgICAgICAgNS4wbXMgICAgICAgIDUuMG1zCiAgICAgIGludGVydmFs
ICAgICAgMTAwLjBtcyAgICAgIDEwMC4wbXMgICAgICAxMDAuMG1zCiAgICAgIHBrX2RlbGF5ICAg
ICAgICAgIDB1cyAgICAgICAgICA4dXMgICAgICAgICAgNnVzCiAgICAgIGF2X2RlbGF5ICAgICAg
ICAgIDB1cyAgICAgICAgICAzdXMgICAgICAgICAgM3VzCiAgICAgIHNwX2RlbGF5ICAgICAgICAg
IDB1cyAgICAgICAgICAxdXMgICAgICAgICAgMXVzCiAgICAgIGJhY2tsb2cgICAgICAgICAgICAw
YiAgICAgICAgICAgMGIgICAgICAgICAgIDBiCiAgICAgIHBrdHMgICAgICAgICAgICAgICAgMCAg
ICAgICA0NDc0MzkgICAgICAgMTE0NjQzCiAgICAgIGJ5dGVzICAgICAgICAgICAgICAgMCAgICA1
ODA4NjQxMTQgICAgIDEwMzU5MTk3CiAgICAgIHdheV9pbmRzICAgICAgICAgICAgMCAgICAgICAg
NDIxNTkgICAgICAgICAyNTI2CiAgICAgIHdheV9taXNzICAgICAgICAgICAgMCAgICAgICAgIDM5
MzEgICAgICAgIDg3NTk3CiAgICAgIHdheV9jb2xzICAgICAgICAgICAgMCAgICAgICAgICAgMTEg
ICAgICAgICAgICAwCiAgICAgIGRyb3BzICAgICAgICAgICAgICAgMCAgICAgICAgICAgIDAgICAg
ICAgICAgICAwCiAgICAgIG1hcmtzICAgICAgICAgICAgICAgMCAgICAgICAgICAgIDAgICAgICAg
ICAgICAwCiAgICAgIGFja19kcm9wICAgICAgICAgICAgMCAgICAgICAgICAgIDAgICAgICAgICAg
ICAwCiAgICAgIHNwX2Zsb3dzICAgICAgICAgICAgMCAgICAgICAgICAyNDcgICAgICAgICAgIDQ2
CiAgICAgIGJrX2Zsb3dzICAgICAgICAgICAgMCAgICAgICAgICAgIDEgICAgICAgICAgICAwCiAg
ICAgIHVuX2Zsb3dzICAgICAgICAgICAgMCAgICAgICAgICAgIDAgICAgICAgICAgICAwCiAgICAg
IG1heF9sZW4gICAgICAgICAgICAgMCAgICAgICAgMzYxNDQgICAgICAgICAgOTk4CiAgICAgIHF1
YW50dW0gICAgICAgICAgMTUxNCAgICAgICAgIDE1MTQgICAgICAgICAxNTE0CgpCYWNrIHRvIHJl
YWRpbmcuLi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
