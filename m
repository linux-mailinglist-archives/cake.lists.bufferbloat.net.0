Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A789F32692C
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 22:09:08 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 330683CB54;
	Fri, 26 Feb 2021 16:09:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614373746;
	bh=XiFSFQqhweAZEOpTniTTwerP6DuquXLVqSAbIpzyFH8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RppDb0wGOX1L7lDm58FXE6Qlv/trSvxPEE1Xz3YMw5EGJ1W6FLyE7aGDGOidRbEPb
	 V8Ior5Ife5Bd51xS+0VHLmvNJBW4KOelv66nuu5Rd+eQ1dVFZG1E5B/XAtIHPFsccp
	 cgsyBkIG3TiW1/43xA2Wg+8AbJGxOz1279Fvy5dmiWvSF5G4EpsPkcb5T+0w5wHDeQ
	 XeBdIiIC0XJpWZ8s8zWEbmTIHIhRuK+tyo82umO3oIi9tOq1EXg5+gDBd+m0NJrcbQ
	 v7KAnImosI07YB8//ME7FOB8HtC8k53Esh0XojmBXOvj8LlmFix612tc2XVIK77EFd
	 vfhpx9b/0eK5w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from iramx2.ira.uni-karlsruhe.de (iramx2.ira.uni-karlsruhe.de
 [IPv6:2a00:1398:2::10:81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3CC783B29E;
 Fri, 26 Feb 2021 11:59:25 -0500 (EST)
Received: from [2a00:1398:2:4006:f46f:aa70:3331:cc14]
 (helo=i72vorta.tm.kit.edu)
 by iramx2.ira.uni-karlsruhe.de with esmtpsa port 25 
 iface 2a00:1398:2::10:8 id 1lFgSX-0000yw-T8; Fri, 26 Feb 2021 17:59:21 +0100
Received: from [IPv6:::1] (localhost [127.0.0.1])
 by i72vorta.tm.kit.edu (Postfix) with ESMTPS id 7E383420299;
 Fri, 26 Feb 2021 17:59:21 +0100 (CET)
To: Nils Andreas Svee <me@lochnair.net>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hy?=
 =?UTF-8?Q?gensen?= <toke@toke.dk>, Dave Taht <dave.taht@gmail.com>
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
From: "Bless, Roland (TM)" <roland.bless@kit.edu>
Organization: Institute of Telematics, Karlsruhe Institute of Technology (KIT)
Message-ID: <539a80fd-46d5-c373-a379-0c7b127714a2@kit.edu>
Date: Fri, 26 Feb 2021 17:59:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <7513975f-9fba-f036-2037-f901e6c29af1@lochnair.net>
Content-Language: en-US
X-ATIS-AV: ClamAV (iramx2.ira.uni-karlsruhe.de)
X-ATIS-Checksum: v3zoCAcc32ckk
X-ATIS-Timestamp: iramx2.ira.uni-karlsruhe.de  esmtpsa 1614358761.949523115
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
Cc: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGksCgpPbiAyNi4wMi4yMSBhdCAxNjoyNyBOaWxzIEFuZHJlYXMgU3ZlZSB3cm90ZToKPiBPbiAy
LzI2LzIxIDEyOjQ3IFBNLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4gCj4+IFll
YWgsIHRoZXJlIHdvdWxkIGhhdmUgdG8gYmUgc29tZSBraW5kIG9mIHByb2JpbmcgdG8gZGlzY292
ZXIgd2hlbiB0aGUKPj4gYmFuZHdpZHRoIGdvZXMgdXAgKG1heWJlIHNvbWV0aGluZyBsaWtlIHdo
YXQgQkJSIGRvZXM/KS4gV29ya2luZyBvdXQgdGhlCj4+IGRldGFpbHMgb2YgdGhpcyBpcyBzdGls
bCBpbiB0aGUgZnV0dXJlLCB0aGlzIGlzIGFsbCBqdXN0IGxvb3NlIHBsYW5zCj4+IHRoYXQgSSds
bCB0cnkgdG8gZ2V0IGJhY2sgdG8gb25jZSB3ZSBoYXZlIHRoZSBtZWFzdXJlbWVudCB0b29sIHdv
cmtpbmcKPj4gcmVhc29uYWJseSB3ZWxsLiBJbnB1dCBhbmQgZXhwZXJpbWVudHMgd2VsY29tZSwg
b2YgY291cnNlIQo+IAo+IEkndmUga2VwdCB0byBtYWludGFpbmluZyBDQUtFIGJpbmFyaWVzIGZv
ciB0aGUgRWRnZVJvdXRlcnMsIHNvIEkgaGF2ZSBhIAo+IGxvdCB0byByZWFkIHVwIG9uIGlmIEkn
bSBnb25uYSB0YWtlIGEgc3RhYiBhdCB0aGlzLCBzaG91bGQgYmUgZnVuIHRob3VnaCA6KQo+IAo+
IEknbGwgaGF2ZSBhIGxvb2sgYXQgaG93IEJCUiBkb2VzIGl0LCBhbmQgc2VlIGlmIEkgY2FuJ3Qg
ZmlndXJlIG91dCBob3cgCj4gdGhhdCB3b3JrcyBhdCBsZWFzdC4KQkJSIGluY3JlYXNlcyBpdHMg
c2VuZGluZyByYXRlIGFuZCBsb29rcyB3aGV0aGVyIHRoZSBkZWxpdmVyeSByYXRlCmluY3JlYXNl
cy4gSXQgYXNzdW1lcyB0aGF0IHRoZSBib3R0bGVuZWNrIGxpbWl0IGhhc24ndCBiZWVuIHJlYWNo
ZWQKaW4gY2FzZSB0aGUgZGVsaXZlcnkgcmF0ZSBzdGlsbCBpbmNyZWFzZXMuIFRoaXMgaXMgY2Vy
dGFpbmx5IHRydWUgd2hlbgppdCBpcyB0aGUgb25seSBmbG93IGF0IHRoZSBib3R0bGVuZWNrLCBi
dXQgbm90IHRydWUgd2hlbiBtdWx0aXBsZQpmbG93cyBhcmUgcHJlc2VudCAodGhlIHByb2Jpbmcg
ZmxvdyBtYXkgc2ltcGx5IHN0ZWFsIG90aGVyIGZsb3dzJwpzaGFyZXMgYWRuIHRodXMgZ2V0IGEg
aGlnaGVyIGRlbGl2ZXJ5IHJhdGUgbmV2ZXJ0aGVsZXNzKS4KQkJSdjIgYXQgbGVhc3QgY2hlY2tz
IGZvciBwYWNrZXQgbG9zcyBhbmQgRUNOCnNpZ25hbHMgYW5kIGRldGVjdHMgd2hlbiBpdCBoaXRz
IGEgaGFyZCBsaW1pdC4gT25lIGNvdWxkIHRyeSB0bwpkZXRlY3QgYSBjb3JyZWxhdGVkIGluY3Jl
YXNlIGluIFJUVCB3aGVuIHByb2JpbmcgZm9yIG1vcmUgYmFuZHdpZHRoCmFuZCB0aGVuIHN0b3As
IGJlY2F1c2UgaXQgc2VlbXMgdGhhdCB0aGUgcXVldWUgaXMgZmlsbGVkIGJ5IHRoZQppbmNyZWFz
ZWQgcHJvYmluZyByYXRlLiBIb3dldmVyLCBnZXR0aW5nIHRoYXQgcmVsaWFibHkgZGV0ZWN0ZWQg
b3V0IG9mCnRoZSBSVFQgbWVhc3VyZW1lbnQgbm9pc2UgaXMgc29tZXRpbWVzIGRpZmZpY3VsdC4K
ClJlZ2FyZHMsCiAgUm9sYW5kCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
