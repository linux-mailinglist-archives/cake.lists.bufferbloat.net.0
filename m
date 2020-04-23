Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4071B631B
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 20:15:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0CBDD3CB39;
	Thu, 23 Apr 2020 14:15:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587665715;
	bh=r8/u6Y5++G187cs9XuaGrmNbezzW2f6GW0G+jVyG2FQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cb+I6c4csDTkpg82UzLvJplXzvTQJ5YTFEPKE5OnQ5OgKKqa288d6FEGOZ9N97OUH
	 pX7SfJ37Z8cXsF7dqV18dnKeU1+f5X7CMT0ougZia4glnmg0mBGyvDpRKZ2pdyJehw
	 O34/ssIG9w9235wQZ0kiZJN/dqjqRsL9dsup+a3wGka/5fsdd8B3/n96eF3olcHjkA
	 eexDVEAXnNhZsq6h4QencX5mULbdkGuVJg35jtLhEz+tdmN2yOU9CvKdpcUC0uU71h
	 GePh9LXjljxe3eW4hWIwe8vsnFqf4EIpDrt2I14ZkIdmTZPm5GGa0MNctewQlVYG3M
	 qmElYFoEbAjGQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ACA523B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 13:31:13 -0400 (EDT)
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id C2AD4202C1;
 Thu, 23 Apr 2020 19:31:12 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ns.iliad.fr (Postfix) with ESMTPS id B3A9A201BB;
 Thu, 23 Apr 2020 19:31:12 +0200 (CEST)
Date: Thu, 23 Apr 2020 19:31:11 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <20200423173111.GL28541@sakura>
References: <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
 <20200423123329.GG28541@sakura> <877dy66tng.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877dy66tng.fsf@toke.dk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Apr 23 19:31:12 2020 +0200 (CEST)
X-Mailman-Approved-At: Thu, 23 Apr 2020 14:15:13 -0400
Subject: Re: [Cake] Advantages to tightly tuning latency
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

