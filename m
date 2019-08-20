Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 015D19663A
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 18:24:43 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 943CC3CB38;
	Tue, 20 Aug 2019 12:24:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566318281;
	bh=0eRpRHqhKgs2m5/2aMlgVvZvQ6sJQOtyzrz1P5zP9OM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hcmfSzYoXnciwlOatdUzLcYOqyUOn7nKmpBJl8kBG9AK8WRt+zxFVDPrVN0Z0SW9z
	 xL+3tsG5OIzYbsPp7q6SVLHrcwh7d+9QJEFSSz01a/z/bnOvp1MHNdKoO25LHhY7gg
	 44Daj5zEZOgg/1TLQuVdbKta+9aO542Y3Xnce1306hVZeo6BBXItGCCfJlJbGme1pb
	 MBPMGo1fbFSFJvC+zbSpq+ooVK4NrGHFgDL7nRXK0oTSpQEPehUoVzLlRkKfC03MmF
	 BohQVMigpYTeMXPp5udQj3L3svpdS8gDW1AE4t1nqeKEjuvhaM52Ufq0sNAJ2OkQ4l
	 zlFUIrnPN4G3A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9D6C33B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 12:24:40 -0400 (EDT)
Received: by mail-io1-xd35.google.com with SMTP id t6so13429967ios.7
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 09:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=myz3xyzuTsVJgrV6PJZpXhoZ7LoYnVZIL6ancwbsyMw=;
 b=a00R/qI8VL2sOE5wNHcbDwPRpTTBXfVe0nTKwKhrEhjyhpqMFJhzLi5HCOHA1O09sZ
 RIoAnfiEeYBXWx8hiDg1TGTxN4p221y37rhchzQXYkAro+TvK55f8vVZeF1KCHqMI+6t
 qH+6Hi4YllsvftjP/C4viLG/J3a2Z2MCf44rM4uUkl7Le91gbVMjaj3Fso6J/a6m+Utb
 IhkbH3a59p3EiyoECtRz2ZsUnP6OACmpU2TATsXzvoNTTfkRel7FygrFG733X5wQ0rnW
 sWGz39B70YkmHHO4/1QAwnZjIwhVEP5KOQPOKFFcCrjvW3gDZJ/WFKIa8koXLShC1Zwo
 UslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=myz3xyzuTsVJgrV6PJZpXhoZ7LoYnVZIL6ancwbsyMw=;
 b=ZOZ/LTqLtwrn/V6EzMwrLUFFdGMioZn7d9NflrPjFVN0WxsadZx1KGEYG6zGLNbnsr
 ji2o/VHvLnzKwmi8YXkJ64nvq7r4cQlIy5o6Z0Ip2i8MdnhZjRCaN5LS5K92ycNpMi9p
 ulJG2c5xI1RAzBbV/37JvVNYk8UdK9CZfWaJgGAOEWUUkPGNXWvaOmUv6Z9oGZdmWKyM
 oDSBkQ8AZh1mjLeJ26OND7TRiO3W8oIeTtIaLfN2lyhPix9FK+4pzetTGVjO38ekrwdW
 amq9TOL3zQIxtxyyCg13cUXGCKh3l96mDnwEZTQUQqomdXyZRYFyuIKV8awk+rKyGSPJ
 ALEw==
X-Gm-Message-State: APjAAAUrPxQvj23GdTCx3kNO+8zyeTt7mUv0TnFzI2ib/aStwB3l6pWg
 xLYUCfk5YajqQGLyFciHQqyTvyWUx2KE1nKANnl1MlUfvEg=
X-Google-Smtp-Source: APXvYqxqexoFqPJjBBG7B+Sm27uFIrhafQLZ7ZJtLBKEkwpOWoiCrQ+e2RXsAmb/V4N+aE030/8EKSVZeGkXJjIMSiE=
X-Received: by 2002:a02:cd82:: with SMTP id l2mr4531779jap.97.1566318277405;
 Tue, 20 Aug 2019 09:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
