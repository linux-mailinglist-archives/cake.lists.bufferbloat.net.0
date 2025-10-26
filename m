Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B5BC0A8A8
	for <lists+cake@lfdr.de>; Sun, 26 Oct 2025 14:44:47 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 1D85F80BAE0;
	Sun, 26 Oct 2025 14:44:40 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=HBoIS5ck
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1761486280;
 b=zyRIhRCFLB5ij3r5Jr65JvHznJDOACYM5V6cnBgeTFMvUN1QRzkB3IykEna5VYa58HhMF
 m3aoto6aDQikJddrrIzSuZxggrZoX3wL0aBJFxg38aUhptvA6MpYl6cv2N9JRL+mIANbrsj
 KstjPzFEgct+OnhVCeNkrH2zQWjNjuo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1761486280; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=474V8Ge8klanJlsvzLBdxoez5D/R9iKVEZye/IeIIRw=;
 b=rKRaXkb1bkxEvs5LP5EghMaeU4xchOGzChccA5lw58XH+dbiu/kKJNRaH7/IoHLvFQvF1
 zxHlgWgsw+EvNK7mMrBZMa6PkCPQjRVjWWRP52wMFNgxgtn7Jzj4j9vko+kQdeVfoOHZI5e
 zxd3KcDtY7TvWYDSOgEZD0JcxhiNemU=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
	by mail.toke.dk (Postfix) with ESMTPS id 45CDE80BAAB
	for <cake@lists.bufferbloat.net>; Sun, 26 Oct 2025 14:44:36 +0100 (CET)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-b6d4e44c54aso661511866b.2
        for <cake@lists.bufferbloat.net>;
 Sun, 26 Oct 2025 06:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761486275; x=1762091075;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZisZL92E2DG4fkjzqDG7TTt0fK2GMNtH1qHMJOYc0Bg=;
        b=HBoIS5ckMb1M8JyOG7tzMSoBblIiKxmkDoLOpeZv3zcyEuDIQggfbFIOQtMGT7RlhN
         AGKoc153TzNFRYOZtRjLMsZ/5XP2l+hC8tdmHldFv4VzrD6z19k/kytPOfkuKvQFrwvR
         A5fqdmwCfULB7zCO1pmt3AOhr0uAEOuqKCmOkUFKukkt3G5g737tDw1Zv6Fv6+4/0DdS
         6NrCIEf15e8L+esV45XI3adEnjLiz5V2e53OFV7f44h+E+EvQDxZQoeFWVjMnr/9lRx7
         bzGHcWBQTmiXei6tSKRqPDQaWmsELazeVj/+0i/IZGenWaUNQ2vJxUibk1JxL2D/Y1ug
         MB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761486275; x=1762091075;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZisZL92E2DG4fkjzqDG7TTt0fK2GMNtH1qHMJOYc0Bg=;
        b=EENA+s9bz+vUwZS8hTyOXmVx2M6+yfjr5QPMVBS+OuOpPCiuyavWDdCgku34VaQBP3
         iQNpljjPwSgKWNqC7vZ4OOm3M/xoVLyaQ7FP0myWZVYEFzpncvK8pyoRPK3XW43uDgK9
         pDI8EkYG1fivI9cJXKTfhTMIClNXhJ2GBKch7Xi8ntZrohSKQgZZEj2btGffdoiB7JnS
         RunoqbGUN+AGvpHoKArylK1jE/XQBO3pj5Q47kTvaWZO1jRggrnSxnkU3SCGOBZrzqXi
         cJTguoMt0/ZsxRnLfJqUfzYoh8HqpYLov2hZqigWYqsuh7hrOqhKOTFcDXO85JHlRSkx
         Kx4Q==
X-Gm-Message-State: AOJu0YwFEfNhzcnKKVwJ6unBrJFFk55P4WQKgdBW5ff88h3uMnFPty77
	yodgeU/Hqw1+/IABpGILKRmftdB5u29Vqe/eBGjWptFipFoKOD7lNTROOfyf/4rCpeQbqCbvIum
	CYeuOr7sR78EVQ+Oqd1I863S7EfNIoySup/hP0WzmEA==
