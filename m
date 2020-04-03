Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C54A19DE34
	for <lists+cake@lfdr.de>; Fri,  3 Apr 2020 20:50:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 31CB43CB39;
	Fri,  3 Apr 2020 14:50:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1585939802;
	bh=KfbSz5iAblRb2vJEUXGCA78Iaet5Z/H4IZsKVe2TpvI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n6wu2qQ4zBhol5AB28KhF6hqrztyFi32eKMOlviXTfPiZfSWZVl7MaXHYWjGKm4A2
	 R86IvUtg5r0At3Al2md7X8pYS2687AjhDWKrLZFQpX+Vn4t0i3MGqfvbS6wSN3Zvyh
	 fNLPe7TzhrBrN8FbK6pMxRLasHGKM+TzqC5QnjAMLbF49o4AX5GWZxKCVwRg/ai8cP
	 pHS49lsniZLkZwSmnzEvEQhtfmdWfNdnD2wNBq0T/Om7Uo8WTQoCo36ZSJHV7J4WM+
	 2qZqBTKs4O7nmBJbz3phrBbp6+0aki0jwysS9rsRJc0JxREbrdrxulmrYWrnMUi0R8
	 VrW6T2W5h9Qtg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9FB8F3B29D
 for <cake@lists.bufferbloat.net>; Fri,  3 Apr 2020 14:50:00 -0400 (EDT)
Received: by mail-il1-x130.google.com with SMTP id p13so8316748ilp.3
 for <cake@lists.bufferbloat.net>; Fri, 03 Apr 2020 11:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=NAr3keceGlx3h8ZOq3OF/JvxP5SZEsb1zRZfinOlWzk=;
 b=eataFSB9rRUwsHUwOOpJjij+6X+id4wku7paJClZQxaWDQGKyH/Au6TYS/bPvqdNrh
 LJfD/UsWTVvaQCJEc7IB+3lPU7PZP+tcoY+zFutr9Qc7YjH4kIwu1a/c+qw1VdzMJZ2m
 0K5mojnqdRGu7uIPD8p62+q3rxfhjfupzZaF+J1LFl4m7D0m6MVYsnczb6zptYnUGk5B
 LwYGoYa01RxlxIMrXat7RAW9QimEC9qNPCXTG8v1ZVY66ONYzV3UcsbDpbj7lUI0qVcn
 UgvEm6GNgi/BisSzN1QEvClHqsFv3zptEm4qMJ/0qAtiNT47/BdNpqDpaFFJuMaKY8a9
 9gYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=NAr3keceGlx3h8ZOq3OF/JvxP5SZEsb1zRZfinOlWzk=;
 b=QKoqLl+PGcFySaCJzrSj9T0i2ihDwcH29pJJRalDRfVI7PS+Mcgker2WGJZbVZ0ZFI
 l7R1VeiSUi76e73gBnvevK4FJ7GsmkgAy8bnAY4z/Fau1zYt37+yTzh/2WKFXMM2mQtK
 hO/V4M17wTCcvGRg6w0XdPpX9067nzdiS1ToiH+gFrRNk4FHA8pIxwyquxCyM+cqd5e5
 dUli6g2UAbOFAWQtKHG/r86OzlGG+tqm6o9ZEUjLKCv7PXSFFSlIT72LG5B4ZT+FlhnM
 HfQRkjJLd/tc0cAT9Tv+JkChPosLG37TDniC8O4wnfKyQ5M89sM5DpdCv+FW+JIbgz34
 Adkw==
X-Gm-Message-State: AGi0PuZ7Dj55ipuHRASKsfH/WkCyVzOCVBe93wc++ZoX1rHMB4kr9MRu
 X/KYcsSdDjQaQMm9ZBYC8W7jWIyOi5WrCjgT7T8=