In-Reply-To: <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 20 Aug 2019 09:24:24 -0700
Message-ID: <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Subject: Re: [Cake] cake in dd-wrt
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgNTowOSBBTSBTZWJhc3RpYW4gR290dHNjaGFsbAo8cy5n
b3R0c2NoYWxsQG5ld21lZGlhLW5ldC5kZT4gd3JvdGU6Cj4KPiA6LSkgaSdtIGZvbGxvd2luZyB0
aGlzIGxpc3QgYW5kIHllcyB3ZSBhcmUgd29ya2luZyBvbiBicmluZ2luZyBjYWtlIGluIDotKQoK
WWVhISB0aHggZm9yIGJlaW5nIG9uIHRoZSBsaXN0IQoKPiBpcyB0aGVyZSBhbnkgcXVlc3Rpb24g
YmVoaW5kIHRoaXMgbGluayBmcm9tIHlvdXIgc2lkZT8KCkkganVzdCB3YW50ZWQgdG8gbWFrZSBw
ZW9wbGUgaGVyZSBhd2FyZSB0aGF0IGl0IHdhcyBoYXBwZW5pbmcuCgpJcyB0aGVyZSBhIGJ1aWxk
IG5vdz8KCklmIEkgaGFkIGFueSBvbmUgcHJpbmNpcGFsIHJlcXVlc3QgaXQgd291bGQgYmUgdG8g
bWFrZSBzdXJlIHRoZSBkZC13cnQKZ3VpIChpZiBvbmUgaXMgbWFkZSkgZXhwb3NlcyB0aGUgbGlu
ayBsYXllciBwYXJhbWV0ZXJzLiBHZXR0aW5nIHRoZQpmcmFtaW5nIHdyb25nIGlzIGFib3V0IHRo
ZSBiaWdnZXN0IGVycm9yIEkgc2VlIGluIHRoZSBkZXBsb3ltZW50OgpodHRwczovL3d3dy55b3V0
dWJlLmNvbS93YXRjaD92PUxqSldfczVnUTlZCgpPdGhlciBuaWZ0eSBjYWtlIGZlYXR1cmVzOgoK
Indhc2giIGFuZCAiYmVzdGVmZm9ydCIgYXJlIGltcG9ydGFudCBvbiBzb21lIGNhYmxlY29zIHRo
YXQgcmVtYXJrCnRyYWZmaWMgdG8gQ1MxCiJuYXQiIGlzIGRhbmcgdXNlZnVsIGlmIHlvdSBhcmUg
bmF0dGluZwphY2stZmlsdGVyIGhlbHBzIG9uIHJlYWxseSBzbG93IGFzeW1tZXRyaWMgbmV0d29y
a3Mgb24gdGhlIHNsb3cgc2lkZSBvbmx5LgoKU28sIGxpa2UsIG15IGRlZmF1bHRzIHdvdWxkIGJl
CgppbjogbmF0IHdhc2ggYmVzdGVmZm9ydCAjIHRyaXBsZS1pc29sYXRlIGJhbmR3aWR0aCBYIGV0
YwpvdXQ6IG5hdCBhY2stZmlsdGVyICMgaWYgPiAxMHgxIGRvd24vdXAgcmF0aW8KCkFuZCBtYWtl
IHN1cmUgdGhlIGxpbmsgbGF5ZXIgc2V0dGluZ3MgYXJlIGV4cG9zZWQgaW4gdGhlIGd1aS4gSSBy
ZWFsbHkKZG9uJ3Qga25vdyBob3cgbXVjaAoid2FzaGluZyIgaXMgbmVlZGVkIG91dHNpZGUgdGhl
IGNhYmxlY29zLCB0YWtpbmcgcGFja2V0IGNhcHR1cmVzIG9mCnZhcmlvdXMgaXNwcyB0byBzZWUg
aG93IG9mdGVuCmRzY3AgYml0cyBhcmUgbWFuZ2xlZCBub3dhZGF5cyB3b3VsZCBiZSBnb29kLiBi
ZXN0ZWZmb3J0IG9uIGluYm91bmQKc2F2ZXMgc29tZSBvbiBjcHUuCgpBcmUgeW91IHVzaW5nIHRo
ZSBvdXQgb2YgdHJlZSB2ZXJzaW9uIG9yIG1haW5saW5lPyBPdXQgb2YgdHJlZSBoYXMKc29tZSBl
eHBlcmltZW50YWwgU0NFIHdvcmsKdGhhdCBJJ2QgbG92ZSB0byBzZWUgdGVzdGVkIGF0IG1vcmUg
c2NhbGUgYnV0IG5vdCBhY3R1YWxseSBzaGlwcGVkIGF0IHRoaXMgdGltZS4KCkR1ZSB0byBob3cg
Y3B1IGludGVuc2l2ZSBjYWtlIGNhbiBiZSAob24gaW5ib3VuZCkgSSd2ZSBiZWVuIHdvcmtpbmcg
b24KYSBmYXN0ZXIsIGxlc3MgZmVhdHVyZS1mdWxsIGZxX2NvZGVsLCBpdCdzIGhlcmU6CgpodHRw
czovL2dpdGh1Yi5jb20vZHRhaHQvZnFfY29kZWxfZmFzdAoKSSBoYXRlIHRoZSBpZGVhIG9mIGZx
X2NvZGVsIG9uZSB3YXksIGNha2UgdGhlIG90aGVyLCBidXQgdGJmICsKZnFfY29kZWxfZmFzdCBz
ZWVtcyB0byB3b3JrIHdlbGwgYXQKfjFnYml0IG9uIG15IGFwdTIgYW5kIGNha2UgZG9lc24ndC4g
SSdkIG9yaWdpbmFsbHkgcGxhbm5lZCB0byB0cnkgYW5kCm1ha2UgYSBtdWx0aS1jb3JlIHNoYXBl
ciBvdXQKb2YgaXQsIGJ1dCBzY2UgZGlzdHJhY3RlZCBtZS4uLi4KCkhhdmluZyBtb3JlIGZvbGsg
b24gYm9hcmQgYmVuY2hpbmcgc3R1ZmYgb24gbW9kZXJuIG5vbi14ODYgcGxhdGZvcm1zCndvdWxk
IGJlIGdvb2QuCgpBbm90aGVyIGNha2UgZmVhdHVyZSBpcyB0aGF0IHlvdSBjYW4gZ2V0IGFsbCB0
aGUgYmVuZWZpdHMgb24gYSBub3JtYWwKZXRoZXJuZXQgKHdpdGggYnFsKSAqd2l0aG91dCB0dXJu
aW5nIHRoZSBzaGFwZXIgb24qIGJ1dCB3ZSBoYXZlIG5vdApiZW5jaG1hcmtlZCB0aGF0IGVpdGhl
ciB2cyBhIHZzIGZxX2NvZGVsIG9yIGZxX2NvZGVsX2Zhc3QKCkhhdmUgZnVuIQoKSGVyZSdzIHRo
ZSBmaXJzdCBwYXBlcjogaHR0cHM6Ly9hcnhpdi5vcmcvcGRmLzE4MDQuMDc2MTcucGRmCgo+IFNl
YmFzdGlhbgo+Cj4gQW0gMTguMDguMjAxOSB1bSAxODozMyBzY2hyaWViIERhdmUgVGFodDoKPiA+
IGh0dHBzOi8vc3ZuLmRkLXdydC5jb20vdGlja2V0LzU3OTYKPiA+CgoKCi0tIAoKRGF2ZSBUw6Ro
dApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS0y
MDUtOTc0MApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
