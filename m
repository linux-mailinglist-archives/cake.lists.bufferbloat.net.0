Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E89EE1B598B
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 12:47:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 36B0C3CB38;
	Thu, 23 Apr 2020 06:47:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587638874;
	bh=9wBKBnIyRqtknS4jeIbdZRPajiQtyUvqwAzJqdLZJJA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SKnRipI1y64YWIFlIG0ek/F5tljzvrwNE2uL42AEvcuaH9qAaRHWrLMAF17f6m7i2
	 UHgzB3859J4PJ+JkiuN1F88HHUFtd0KQZj123flnF+4kVeAAI7wXiIihiFb+NPgumS
	 PSCDDKq0MpGcRt2Z4hdD0CUAOrm7z5CoDQFbPVotjPYk75knnloXOtsGxHMlHH+xzD
	 GAI2VmqeEQIcQ3qb2IH19OT7Bk2Kau0udqqq5FjS3JSHMWGwT/dTMqXAoonGYYtULN
	 FtqveBthCeg48E2bhMdK8UjkhEAi9Vly7dMKgk1s+vAmjfhvpY/q98HXBegXAH7/0J
	 rLJyi3xJxGGXw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7F35E3B29E
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 05:29:11 -0400 (EDT)
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 73052202C7;
 Thu, 23 Apr 2020 11:29:10 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ns.iliad.fr (Postfix) with ESMTPS id 64E592022C;
 Thu, 23 Apr 2020 11:29:10 +0200 (CEST)
Date: Thu, 23 Apr 2020 11:29:09 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Dave Taht <dave.taht@gmail.com>
Message-ID: <20200423092909.GC28541@sakura>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Apr 23 11:29:10 2020 +0200 (CEST)
X-Mailman-Approved-At: Thu, 23 Apr 2020 06:47:52 -0400
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