Ck9uIFRodXJzZGF5IDIzIEFwciAyMDIwIMOgIDE4OjQyOjExICgrMDIwMCksIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKCj4gRGlkbid0IG1ha2UgaXQgaW4gdW50aWwgNS41LCB1bmZv
cnR1bmF0ZWx5Li4uIDooCj4gCj4gSSBjYW4gdHJ5IHRvIHByb2R1Y2UgYSBwYXRjaCB0aGF0IHlv
dSBjYW4gbWFudWFsbHkgYXBwbHkgb24gdG9wIG9mIDUuNAo+IGlmIHlvdSdyZSBpbnRlcmVzdGVk
PwoKSSBjb3VsZCBkbyBpdCwgYnV0IHRoZSB0aGluZyBJJ20gbW9yZSB3b3JyaWVkIGFib3V0IGlz
IHRoZSBsYWNrIG9mCnRlc3QgY292ZXJhZ2UgZnJvbSBldmVyeW9uZSBlbHNlLgoKPiBBbnlob3cs
IG15IGxhcmdlciBwb2ludCB3YXMgdGhhdCB3ZSByZWFsbHkgZG8gd2FudCB0byBlbmFibGUgc3Vj
aCB1c2UKPiBjYXNlcyBmb3IgWERQOyBidXQgd2UgYXJlIGxhY2tpbmcgdGhlIGRldGFpbHMgb2Yg
d2hhdCBleGFjdGx5IGlzIG1pc3NpbmcKPiBiZWZvcmUgd2UgY2FuIGdldCB0byBzb21ldGhpbmcg
dGhhdCdzIHVzZWZ1bCAvIGRlcGxveWFibGUuIFNvIGFueQo+IGRldGFpbHMgeW91IGNvdWxkIHNo
YXJlIGFib3V0IHdoYXQgZmVhdHVyZSBzZXQgeW91IGFyZSBzdXBwb3J0aW5nIGluCj4geW91ciBv
d24gJ2Zhc3QgcGF0aCcgaW1wbGVtZW50YXRpb24gd291bGQgYmUgcmVhbGx5IGhlbHBmdWwuIEFz
IHdvdWxkCj4gZGV0YWlscyBhYm91dCB0aGUgaGFyZHdhcmUgcGxhdGZvcm0geW91IGFyZSB1c2lu
Zy4gWW91IGNhbiBzZW5kIHRoZW0KPiBvZmYtbGlzdCBpZiB5b3UgZG9uJ3Qgd2FudCB0byBtYWtl
IGl0IHB1YmxpYywgb2YgY291cnNlIDopCgp0aGVyZSBpcyBubyBoYXJkd2FyZSBzcGVjaWZpYyBm
ZWF0dXJlIHVzZWQsIGl0J3MgYWxsIHNvZnR3YXJlCgppbWFnaW5lIHRoaXMgInNpbXBsZSIgc2V0
dXAsIHByZXR0eSBtdWNoIHdoYXQgYW55b25lJ3MgaG9tZSByb3V0ZXIgaXMKZG9pbmc6Cgo8YnIw
PiB3aXRoIDxldGgwPiArIDx3bGFuMD4gaW5zaWRlLCBwcml2YXRlIElQdjQgYWRkcmVzcwo8d2Fu
MC52bGFuPiB3aXRoIElQdjYsIHZsYW4gaW50ZXJmYWNlIG92ZXIgPHdhbjA+CjxtYXAwPiB3aXRo
IElQdjQsIE1BUC1FIHR1bm5lbCBvdmVyIDx3YW4wLnZsYW4+Cgp0aGVuOgogIC0gSVB2NiByb3V0
aW5nIGJldHdlZW4gPGJyMD4gYW5kIDx3YW4wLnZsYW4+CiAgLSBJUHY0IHJvdXRpbmcgKyBOQVQg
YmV0d2VlbiA8YnIwPiBhbmQgPG1hcDA+CgppcHRhYmxlcyB3b3VsZCBiZSBmaWxsZWQgd2l0aCB1
c3VhbCBydWxlcywgcGVyIGludGVyZmFjZSBBTExPVyBydWxlcwppbiBGT1JXQVJEIGNoYWluLCBE
TkFUIHJ1bGVzIGluIFBSRVJPVVRJTkcgdG8gYWNjZXNzIExBTiBmcm9tIFdBTi4uLgoKYW5kIHRo
ZW4geW91IHdhbnQgdGhpcyB0byBiZSBmYXN0IDopCgpXaGF0IHdlIGRvIGlzIGJ1aWxkIGEgImZs
b3ciIHRhYmxlIG9uIHRvcCBvZiBjb25udHJhY2ssIHNvIHdpdGggYQpzaW5nbGUgbG9va3VwIHdl
IGZpbmQgdGhlIGZsb3csIHRoZSBkZXN0aW5hdGlvbiBpbnRlcmZhY2UsIGFuZCB3aGF0Cm1vZGlm
aWNhdGlvbnMgdG8gYXBwbHkgdG8gdGhlIHBhY2tldCAoTDMgYWRkcmVzcyB0byBjaGFuZ2UsIGVu
Y2FwIHRvCmFkZC9yZW1vdmUsIGV0YyBldGMpCgpUaGVuIHdlIGRvIHRoaXMgbG9va3VwIG1vcmUg
b3IgbGVzcyBlYXJseSBpbiBSWCBwYXRoLCBvbiBvdXIgb2xkZXN0CnBsYXRmb3JtIHdlIGV2ZW4g
aGFkIHRvIGRvIHRoaXMgZnJvbSB0aGUgZXRoZXJuZXQgZHJpdmVyLCBhbmQgZG8gVFgKZnJvbSB0
aGVyZSB0b28sIHNraXBwaW5nIHFkaXNjIGxheWVyIGFuZCBhbGxvd2luZyBjYWNoZSBtYWludGVu
YW5jZQpoYWNrcyAocGFydGlhbCBpbnZhbGlkYXRpb24gYW5kIHdiYWNrKQoKCm5mdGFibGUgd2l0
aCBmbG93dGFibGVzIHNlZW1zIHRvIGJlIGhhdmUgZGV2ZWxvcHBlZCBzb21ldGhpbmcgdGhhdApj
b3VsZCByZXBsYWNlIG91ciBmbG93IGNhY2hlLCBidXQgSSdtIG5vdCBzdXJlIGlmIGl0IGNhbiBo
YW5kbGUgb3VyCnR1bm5lbGluZyBzY2hlbWUgeWV0LiBJdCBldmVuIGhhcyBhIG5vdGlvbiBvZiBv
ZmZsb2FkZWQgZmxvdyBmb3IKaGFyZHdhcmUgdGhhdCBjYW4gc3VwcG9ydCBpdC4KCklmIHlvdSBh
ZGQgYW4gWERQIG9mZmxvYWQgdG8gaXQsIHdpdGggYW4gb3B0aW9uIHRvIGRvIHRoZQpsb29rdXAv
bW9kaWZpY2F0aW9uL3R4IGF0IHRoZSBsYXllciB5b3Ugd2FudCwgZGVwZW5kaW5nIG9uIHRoZQpw
ZXJmb3JtYW5jZSB5b3UgbmVlZCwgd2hldGhlciB5b3Ugd2FudCBxZGlzYy4uIHRoYXQgeW91J2Qg
Z2l2ZSB5b3UKcHJldHR5IG11Y2ggdGhlIHNhbWUgdGhpbmcgd2UgdXNlIHRvZGF5LCBidXQgd2l0
aCBhIGNsZWFuZXIgZGVzaWduLgoKCj4gRGVwZW5kcyBvbiB0aGUgVENQIHN0YWNrIChJIHRoaW5r
KS4gCgpJIGd1ZXNzIExpbnV4IGRlYWxzIHdpdGggT0ZPIGJldHRlciwgYnV0IHVuZm9ydHVuYXRl
bHkgdGhhdCdzIG5vdCB0aGUKbWFpbiBPUyB1c2VkIGJ5IG91ciBzdWJzY3JpYmVycy4uLgoKPiBT
dGVhbSBpcyBwZXJoYXBzIGEgYmFkIGV4YW1wbGUgYXMgdGhhdCBpcyBkb2luZyBzb21ldGhpbmcg
dmVyeSBtdWNoIGxpa2UKPiBiaXR0b3JyZW50IEFGQUlLOyBidXQgcG9pbnQgdGFrZW4sIHBlb3Bs
ZSBkbyBvY2Nhc2lvbmFsbHkgcnVuCj4gc2luZ2xlLXN0cmVhbSBkb3dubG9hZHMgYW5kIHdhbnQg
dGhlbSB0byBiZSBmYXN0LiBJJ20ganVzdCBhbm5veWVkIHRoYXQKPiB0aGlzIGJlY29tZXMgdGhl
ICpvbmUqIGJlbmNobWFyayBwZW9wbGUgcnVuLCB0byB0aGUgZXhjbHVzaW9uIG9mCj4gZXZlcnl0
aGluZyBlbHNlIHRoYXQgaGFzIGEgbXVjaCBsYXJnZXIgaW1wYWN0IG9uIHRoZSBvdmVyYWxsIHVz
ZXIKPiBleHBlcmllbmNlIDovCgp0aGF0IG9uZSBpcyBlYXN5Cgpjb252aW5jZSBvb2tsYSB0byBh
ZGQgc29tZSBraW5kIG9mICJsYXRlbmN5IHVuZGVyIGxvYWQiIG1ldHJpYywgYW5kCmhhdmUgdGhl
bSByZXBvcnQgaXQgYXMgYSBiaWcgcmVkIGZsYWcgd2hlbiB0b28gaGlnaCwgYW5kIGV2ZW4gYmV0
dGVyCmFkZCBzY2FyeSBtZXNzYWdlcyBsaWtlICJ0aGlzIGNvbm5lY3Rpb24gaXMgbm90IHN1aXRh
YmxlIGZvciBvbmxpbmUKZ2FtaW5nIi4KCnN1YnNjcmliZXJzIHdpbGwgYnVnIHRlbGNvLCB0aGVu
IHRlbGNvIHdpbGwgYnVnIFNPQ3MgdmVuZG9ycwoKLS0gCk1heGltZQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==