X-Google-Smtp-Source: APiQypIBeZ01PMKmqyEfpy/h2ml/Xg0d4O7EUK9vUGbmKX9DDjv5kRjD4EZF26flYVuH9dVRZBufVwQ7ZyIMNvKs4EI=
X-Received: by 2002:a92:a312:: with SMTP id a18mr10250549ili.249.1585939800086; 
 Fri, 03 Apr 2020 11:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAN_LGv1h8Ut4bGm7ZgYaGV_Tbdy3ABW+epb_p6jeX=TxnAvH1g@mail.gmail.com>
In-Reply-To: <CAN_LGv1h8Ut4bGm7ZgYaGV_Tbdy3ABW+epb_p6jeX=TxnAvH1g@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 3 Apr 2020 11:49:48 -0700
Message-ID: <CAA93jw5rVmpAtgC6PCSvwpW4WkhiP9C6f7ru2U3c6RgQBYdfCA@mail.gmail.com>
To: "Alexander E. Patrakov" <patrakov@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] tc-cake(8) needs to explain a common mistake
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

c28gbmljZSB0byBrbm93IGNha2UgaGFzIG1hZGUgaXQgdG8gcnVzc2lhISEhCgpPbiBGcmksIEFw
ciAzLCAyMDIwIGF0IDExOjQ2IEFNIEFsZXhhbmRlciBFLiBQYXRyYWtvdgo8cGF0cmFrb3ZAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEhlbGxvLAo+Cj4gdGhlcmUgaXMgYSByZWN1cnJpbmcgY2FyZ28g
Y3VsdCBwYXR0ZXJuIGluIG1hbnkgZm9ydW1zIChlLmcuIE9wZW5XUlQpOgo+IHBlb3BsZSBrZWVw
IHN1Z2dlc3RpbmcgdmFyaW91cyBvdmVyaGVhZCBjb21wZW5zYXRpb24gcGFyYW1ldGVycyB0bwo+
IHRjLWNha2Ugd2l0aG91dCBjaGVja2luZyB3aGF0J3MgdGhlIGJvdHRsZW5lY2suIFRoZXkganVz
dCBhc3N1bWUgdGhhdAo+IGl0IGlzIGFsd2F5cyByZWxhdGVkIHRvIHRoZSBsaW5rLWxheWVyIHRl
Y2hub2xvZ3kgb2YgdGhlIGNvbm5lY3Rpb24uCj4KPiBUaGlzIGFzc3VtcHRpb24gaXMgbW9zdGx5
IGluY29ycmVjdCwgYW5kIHRoaXMgbmVlZHMgdG8gYmUgZXhwbGFpbmVkIGluCj4gdGhlIG1hbnVh
bCBwYWdlIHRvIHN0b3AgdGhlIGNhcmdvIGN1bHQuIEUuZy4sIGhlcmUgaW4gUnVzc2lhLCBpbiB0
aGUKPiBwYXN0IHllYXIsIEkgaGFkIGEgMUdiaXQvcyBsaW5rICgxMDAwQkFTRS1YKSBidXQgdGhl
eSBzaGFwZWQgbXkKPiBjb25uZWN0aW9uIGRvd24gdG8gNTAwIE1iaXQvcyBiZWNhdXNlIHRoYXQn
cyB0aGUgYmFuZHdpZHRoIHRoYXQgSSBwYWlkCj4gZm9yLiBJLmUuIHRoZSBsaW5rIGZyb20gbXkg
cm91dGVyIHRvIHRoZSBJU1AgZXF1aXBtZW50IHdhcyBub3QgdGhlCj4gYm90dGxlbmVjaywgaXQg
d2FzIHRoZSBJU1AncyBzaGFwZXIuCj4KPiBIb3cgYWJvdXQgdGhlIGZvbGxvd2luZyBhZGRpdGlv
biB0byB0aGUgdGMtY2FrZSg4KSBtYW51YWwgcGFnZSwganVzdAo+IGJlZm9yZSAiTWFudWFsIE92
ZXJoZWFkIFNwZWNpZmljYXRpb24iPyBGZWVsIGZyZWUgdG8gZWRpdC4KPgo+IEdlbmVyYWwgY29u
c2lkZXJhdGlvbnMKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4KPiBEbyBub3Qg
YmxpbmRseSBzZXQgdGhlIG92ZXJoZWFkIGNvbXBlbnNhdGlvbiBwYXJhbWV0ZXJzIHRvIG1hdGNo
IHRoZQo+IGludGVybmV0IGNvbm5lY3Rpb24gbGluayB0eXBlIGFuZCBwcm90b2NvbHMgcnVubmlu
ZyBvbiBpdC4gRG9pbmcgc28KPiBtYWtlcyBzZW5zZSBvbmx5IGlmIHRoYXQgbGluayAoYW5kIG5v
dCBzb21ldGhpbmcgZnVydGhlciBpbiB0aGUgcGF0aCwKPiBsaWtlIHRoZSBJU1AncyBzaGFwZXIp
IGlzIGluZGVlZCB0aGUgYm90dGxlbmVjay4KPgo+IEV4YW1wbGUgMTogdGhlIEFEU0wgbW9kZW0g
Y29ubmVjdHMgYXQgMTggTWJpdC9zLCBidXQgdGhlIElTUCBmdXJ0aGVyCj4gdGhyb3R0bGVzIHRo
ZSBzcGVlZCB0byAxNSBNYml0L3MgYmVjYXVzZSB0aGF0J3Mgd2hhdCB0aGUgdXNlciBwYXlzCj4g
Zm9yLCBhbmQgZG9lcyBzbyB3aXRoIGEgc2hhcGVyIHRoYXQgaGFzIGJ1ZmZlcmJsb2F0LiBUaGVu
LCB0aGUgImFkc2wiCj4ga2V5d29yZCBpcyBsaWtlbHkgbm90IGFwcHJvcHJpYXRlLCBiZWNhdXNl
IHRoZSBJU1AncyBzaGFwZXIgb3BlcmF0ZXMKPiBvbiB0aGUgSVAgbGV2ZWwuIFRoZSBiYW5kd2lk
dGggbmVlZHMgdG8gYmUgc2V0IHNsaWdodGx5IGJlbG93IDE1Cj4gTWJpdC9zLgo+Cj4gRXhhbXBs
ZSAyOiB0aGUgQURTTCBtb2RlbSBjb25uZWN0cyBhdCAxOCBNYml0L3MsIGFuZCB0aGUgdXNlciBw
YXlzIGZvcgo+ICJhcyBmYXN0IGFzIHRoZSBtb2RlbSBjYW4gZ2V0IiBjb25uZWN0aW9uLiBUaGVu
LCB0aGUgImFkc2wiIGtleXdvcmQgaXMKPiByZWxldmFudCwgYW5kIHRoZSBiYW5kd2lkdGggbmVl
ZHMgdG8gYmUgc2V0IHRvIDE4IE1iaXQvcy4KPgo+IEV4YW1wbGUgMzogdGhlIHVzZXIgaGFzIGEg
MTAwQkFTRS1UWCBFdGhlcm5ldCBjb25uZWN0aW9uLCBhbmQgcGF5cyBmb3IKPiB0aGUgZnVsbCAx
MDAgTWJpdC9zIGJhbmR3aWR0aCAoaS5lLiB0aGVyZSBpcyBubyBzaGFwZXIgZnVydGhlciB1cCku
Cj4gVGhlbiwgdGhlICJldGhlcm5ldCIga2V5d29yZCBpcyByZWxldmFudCwgYW5kIHRoZSBiYW5k
d2lkdGggbmVlZHMgdG8KPiBiZSBzZXQgdG8gMTAwIE1iaXQvcy4KPgo+IC0tCj4gQWxleGFuZGVy
IEUuIFBhdHJha292Cj4gQ1Y6IGh0dHA6Ly9wYy5jZC9QTHo3CgoKCi0tIApNYWtlIE11c2ljLCBO
b3QgV2FyCgpEYXZlIFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJl
LmNvbQpUZWw6IDEtODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