X-Gm-Gg: ASbGnctU77rPoiFRRAJ0mYgkGOR72C3StL/ZpM4OWJc/7nl2OTbLLeV7YNZV9LOlp7J
	PDYijGFQYLmBA73Wz/ZHvU8FBnRvT8DitowaItZCYtq1mkorxd8WklPWHJob/TqGKZjK0jOlOHE
	67L/dYSFEiCEUDAzhldPI7InqrETtLDaNP+kDrKjKtEZQOUqdbFmdChWKmW52n0NKC9LRvqSw4N
	deL9zgd7nb7+yQ/fL1BQhpdSO+qzNdRcrVZPEew2jMBRmiNpG8yOWDz282h7Q==
X-Google-Smtp-Source: 
 AGHT+IFGctmkEOro2DElZYl6YY+nVZk8p7lVFYvnz29XSGwvzEuTXZZGFbvlwuCzFYLGodIKugDa03oGyG3tjj/L6eM=
X-Received: by 2002:a17:907:944f:b0:b6d:76ef:38e9 with SMTP id
 a640c23a62f3a-b6d76ef40aemr928787366b.3.1761486274627; Sun, 26 Oct 2025
 06:44:34 -0700 (PDT)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Sun, 26 Oct 2025 14:47:25 +0100
X-Gm-Features: AWmQ_bkevRCMqJexyLHBcCwakPmlaRPLjjrO70OH2BZ3xetBmbzUlCNeiBk6B5k
Message-ID: 
 <CAJUtOOgmZePzM9XH3CN97MLbOE7EJ4usRuhzgz27WdDTHj8XUg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
	Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
