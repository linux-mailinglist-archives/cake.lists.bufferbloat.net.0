Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 52005B60E7
	for <lists+cake@lfdr.de>; Wed, 18 Sep 2019 11:59:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4A0D03CB3A;
	Wed, 18 Sep 2019 05:59:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568800764;
	bh=4jzogfaAytPX5T74DF0dyBB6UhyqOAWGr/+FM5jQWtI=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aPlmz7xzo50vzAOhe+Q8QCnzgQbwEl46pWDgXR59i0rHuK64LwR5LcUxzILVYRAc0
	 /KnVKmEchqx1tyddbaVSidILsCVDlHFe0IRkfjm4dK3pknw24873b6FSy/SKLAInkB
	 rN/1AN+lPCPBzY72KsoIe0Gu+fp+Gzcxyn5joHktKSE77v+OVm21G6ZRhyRVLhXIMv
	 YSaedZ9cTJT+D/l4Iiu80UEynstf8Aw80zCrxBdax2/1rQZ8Y4nle2JgpPSQMHHz/1
	 qfoXBUdW29iP9OfvIlCAUlSgE5IWFBUCD3XafYjujixIxoXIQj7vliuQgrwYrlch1m
	 y1F86a/Qd++2A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5B50D3B29E
 for <cake@lists.bufferbloat.net>; Wed, 18 Sep 2019 05:59:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=EexhzLGQ8mq+Z4dFDNzd4r8UGgMnwjEiAzq9/sYxZHI=; 
 b=zZElxEENiesxttcFb0Pq+nNxTwjFQmKLS64Krlk5i2DxWtIPrOYSHScHx3EEwEtgRy1aHSdzIaJavTdLLnMcYrI8wPJXgIqeC01BbR6aTzdllgfKUVhaHM3ca1pG7wLLy2QdW/s2okzu4qePk6BdTo6AAIapJvMVXOTsuDn4WWA=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <878sqomoj4.fsf@toke.dk>
 <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
 <87h85cl4qk.fsf@toke.dk>
 <edee31d8-aa60-28d2-be83-38c85f1f0e6d@newmedia-net.de>
 <87r24fjm60.fsf@toke.dk>
 <3449acf8-e700-6b50-544f-b272165ad0e6@newmedia-net.de>
 <877e66hqvd.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <342e4751-4c8c-1ebd-2862-6216f52c621e@newmedia-net.de>
Date: Wed, 18 Sep 2019 11:57:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <877e66hqvd.fsf@toke.dk>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iAWkC-00080i-9b; Wed, 18 Sep 2019 11:59:28 +0200
Subject: Re: [Cake] cake memory consumption
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

CkFtIDE4LjA5LjIwMTkgdW0gMTE6NTMgc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46
Cj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdy
aXRlczoKPgo+PiB0aGUgcHJvYmxlbSBpcy4gaSB0ZXN0ZWQgcmVzdHJpY3RpbmcgdGhlIG1lbW9y
eSB0byA0IG1iLiBidXQgaXQgc3RpbGwKPj4gcnVucyBvb20uIHNhbWUgbWVtb3J5IGNvbnN1bXB0
aW9uIGFuZCBmcm9tIHRoZSBxZGlzYyBzaG93IG91dHB1dCBpIGFsc28KPj4gc2VlIHRoYXQganVz
dCBhIGZldyBraWxvYnl0ZXMgYXJlIHVzZWQgaW4gdGhhdCBwb29sLgo+PiBzbyB0aGUgcHJvYmxl
bSB3aXRoIGNha2UgbXVzdCBiZSBzb21ld2hlcmUgZWxzZS4gaXRzIG5vdCB0aGUgYnVmZmVyCj4+
IGxpbWl0LiBpIHNlZSB2YWx1ZXMgbGlrZSBtZW1vcnkgdXNlZDogMjIxNzZiIG9mIDRNYiB3aGlj
aCBpcyByZWFsbHkKPj4gbm90aGluZy4gbW9zdCBxZGlzY3MgYXJlIDAgYW5kIHVudXNlZCBpbiB0
aGF0IHNldHVwCj4gSG1tLCB0aGF0IGRvZXMgc291bmQgb2RkLiBBcmUgeW91IHNlZWluZyB0aGUg
InRvdGFsIHVzZWQgbWVtb3J5IiBnbyB1cAo+IGFzIHNvb24gYXMgeW91IGxvYWQgdGhlIHFkaXNj
cyAod2l0aG91dCBhbnkgdHJhZmZpYyk/CndpdGhvdXQgdHJhZmZpYyBub3RoaW5nIGhhcHBlbnMu
IHNvIGl0IGdyb3dzIG9ubHkgb24gdHJhZmZpYyBiYXNlLgo+Cj4gRG9lcyB0aGUgbWVtb3J5IGRy
b3AgZG93biBhZ2FpbiBpZiB5b3UgY2xlYXIgdGhlIHFkaXNjIGNvbmZpZyBhbmQgZ28KPiBiYWNr
IHRvIGFuIGZxX2NvZGVsLWJhc2VkIG9uZT8KYWNjb3JkaW5nIHRvIHRoZSByZXBvcnRlciB5ZXMu
IG5vdCBzdXJlLiBtYXliZSBpdHMganVzdCBhIGlzc3VlIHdpdGhlIAp0aGUgb3V0IG9mIHRyZWUg
Y2FrZSB2YXJpYW50IG9uIHRoYXQgc3BlY2lmaWMga2VybmVsLiBuZWVkIHRvZG8gbW9yZSAKcmVz
ZWFyY2ggaGVyZQo+Cj4gLVRva2UKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
