Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1698632692D
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 22:09:10 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4F0363CB58;
	Fri, 26 Feb 2021 16:09:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614373746;
	bh=gCfNmRrqnQRRYuBhW/nYRYVholwzOq3Wzdb9mqbqsw4=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TZeA2wAeakdKIYsC2i/V/8OL5vRJLmSjoRpN/pjPnBMWhy8TSUej15Fn1phd38zGC
	 y9N7uGllxYdDb+OIOo4r94OspIM7WDiWUJsVtFqafoRYbuaQDFD6U7tLMwl/w0Oahh
	 bSk9Kj8iu2nOL1XAEAQW395JhGbdvVw6Xf08061RZJr6gokLc7XqFPTeZxrsqxVc7W
	 WHiUy1G944nc9/qrIKxEB8uoH+NlTZPJ29KCiiKx5a56Zh/7GFmqIWhP7lGpyDArgL
	 wWVSNFCQiM95+1g+LtDn4qv+QbnQUi5Sp1ccPqazleXq2DdGw3PeJWrJJvHV9o4wno
	 RfOCnA83BOOWA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from iramx2.ira.uni-karlsruhe.de (iramx2.ira.uni-karlsruhe.de
 [IPv6:2a00:1398:2::10:81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8D9753B29E;
 Fri, 26 Feb 2021 12:50:41 -0500 (EST)
Received: from [2a00:1398:2:4006:f46f:aa70:3331:cc14]
 (helo=i72vorta.tm.kit.edu)
 by iramx2.ira.uni-karlsruhe.de with esmtpsa port 25 
 iface 2a00:1398:2::10:8 id 1lFhGB-0005qg-LE; Fri, 26 Feb 2021 18:50:39 +0100
Received: from [IPv6:::1] (localhost [127.0.0.1])
 by i72vorta.tm.kit.edu (Postfix) with ESMTPS id 57798420299;
 Fri, 26 Feb 2021 18:50:39 +0100 (CET)
To: Sebastian Moeller <moeller0@gmx.de>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
 <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
 <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
 <87wnuw1luc.fsf@toke.dk> <86692246-90d3-4b5b-bcb3-5a67a29d67f7@lochnair.net>
 <87mtvryrsi.fsf@toke.dk> <7513975f-9fba-f036-2037-f901e6c29af1@lochnair.net>
 <539a80fd-46d5-c373-a379-0c7b127714a2@kit.edu>
 <C6C74E08-8727-4695-8B01-C1FCDC5A33AF@gmx.de>
From: "Bless, Roland (TM)" <roland.bless@kit.edu>
Organization: Institute of Telematics, Karlsruhe Institute of Technology (KIT)
Message-ID: <913fe453-2644-558f-dc5e-585589555d91@kit.edu>
Date: Fri, 26 Feb 2021 18:50:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <C6C74E08-8727-4695-8B01-C1FCDC5A33AF@gmx.de>
Content-Language: en-US
X-ATIS-AV: ClamAV (iramx2.ira.uni-karlsruhe.de)
X-ATIS-Checksum: v3zoCAcc32ckk
X-ATIS-Timestamp: iramx2.ira.uni-karlsruhe.de  esmtpsa 1614361839.715104261
X-Mailman-Approved-At: Fri, 26 Feb 2021 16:09:04 -0500
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgU2ViYXN0aWFuLAoKT24gMjYuMDIuMjEgYXQgMTg6MTQgU2ViYXN0aWFuIE1vZWxsZXIgd3Jv
dGU6Cj4gYXJlIHlvdSBzdXJlIHRoYXQgQkJSdjIgYWN0dWFsbHkgZXZhbHVhdGVzIENFIG1hcmtz
IGFuZCByZXNwb25kcyB0byB0aGVtPyBBcyBmYXIgYXMgSSB1bmRlcnN0b29kLCBCQlIgaXMgc2lt
cGx5IG5vdCByZmMzMTY4IGNvbXBsaWFudCwgdGhlcmUgd2FzIHNvbWUgdGFsayBhYm91dCB0ZWFj
aGluZyBCQlJ2Misgc29tZSBzdGlsbCB0byBiZSBkZWZpbmVkIGhpZ2ggZnJlcXVlbmN5IChsb3cg
YW1wbGl0dWRlKSBFQ04gc2lnbmFsaW5nLgpBRkFJSywgQkJSdjIgcmVhY3RzIG5vdCBpbiBhbiBS
RkMzMTY4IGNvbXBsaWFudCAoY2xhc3NpYykgbWFubmVyLCBidXQgCm1vcmUgaW4gYSBEQ1RDUCBz
dHlsZSBtYW5uZXIuCj4gVGhlIHRoaW5nIEkgZmFpbCB0byB1bmRlcnN0YW5kIGlzLCB3aHkgQkJS
IHdpdGggaXRzIGNhdmFsaWVyIGFwcHJvYWNoIHRvIGRyb3BzIGRpZCBub3QgZ3JvdyBFQ04gc3Vw
cG9ydCBvbiBkYXkgb25lLiBXaGlsZSBhIGRyb3AgY291bGQgaGF2ZSBhIGxvdCBvZiByZWFzb25z
LCBpbmNsdWRpbmcgdHJhbnNpZW50L3N0cmF5IHdpZmkgbG9zc2VzLCBhIENFIG1hcmsgaXMgbGVz
cyBhbWJpZ3VvdXMuClllcywgaXQgaXMuIEJ1dCBhcyBJIHVuZGVyc3RhbmQgdGhlIG1vdGl2YXRp
b24gZm9yIEJCUidzIGRlc2lnbiwKdGhleSBkbyBub3Qgd2FudCB0byBzYWNyaWZpY2UgdGhyb3Vn
aHB1dCBpbiBjYXNlIG9mIG5vbi1jb25nZXN0aW9uIGxvc3Nlcy4KSWYgeW91IHJlYWQgdGhlIG9y
aWdpbmFsIEJCUiBwYXBlciwgb25lIG9mIGl0cyBtb3RpdmF0aW9ucyB3YXMgaXRzIHVzZSAKaW4g
QjQsCndoZXJlIEdvb2dsZSBvcGVyYXRlcyBzaGFsbG93LWJ1ZmZlcmVkIHN3aXRjaGVzLiBCZWNh
dXNlIG9mIHRoZWlyIHNtYWxsIApidWZmZXIgc2l6ZSwKdGhleSB3aWxsIGNhdXNlIG9jY2FzaW9u
YWwgcGFja2V0IGxvc3NlcyBkdWUgdG8gb2NjdXJyaW5nIHNob3J0LXRlcm0gCnRyYWZmaWMKYWdn
cmVnYXRpb24gZWZmZWN0cywgd2hpY2ggYXJlIGRpZmZlcmVudCBmcm9tIHBlcnNpc3RlbnQgY29u
Z2VzdGlvbi4KCkEgdHJhZGl0aW9uYWwgUkVELWJhc2VkIEFRTSBtYXkgYWxzbyBnZW5lcmF0ZSBD
RSBtYXJrcyBpbiB0aGlzCmNhc2UgYW5kIHRoZSAic3Ryb25nIiBiYWNrb2ZmIG1heSBjb3N0IHRv
byBtdWNoIHV0aWxpemF0aW9uIGluIHRoZSBlbmQKKGVzcC4gaWYgeW91IGNvbnNpZGVyIDEwMCtH
Yml0L3MgbGlua3MpLCBzbyB0aGUgRENUQ1Agc3R5bGUgaXMgbXVjaCBtb3JlCnNjYWxhYmxlIGlu
IHRoaXMgcmVzcGVjdC4KClJlZ2FyZHMsCiDCoFJvbGFuZAoKPj4gT24gRmViIDI2LCAyMDIxLCBh
dCAxNzo1OSwgQmxlc3MsIFJvbGFuZCAoVE0pIDxyb2xhbmQuYmxlc3NAa2l0LmVkdT4gd3JvdGU6
Cj4+Cj4+IEhpLAo+Pgo+PiBPbiAyNi4wMi4yMSBhdCAxNjoyNyBOaWxzIEFuZHJlYXMgU3ZlZSB3
cm90ZToKPj4+IE9uIDIvMjYvMjEgMTI6NDcgUE0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPj4+PiBZZWFoLCB0aGVyZSB3b3VsZCBoYXZlIHRvIGJlIHNvbWUga2luZCBvZiBwcm9i
aW5nIHRvIGRpc2NvdmVyIHdoZW4gdGhlCj4+Pj4gYmFuZHdpZHRoIGdvZXMgdXAgKG1heWJlIHNv
bWV0aGluZyBsaWtlIHdoYXQgQkJSIGRvZXM/KS4gV29ya2luZyBvdXQgdGhlCj4+Pj4gZGV0YWls
cyBvZiB0aGlzIGlzIHN0aWxsIGluIHRoZSBmdXR1cmUsIHRoaXMgaXMgYWxsIGp1c3QgbG9vc2Ug
cGxhbnMKPj4+PiB0aGF0IEknbGwgdHJ5IHRvIGdldCBiYWNrIHRvIG9uY2Ugd2UgaGF2ZSB0aGUg
bWVhc3VyZW1lbnQgdG9vbCB3b3JraW5nCj4+Pj4gcmVhc29uYWJseSB3ZWxsLiBJbnB1dCBhbmQg
ZXhwZXJpbWVudHMgd2VsY29tZSwgb2YgY291cnNlIQo+Pj4gSSd2ZSBrZXB0IHRvIG1haW50YWlu
aW5nIENBS0UgYmluYXJpZXMgZm9yIHRoZSBFZGdlUm91dGVycywgc28gSSBoYXZlIGEgbG90IHRv
IHJlYWQgdXAgb24gaWYgSSdtIGdvbm5hIHRha2UgYSBzdGFiIGF0IHRoaXMsIHNob3VsZCBiZSBm
dW4gdGhvdWdoIDopCj4+PiBJJ2xsIGhhdmUgYSBsb29rIGF0IGhvdyBCQlIgZG9lcyBpdCwgYW5k
IHNlZSBpZiBJIGNhbid0IGZpZ3VyZSBvdXQgaG93IHRoYXQgd29ya3MgYXQgbGVhc3QuCj4+IEJC
UiBpbmNyZWFzZXMgaXRzIHNlbmRpbmcgcmF0ZSBhbmQgbG9va3Mgd2hldGhlciB0aGUgZGVsaXZl
cnkgcmF0ZQo+PiBpbmNyZWFzZXMuIEl0IGFzc3VtZXMgdGhhdCB0aGUgYm90dGxlbmVjayBsaW1p
dCBoYXNuJ3QgYmVlbiByZWFjaGVkCj4+IGluIGNhc2UgdGhlIGRlbGl2ZXJ5IHJhdGUgc3RpbGwg
aW5jcmVhc2VzLiBUaGlzIGlzIGNlcnRhaW5seSB0cnVlIHdoZW4KPj4gaXQgaXMgdGhlIG9ubHkg
ZmxvdyBhdCB0aGUgYm90dGxlbmVjaywgYnV0IG5vdCB0cnVlIHdoZW4gbXVsdGlwbGUKPj4gZmxv
d3MgYXJlIHByZXNlbnQgKHRoZSBwcm9iaW5nIGZsb3cgbWF5IHNpbXBseSBzdGVhbCBvdGhlciBm
bG93cycKPj4gc2hhcmVzIGFkbiB0aHVzIGdldCBhIGhpZ2hlciBkZWxpdmVyeSByYXRlIG5ldmVy
dGhlbGVzcykuCj4+IEJCUnYyIGF0IGxlYXN0IGNoZWNrcyBmb3IgcGFja2V0IGxvc3MgYW5kIEVD
Tgo+PiBzaWduYWxzIGFuZCBkZXRlY3RzIHdoZW4gaXQgaGl0cyBhIGhhcmQgbGltaXQuIE9uZSBj
b3VsZCB0cnkgdG8KPj4gZGV0ZWN0IGEgY29ycmVsYXRlZCBpbmNyZWFzZSBpbiBSVFQgd2hlbiBw
cm9iaW5nIGZvciBtb3JlIGJhbmR3aWR0aAo+PiBhbmQgdGhlbiBzdG9wLCBiZWNhdXNlIGl0IHNl
ZW1zIHRoYXQgdGhlIHF1ZXVlIGlzIGZpbGxlZCBieSB0aGUKPj4gaW5jcmVhc2VkIHByb2Jpbmcg
cmF0ZS4gSG93ZXZlciwgZ2V0dGluZyB0aGF0IHJlbGlhYmx5IGRldGVjdGVkIG91dCBvZgo+PiB0
aGUgUlRUIG1lYXN1cmVtZW50IG5vaXNlIGlzIHNvbWV0aW1lcyBkaWZmaWN1bHQuCj4+Cj4+IFJl
Z2FyZHMsCj4+IFJvbGFuZAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBCbG9hdCBtYWlsaW5nIGxpc3QKPj4gQmxvYXRAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cj4+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
