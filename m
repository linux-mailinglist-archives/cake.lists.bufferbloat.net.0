Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F2031F942
	for <lists+cake@lfdr.de>; Fri, 19 Feb 2021 13:16:56 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6E6823CB38;
	Fri, 19 Feb 2021 07:16:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613737015;
	bh=YJynRbJZJvy6I3SL7ZqFTaFYws0cqMJqOEs0EAKP1lA=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qm65b9yzFPP7jNFzKuynPV3TU1KL/fUW7vUIK8+Lse59eAEk41GUaljeEgCEoaYhg
	 BNOOTEVhsO6vdrdR5XxmukRa1hv/tUnyNH1U8mcN6Nmjs73Aaz54+fxm0rx12qKA/B
	 cqWrgvFChYDV5kUQM4xnKnBR0ik0xuaNxNMsOn5COcoprPHhZefXP2uJheY7a9c0dk
	 GwviSsYQijpE2+9jM7OV3zdXAwqZkqqkbNPZIpBe4vG7kwW33DRrhGdeOWyUnmGh/W
	 egklrbXfc1Jyw6WCRQKye5bEqbcrfuxUSBSKI3cX5IAVOF7gaD8iTQjIl7/0LUUHZz
	 hvcWM23fDlVWg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail50c50.megamailservers.eu (mail152c50.megamailservers.eu
 [91.136.10.162])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6DF133B2A4
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 07:16:53 -0500 (EST)
X-Authenticated-User: sagermail@sager.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1613737012;
 bh=kfvby+2Y+7cwOx9L4S+VAbYcVYmNekFeL8HwPSDFHcs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=iguITJ+k7iM/cy8XA9ttweAIvUH3Wkmx/vqbUWfxjk5wnIXr+hD+FHwndel7PjMts
 jLvK04EP+o5mOY6URd0CHScaEDFgCjUj/iqZtaEAKfQMzbC+MZ8gPMo/FBodie2drR
 UualKBr08M25KmgaxwxPOaWLP174c4S1ETxuN+GU=
Feedback-ID: john@sager.me.u
Received: from mainserver.wc (97.83.2.81.in-addr.arpa [81.2.83.97])
 (authenticated bits=0)
 by mail50c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 11JCGoMl011469
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 12:16:52 +0000
Received: from
 1.4.7.2.4.7.8.0.a.e.2.c.c.0.5.d.0.0.0.0.3.e.b.c.0.b.8.0.1.0.0.2.ip6.arpa
 ([2001:8b0:cbe3:0:d50c:c2ea:874:2741])
 by mainserver.wc with esmtp (Exim 4.93)
 (envelope-from <john@sager.me.uk>) id 1lD4iH-000fpV-QP
 for cake@lists.bufferbloat.net; Fri, 19 Feb 2021 12:16:49 +0000
To: cake@lists.bufferbloat.net
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk>
From: John Sager <john@sager.me.uk>
Message-ID: <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
Date: Fri, 19 Feb 2021 12:16:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87im6pkweq.fsf@toke.dk>
Content-Language: en-GB
X-CTCH-RefID: str=0001.0A742F21.602FAC34.000B:SCFSTAT79219218, ss=1, re=-4.000,
 recu=0.000, reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: -4.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=UMej4xXy c=1 sm=1 tr=0 a=dws6IJh5fU+Ftmrx3Eq8JA==:117
 a=dws6IJh5fU+Ftmrx3Eq8JA==:17 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=qa6Q16uM49sA:10 a=pGLkceISAAAA:8 a=kurRqvosAAAA:8
 a=0Q0sQSjteLhxM33pYEsA:9 a=QEXdDO2ut3YA:10 a=kbxRQ_lfPIoQnHsAj2-A:22