Ck9uIFdlZG5lc2RheSAyMiBBcHIgMjAyMCDDoCAwNzo0ODo0MyAoLTA3MDApLCBEYXZlIFRhaHQg
d3JvdGU6CgpIZWxsbywKCj4gPiBGcmVlIGhhcyBiZWVuIHVzaW5nIFNGUSBzaW5jZSAyMDA1IChp
ZiBJIHJlbWVtYmVyIHdlbGwpLgo+ID4gVGhleSBhbm5vdW5jZWQgdGhlIHdpZGUgZGVwbG95bWVu
dCBvZiBTRlEgaW4gdGhlIGZyZWUuZnIgbmV3c2dyb3VwLgo+ID4gV2ktRmkgaW4gdGhlIGZyZWUu
ZnIgcm91dGVyIHdhcyBub3QgYXMgZ29vZCB0aG91Z2guCj4gCj4gVGhleSdyZSB3b3JraW5nIG9u
IGl0LiA6KQoKeWVzIGluZGVlZC4KClN3aXRjaGluZyB0byBzb2Z0bWFjIGFwcHJvYWNoLCBzbyBu
b3cgbWFjODAyMTEgd2lsbCBkbyByYXRlIGNvbnRyb2wKYW5kIHNjaGVkdWxpbmcgKHVzaW5nIHdh
a2VfdHhfcXVldWUgbW9kZWwpLgoKZm9yIDVnaHosIHdlIHVzZSBhdGgxMGsKCj4gSSBhbSB2ZXJ5
LCB2ZXJ5IGhhcHB5IGZvciB5J2FsbC4gRmliZXIgaGFzIGFsd2F5cyBiZWVuIHRoZSBzYW5lc3QK
PiB0aGluZy4gSXMgdGhlcmUgYSBTUEYrIGdwb24gY2FyZCB5ZXQgSSBjYW4gcGx1ZyBpbnRvIGEg
Y29udmVudGlvbgo+IG9wZW4gc291cmNlIHJvdXRlciB5ZXQ/CgpGWUkgRnJlZS5mciB1c2VzIDEw
Ry1FUE9OLCBub3QgR1BPTi4KCkFsc28gbW9zdCBkZXBsb3ltZW50cyBhcmUgdXNpbmcgYW4gYWRk
aXRpb25uYWwgdGVybWluYWwgZXF1aXBlbWVudCBhdApjYWxsZWQgIk9OVCIgb3IgIk9OVSIgdGhh
dCBoYW5kbGUgdGhlIFBPTiBwYXJ0IGFuZCBleHBvc2VzIGFuIGV0aGVybmV0CnBvcnQgd2hlcmUg
dGhlIG9wZXJhdG9yIENQRSBpcyBwbHVnZ2VkLiBTbyB3ZSBhcmUgYmFjayB0byB0aGUgZWFybHkK
ZGF5cyBvZiBEU0wsIHdoZXJlIHRoZSBoYXJkZXN0IHBhcnQgKHNjaGVkdWxpbmcpIGlzIGRvbmUg
aW5zaWRlIGEKYmxhY2sgYm94LiBUaGF0IG1ha2VzIGl0IGVhc2llciB0byByZXBsYWNlIHRoZSBv
cGVyYXRvciBDUEUgd2l0aCB5b3VyCm93biBzdGFuZGFyZCBldGhlcm5ldCByb3V0ZXIgdGhvdWdo
LgoKQXQgbGVhc3QgU09DcyB3aXRoIGludGVncmF0ZWQgUE9OIChzdXBwb3J0aW5nIGFsbCBmbGF2
b3VycwpHUE9OL0VQT04vLi4pICBhcmUgc3RhcnRpbmcgdG8gYmUgZGVwbG95ZWQuIE5vdGhpbmcg
YXZhaWxhYmxlIGluCm9wZW5zb3VyY2UuCgpBbHNvIG5vdGUgdGhhdCBpdCdzIG5vdCBqdXN0IGtl
cm5lbCBkcml2ZXJzLCB5b3UgYWxzbyBuZWVkIHNvbWUgaGlnaGVyCk9BTSBzdGFjayB0byBtYWtl
IHRoYXQgd29yaywgYW5kIHRoZXJlIGFyZSBhIGxvdCBvZiBleGlzdGluZwpzdGFuZGFyZHMsIERQ
T0UgKEVQT04pLCBPTUNJIChHUE9OKS4uLiBhbGwgd2l0aCBpbnRlcm9wIGNoYWxsZW5nZXMuCgo+
ID4gVGhlIGNoYWxsZW5nZSBiZWNvbWVzIHRvIGtlZXAgdXAgd2l0aCB0aGVzZSBsaW5rIHJhdGVz
IGluIHNvZnR3YXJlCj4gPiBhcyB0aGVyZSBpcyBhIGxvdCBvZiBoYXJkd2FyZSBvZmZsb2FkaW5n
LgoKWWVzIHRoYXQncyBvdXIgcGFpbiBwb2ludCwgYmVjYXVzZSB0aGF0J3Mgd2hhdCB0aGUgU09D
cyB2ZW5kb3JzCmRlbGl2ZXIgYW5kIHlvdSBuZWVkIHRvIHVzZSB0aGF0IGJlY2F1c2UgdGhlcmUg
aXMgbm8gYWx0ZXJuYXRpdmUuCgpJdCdzIG5vdCBlbnRpZXJlbHkgdGhlIFNPQ3MgdmVuZG9ycyBm
YXVsdCB0aG91Z2guCgoxNSB5ZWFycyBhZ28sIHlvdXIgYXZlcmFnZSBTT0MncyBDUFUgd291bGQg
YmUgc29tZXRoaW5nIGxpa2UgMjAwTWh6Ck1JUFMsIExpbnV4IHN0YW5kYXJkIGZvcndhcmRpbmcg
cGF0aCAoc29mdGlycSA9PiByb3V0aW5nK25ldGZpbHRlciA9PgpxZGlzYykgd2FzIHRvbyBzbG93
IGZvciB0aGlzLCB0b28gbXVjaCBjYWNoZSBmb290cHJpbnQvb3ZlcmhlYWQuIFNvCmV2ZXJ5IHZl
bmRvciBzdGFydGVkIGJ1aWxkaW5nIGFsdGVybmF0aXZlcyBmb3J3YXJkaW5nIHBhdGggaW4gdGhl
aXIKaGFyZHdhcmUgYW5kIG5ldmVyIGxvb2tlZCBiYWNrLgoKTm93ZGF5cywgdGhlIGJhc2VsaW5l
IFNPQyBDUFUgd291bGQgYmUgQVJNIENvcnRleCBBNTNAfjFHaHosIHdoaWNoCndpdGggYSBub24g
Y3JhcHB5IG5ldHdvcmsgZHJpdmVyIGFuZCBpbnRlcm5hbCBmYWJyaWMgc2hvdWxkIGRvIGJlIGFi
bGUKdG8gcm91dGUgMUdiaXQvcyB3aXRoIG91dC1vZi10aGUtYm94IGtlcm5lbCBmb3J3YXJkaW5n
LgoKQnV0IHRoYXQncyB0b28gbGF0ZS4gU09DIHZlbmRvcnMgY29tcGV0ZSBhZ2FpbnN0IGVhY2gg
b3RoZXJzLCBhbmQgdGhlCmJpZyB0ZWxjb3MgbmVlZCBhIHdheSB0byB0ZWxsIHdoaWNoIFNPQyBp
cyBiZXR0ZXIgdG8gbWFrZSBhIGJ1eWluZwpkZWNpc2lvbi4gU28gc3ludGhldGljIGJlbmNobWFy
a3MgaGF2ZSBiZWNvbWUgdGhlIG5vcm0sIGFuZCBzaW5jZQpldmVyeWJvZHkgd2FzIGFibGUgdG8g
ZG8gZmlsbCB0aGVpciBwaXBlIHdpdGggMTUwMCBieXRlcyBwYWNrZXRzLApiZW5jaG1hcmtzIGhh
dmUgbW92ZWQgdG8gdW5yZWFsaXN0aWMgNjQgYnl0ZXMgcGFja2V0cyAoc28gY2FsbGVkCndpcmVz
cGVlZCkKCklmIHlvdSBkb24ndCBoYXZlIGhhcmR3YXJlIGFjY2VsZXJhdGlvbiBmb3IgZm9yd2Fy
ZGluZywgeW91IGRvbid0CmV4aXN0IGluIHRob3NlIGJlbmNobWFya3MgYW5kIHdpbGwgbm90IHNl
bGwgeW91ciBjaGlwc2V0LiBBbHNvIHRoZXkKaW52ZXN0ZWQgc28gbXVjaCBpbiB0aGVpciBhbHRl
cm5hdGl2ZSBuZXR3b3JrIHN0YWNrIHRoYXQgaXQncwpkaWZmaWN1bHQgdG8gc3RvcCAoaHVnZSBS
JkQgdGVhbXMpLiBUaGF0IGJlaW5nIHNhaWQsIHRoZXkgZG8gaGF2ZSBhCnBvaW50LCB3aGVuIHNw
ZWVkIGdvIGFib3ZlIDFHYml0L3MsIHRoZSBrZXJuZWwgYmVjb21lcyB0aGUgYm90dGxlbmVjay4K
CkZvciBGcmVlLmZyIDEwR2JpdC9zIG9mZmVyLCB3ZSBoYWQgdG8gZGV2ZWxvcCBhbiBhbHRlcm5h
dGl2ZQooc29mdHdhcmUpIGZvcndhcmRpbmcgcGF0aCB1c2luZyBwb2xsaW5nIG1vZGUgbW9kZWwg
KERQREsgc3R5bGUpLApvdGhlcndpc2Ugb3VyIGFsYmVpdCBwb3dlcmZ1bCBBUk0gQ29ydGV4IEE3
MkAyR2h6IGNvdWxkIG5vdCBmb3J3YXJkCm1vcmUgdGhhbiAyR2JpdC9zLgoKQW5kIGdvaW5nIG11
bHRpY29yZS9SU1MgZG9lcyBub3QgZmx5IHdoZW4gdGhlIHRlc3QgY2FzZSBpcyBzaW5nbGUKc3Ry
ZWFtIFRDUCBzZXNzaW9uLCB3aGljaCBpcyB3aGF0IG1vc3Qgc3BlZWR0ZXN0IGFwcGxpY2F0aW9u
IGRvIChvb2tsYQpvbmx5IHJlY2VudGx5IGFkZGVkIG11bHRpLWNvbm5lY3Rpb25zIHRlc3QpLgoK
LS0gCk1heGltZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