Message-ID-Hash: EEMI2GWOK3GINMHV4GCXGKBN4WISZ345
X-Message-ID-Hash: EEMI2GWOK3GINMHV4GCXGKBN4WISZ345
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Bandwidth is Dead. Long Live Data Logistics (Part 2 of "Bandwidth is
 Dead")
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOgmZePzM9XH3CN97MLbOE7EJ4usRuhzgz27WdDTHj8XUg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWljYWggQmVjaywgZm9sbG93aW5nIHVwIG9uIEphc29uIExpdmluZ29vZCdzIEJhbmR3aWR0aCBp
cyBEZWFkLiBMb25nIExpdmUNCkxhdGVuY3kNCjxodHRwczovL3B1bHNlLmludGVybmV0c29jaWV0
eS5vcmcvYmxvZy9iYW5kd2lkdGgtaXMtZGVhZC1sb25nLWxpdmUtbGF0ZW5jeT4NCjoNCg0KIlRo
ZXJlIGlzIGEgbG9uZyBoaXN0b3J5IG9mIGZhaWxlZCBhdHRlbXB0cyB0byBpbnRyb2R1Y2UgcXVh
bGl0eSBvZiBzZXJ2aWNlDQooUW9TKSBndWFyYW50ZWVzIHdpdGhpbiB0aGUgcHVibGljIEludGVy
bmV0LiBUaGVzZSBlZmZvcnRzIGhhdmUgYmVlbg0KZm9jdXNlZCBvbiBndWFyYW50ZWVpbmcgYSBt
aW5pbWFsIGJhbmR3aWR0aCB0aHJvdWdob3V0IHRoZSBsaWZldGltZSBvZiBhDQp0cmFuc3BvcnQg
bGF5ZXIgY29ubmVjdGlvbi4gQW4gaW1wb3J0YW50IHByb2JsZW0gd2l0aCBzdWNoIGFwcHJvYWNo
ZXMgaXMNCnRoYXQgdGhlIHJlc2VydmF0aW9uIG9mIGJhbmR3aWR0aCB3aXRoaW4gYW4gb3RoZXJ3
aXNlIGJlc3QtZWZmb3J0IHRvdGFsIGlzDQphIHN0cm9uZyBndWFyYW50ZWUsIHdoaWNoIHJlZHVj
ZXMgdGhlIGRlcGxveW1lbnQgc2NhbGFiaWxpdHkgb2YgdGhlDQpuZXR3b3JrLiBQcm9wb25lbnRz
IG9mIGNyZWF0aW5nIGEg4oCcbG93IGxhdGVuY3kgbGFuZeKAnSwgc3VjaCBhcyBMNFMsIHNlZW0g
dG8NCnRoaW5rIHRoaXMgaXMgbm90IGEgZm9ybSBvZiBRb1MgZ3VhcmFudGVlLiINCg0KaHR0cHM6
Ly9wdWxzZS5pbnRlcm5ldHNvY2lldHkub3JnL2Jsb2cvYmFuZHdpZHRoLWlzLWRlYWQtbG9uZy1s
aXZlLWRhdGEtbG9naXN0aWNzDQoNCldlbGwsIGJlY2F1c2UgYmlnIHZlbmRvcnMgd2FudCB0byBj
b250aW51ZSB0byBzZWxsIGJpZyBidWZmZXJzIChWYW4NCkphY29ic29uIHdhcyB0YWxraW5nIDxo
dHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PU1BbmkwX2xON3pFPiBhYm91dCBpdA0KYXQg
TmV0ZGV2Y29uZiAyMDE4IHJlYWxseSBleHRlbnNpdmVseSEpLCBiaWcgdGVsY28gYW5kIGJpZyBJ
U1Agd2FudCB0byBzZWxsDQp0aGUgbmV3ZXN0IFdpLUZpIGFuZCBvciAzR1BQIHN0YW5kYXJkIGV2
ZXJ5IGNvdXBsZSBvZiB5ZWFycyAtIHRoZXkgZGlkbid0DQppbXBsZW1lbnQgRlEtQ29EZWwgYW5k
L29yIENBS0UsIGZvciB0aGUgbW9zdCBwYXJ0Lg0KDQpUaGVyZSB3b3VsZG4ndCBiZSBhbnkgbmVl
ZCBmb3IgUXVhbGl0eSBvZiBFeHBlcmllbmNlIG1pZGRsZS1ib3gsIGxpa2UNCkxpYnJlUW9TLCBC
ZXF1YW50LCBQcmVzZWVtLCBQYXJhcXVtIG9yIEFwcExvZ2ljIChmb3JtZXJseSBTYW5kdmluZSks
IHdoaWNoDQphcmUgZml4aW5nIHRoZXNlIGlzc3VlcyBvbmUgSVNQIG5ldHdvcmsgYXQgYSB0aW1l
LiBCdXQgdGhlcmUgaXMsIGFuZCB0aGVyZQ0Kd2lsbCBiZSBldmVuIG1vcmUgcmVhc29ucyBmb3Ig
dGhhdC4gSVNQcyB3aWxsIGNvbnRpbnVlIHRvIGJ1eSBiaWcsIGZhdA0KcGlwZXMsIGJpZyB0ZWxj
byB3aWxsIGJlIGRlcGxveWluZyBMNFMsIGJ1dCB0aGUgcHJvYmxlbSB3b3VsZCBOT1QgZ28gYXdh
eS4NCkV2ZXJ5Ym9keSBhbmQgdGhlaXIgbW90aGVyIHdpbGwgYmUgYXNraW5nIHdoeSA6KQ0KDQpU
aGV5IHdpbGwgYmUgcHVzaGluZyA2RyBvbiB1cyAoaGVjaywgdGhleSBldmVuIHN0YXJ0ZWQgLSBF
cmljc3NvbiBndXlzIGF0DQpJRVRGIDEyMyBpbiBNYWRyaWQsIHRoaXMgSnVseSksIFdpLUZpIDgg
YmVjYXVzZSBsbyBhbmQgYmVob2xkLCBXaS1GaSA2L0UNCmRpZG4ndCBmaXggaXQgYW5kIFdpLUZp
IDcgY29tYmluZWQgd2l0aCBHaWdhYml0IHNwZWVkcyB3b24ndCBkbyBpdCBlaXRoZXIuDQoNCkFu
ZCB5ZXQsIHRoZSBzb2x1dGlvbnMgYXJlIHdlbGwga25vdywgZnJlZSBuYSBvcGVuIHNvdXJjZTog
RlEtQ29EZWwgYW5kDQpDQUtFLg0KDQpMb25nIExpdmUgRGF2ZSBUw6RodC4gVGhpcyBzaG91bGQg
YmUgYSAzcmQgcGFydCBvZiB0aGUgIkJhbmR3aWR0aCBpcyBEZWFkIg0Kc2VyaWVzLCBidXQuLml0
IHdvbid0IGJlLiBCZWNhdXNlIHdlLCB0aGUgaW5kdXN0cnksIHdpbGwgY29udGludWUgdG8gbWFy
Y2gNCmluIGxvY2tzdGVwLCBvbiB0aGlzIHJvYWQgd2l0aCBtYW55IERlYWQgRW5kIFJvYWQgc2ln
bnMgYWxvbmcgdGhlIHdheS4NCg0KV2VsbCwgSSdtIHN0aWxsIHRvbyB5b3VuZyBhbmQgbmFpdmUg
KGFzIERhdmUgd2FzISksIGJ1dCBvbmUgd2F5IHNtYXJ0ZXIgYW5kDQpiaXQgb2xkZXIgZ2VudGxl
bWFuIHRoYXQgd2FzIHBhcnQgb2Ygb3VyICJLZXlub3RlOiBRb0UvUW9TIC0gQmFuZHdpZHRoIElz
IEENCkxpZSEiDQo8aHR0cHM6Ly93d3cud2lzcGFldmVudHMub3JnL1dQQUxPT1pBMjUvc2Vzc2lv
bi8zMDA3NDk0L2tleW5vdGUtcW9lcW9zLWJhbmR3aWR0aC1pcy1hLWxpZT4NCnBhbmVsIGRpc2N1
c3Npb24gYXQgV0lTUEFQQUxPT1pBIDIwMjUgc29tZSAxMCBkYXlzIGFnbyB0b2xkIG1lLCB0aGF0
DQpleGFjdGx5IGxpa2UgU3Rhcmxpbmsgd2FzIGluIGRpcmUgbmVlZCB0byBmYWxsIG9uIHRoZWly
IGtuZWVzIHdoZW4gdGhleQ0KYmFkbHkgbWlzc2VkIHdpdGggdXNpbmcgb2xkIHZlcnNpb24gb2Yg
T3BlbldydCB3aXRob3V0IEZRLUNvRGVsL0NBS0Ugd2hlbg0KdGhleSB3ZXJlIHN0YXJ0aW5nIGFu
ZCBnb3QgaXQgZml4ZWQgb25seSBhZnRlciB0aGUgcGFpbnQgd2FzIHRvbyBtdWNoLCB0aGUNCnNh
bWUgbXVzdCBtb3N0IHByb2JhYmx5IGhhcHBlbiB0byBQcm9qZWN0IEt1aXBlciBhbmQgb3RoZXIg
c2F0ZWxsaXRlDQppbnRlcm5ldCBwcm92aWRlcnMgdGhhdCBhcmUgY29taW5nIHVwLg0KDQpJIHdh
cyBmcnVzdHJhdGVkIHRoYXQgQW1hem9uL1Byb2plY3QgS3VpcGVyIHBlb3BsZSBEYXZlIGFuZCBJ
IHdlcmUgdHJ5aW5nDQp0byB0YWxrLCB3ZXJlLi4ud2VsbCwganVzdCBvYmxpdmlvdXMgdG8gdGhl
IHdob2xlIGJ1ZmZlcmJsb2F0IGlzc3VlLg0KDQpCdXQgaXQgaXMgd2hhdCBpdCBpcy4gQkFORFdJ
RFRIIElTIERFQUQuIExPTkcgTElWRSBEQVZFIFTDhEhULg0KDQpIYXBweSBTdW5kYXkgdG8geW91
IGFsbC4NCg0KQWxsIHRoZSBiZXN0LA0KDQpGcmFuaw0KDQpGcmFudGlzZWsgKEZyYW5rKSBCb3Jz
aWsNCg0KDQoqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAqMTk2NS0yMDI1DQoNCmh0
dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvDQoN
Cg0KaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpaw0KDQpTaWduYWws
IFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KDQppTWVzc2FnZSwgbW9iaWxlOiAr
NDIwNzc1MjMwODg1DQoNClNreXBlOiBjYXNpb2E1MzAyY2ENCg0KZnJhbnRpc2VrLmJvcnNpa0Bn
bWFpbC5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