X-Origin-Country: GB
Subject: Re: [Cake] Enforcing video quality question
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhhdCdzIGJhc2ljYWxseSB3aGF0IEkgZG8uIEkgc2V0IG1hcmtzIG9uIG91dGdvaW5nIHRyYWZm
aWMgaW4gdGhlIG1hbmdsZSAKdGFibGUgd2hpY2ggYXJlIGNvcGllZCB0byBjb25ubWFyayBiZWZv
cmUgZWdyZXNzLiBUaGVuIG9uIGluZ3Jlc3MgdGhlIApjb25ubWFyayBpcyByZXN0b3JlZCB0byB0
aGUgcGFja2V0IGFuZCBwdW50ZWQgdG8gaWZiMCB1c2luZyAnYWN0aW9uIGNvbm5tYXJrIAphY3Rp
b24gbWlycmVkIGVncmVzcyByZWRpcmVjdCBkZXYgJElGQicgYXMgYW4gaW5ncmVzcyBmaWx0ZXIg
b24gdGhlIGluY29taW5nIAppbnRlcmZhY2UgKHBwcDAgaW4gbXkgY2FzZSkuIFRoZW4gSSBoYXZl
IEhUQiBjbGFzc2VzIG9uIGlmYjAgd2hpY2ggc2V0IHJhdGUgCmxpbWl0cyBmb3IgZGlmZmVyZW50
IHRyYWZmaWMgY2xhc3NlcyBpbmRpY2F0ZWQgYnkgdGhlIG1hcmtzLiBJIGhhdmUgb25seSA2IAp0
cmFmZmljIGNsYXNzZXMgKEkgYnVuZGxlIGFsbCB2aWRlbyBpbnRvIG9uZSBjbGFzcyksIGJ1dCBh
cyBtYXJrcyBhcmUgMzIgCmJpdHMgd2lkZSB0aGVyZSBpcyBsb3RzIG9mIHNjb3BlIGZvciBjbGFz
c2VzIGZvciBpbmRpdmlkdWFsIElQIGFkZHJlc3Nlcy4KCkpvaG4KCk9uIDE4LzAyLzIwMjEgMTk6
MjgsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB2aWEgQ2FrZSB3cm90ZToKPiBQZXRlciBMZXBl
c2thIDxiaXp6YnlzdGVyQGdtYWlsLmNvbT4gd3JpdGVzOgo+IAo+PiBBIHVzZXIgb24gdGhlIE9w
ZW5XcnQgZm9ydW0gc3VnZ2VzdGVkIGhhc2hsaW1pdCBydWxlcyBzdXBwb3J0ZWQgYnkKPj4gaXB0
YWJsZXMuIEhvdyBkb2VzIHRoYXQgaWRlYSBzb3VuZCB0byB5b3U/Cj4gCj4gVGhhdCB3aWxsIHJl
c3VsdCBpbiBhIGNsaWZmLWVkZ2UgcG9saWNlciAoaS5lLiwgYXMgc29vbiBhcyBhIGRldmljZSBn
b2VzCj4gb3ZlciBpdHMgbGltaXRzIGl0IHdpbGwgc2VlIGV2ZXJ5IHBhY2tldCBnZXQgZHJvcHBl
ZCkuIFRoaXMgZG9lc24ndAo+IGludGVyYWN0IHRvbyB3ZWxsIHdpdGggdGhlIGJ1cnN0aW5lc3Mg
b2YgVENQLCBzbyB5b3UnbGwgbGlrZWx5IGdldAo+IGVycmF0aWMgYmVoYXZpb3VyIG9mIHRoZSB0
cmFmZmljIGlmIHlvdSBkbyB0aGF0LiBEb2luZyB0aGUgc2FtZSB0aGluZwo+IHdpdGggSFRCIG1l
YW5zIHRoZSByb3V0ZXIgd2lsbCBxdWV1ZStzaGFwZSBlYWNoIGNsYXNzIChhbmQgd2l0aCBGUS1D
b0RlbAo+IG9uIHRoZSBsZWF2ZXMsIHlvdSdsbCBnZXQgYSBuaWNlIEFRTSBiZWhhdmlvdXIgYXMg
d2VsbCksIHNvIHRoYXQgd2lsbCBiZQo+IHNtb290aGVyIGFuZCBsZXNzIHByb25lIHRvIGJsb2F0
IDopCj4gCj4gLVRva2UKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCj4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK
