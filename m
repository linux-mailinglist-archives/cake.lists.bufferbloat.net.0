Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C9AC93B40
	for <lists+cake@lfdr.de>; Sat, 29 Nov 2025 10:25:06 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 147A39DF47E;
	Sat, 29 Nov 2025 10:25:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764408306;
	bh=u/VyKWLSkc+G4bLNkIE/tLupVGaQFpbrj4U9+LCim68=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=XNHGCSfIGP8iK4hUhgYeyLpHfweFZRe5MRZItQDbcRiNPo1StlyGlqecIYbYUjE1j
	 GKtTZSEDrDzNAC16IeGoobUAFI++H1ug9O+/fM1WswmFFuzMhOO/HuhTAuLiKvgWPt
	 /rXMaxqcGjp5pqOh3C6BtE+SnWnlttLV9XKfGOZtu/eH4GPyGTA27kR2LAe7W9pKMx
	 Z+pAFWamPsaJmqHvkY/CtDVMf3QkeB7ZXVbUCtkDgMTxg+tkvMywpKw83fP55tAiSE
	 eLUqP7VAD3vsUJz3yE3SW30p5WNdhEHk1TcEsbtPN/X5jXhwgEGy3ffkh4qbTubpAC
	 pywBBNFvCc+iQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764408305;
 b=lGiWn3zXoKho/ExebBQLFv3Y9VScsRVn39RB71xXB+ma0+fU16YiiC7iQZF9kQ6NwnIS7
 new+lKaJ0fluSCSXxXdyuAxcZ64EsVLttA2DxswGPE1xonQPKCKicy/mp2AKnf2JstgDj3g
 dI5+mGEL/B9G5p3BxkJpGlKtGBrPKVQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764408305; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=u/VyKWLSkc+G4bLNkIE/tLupVGaQFpbrj4U9+LCim68=;
 b=S3ttL3INnphGzIg69Y/IDNiCtcxw3hWMzpTxxi4Wuz7xRjxMlFWnXmt1I/J3+LxPAYBmS
 GE7Cw5BacDlBjRGvO763vRSTUcKrOUQmmAIYRTzWPcaOq/LXZc6cscN6DhHxr+86wrgqYsF
 BJPpiXZkY7w2aXwv38LI7NCE/3VZ9Oo=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764408304; bh=Tf5//QxJR4XA1hIgE7mbVxfMEhfaK/xP+lUkwqMEQtM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=FPiQ3SsLMUyCHuKxWSc7QToEB1ICfJpeWfwFbn0Yo3PPXFm7xrL52JtMnQSg9HM1l
	 ph5AI3Z4s3LTO8XL7mA9QcFemEY3EcRLwMEwtAEMi5HDAzlTTw7mmTEbghZ1zvVlRu
	 ucjHVc9fl+l1sXbGQh1SD7FwgwMctyEwSZFgygWoL/BxSpD0kjnhYFSGmZEoqD0r3H
	 eFHvOWw+GeVMTPfOcIRNyRvt1Pwifokuxag/DUCAFVfp3UO9FLR8HDbM+JhCxUYztD
	 nrIEdKVHdKORFYa+T6wfeTlMj4PDGE53TQX+x/ezaAiZadmjU7+jf26A2i7QrdrLWX
	 jkV6NeoOYZCzQ==
To: Jakub Kicinski <kuba@kernel.org>
Cc: Cong Wang <xiyou.wangcong@gmail.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Jiri Pirko <jiri@resnulli.us>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas =?utf-8?Q?K?=
 =?utf-8?Q?=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <20251128184852.7ceb3e72@kernel.org>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <aSiYGOyPk+KeXAhn@pop-os.localdomain> <87o6onb7ii.fsf@toke.dk>
 <20251128095041.29df1d22@kernel.org> <87cy51bxe1.fsf@toke.dk>
 <20251128184852.7ceb3e72@kernel.org>
Date: Sat, 29 Nov 2025 10:25:02 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <877bv9b381.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: HXFURMNRXKC2ICAOWTL5AY2FSSP6KIVT
X-Message-ID-Hash: HXFURMNRXKC2ICAOWTL5AY2FSSP6KIVT
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/877bv9b381.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOg0KDQo+IE9uIEZyaSwgMjgg
Tm92IDIwMjUgMjM6MzM6MjYgKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0K
Pj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOg0KPj4gPiBPbiBUaHUs
IDI3IE5vdiAyMDI1IDIwOjI3OjQ5ICswMTAwIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90
ZTogIA0KPj4gPj4gWWVhaDsgaG93IGFib3V0IEkgZm9sbG93IHVwIHdpdGggYSBzZWxmdGVzdCBh
ZnRlciB0aGlzIGhhcyBiZWVuIG1lcmdlZA0KPj4gPj4gaW50byBib3RoIHRoZSBrZXJuZWwgYW5k
IGlwcm91dGUyPyAgDQo+PiA+DQo+PiA+IFdoeSBpcyBpcHJvdXRlMiBhIGJsb2NrZXI/IEJlY2F1
c2UgeW91J3JlIG5vdCBzdXJlIGlmIHRoZSAiQVBJIiB3b24ndA0KPj4gPiBjaGFuZ2Ugb3IgYmVj
YXVzZSB5b3UncmUgd29ycmllZCBhYm91dCBOSVBBIG9yLi4gPyAgDQo+PiANCj4+IE5vLCBqdXN0
IHRoYXQgdGhlIHBhdGNoIHRoYXQgYWRkcyB0aGUgbmV3IHFkaXNjIHRvIGlwcm91dGUyIG5lZWRz
IHRvIGJlDQo+PiBtZXJnZWQgYmVmb3JlIHRoZSBzZWxmdGVzdHMgY2FuIHVzZSB0aGVtLiBXaGlj
aCB0aGV5IHdvbid0IGJlIHVudGlsIHRoZQ0KPj4ga2VybmVsIHBhdGNoZXMgYXJlIG1lcmdlZCwg
c28gd2UnbGwgaGF2ZSB0byBmb2xsb3cgdXAgd2l0aCB0aGUgc2VsZnRlc3RzDQo+PiBvbmNlIHRo
YXQgaGFzIGhhcHBlbmVkLiBJSVVDLCBhdCBsZWFzdCA6KQ0KPg0KPiBZb3UgY2FuIGFkZCBhIFVS
TCB0byB0aGUgYnJhbmNoIHdpdGggdGhlIHBlbmRpbmcgaXByb3V0ZTIgY2hhbmdlcw0KPiB3aGVu
IHlvdSBwb3N0IHRoZSBzZWxmdGVzdHMgYW5kIHdlJ2xsIHB1bGwgdGhlbSBpbiBOSVBBLCBvciBw
b3N0IA0KPiB0aGUgcGF0Y2hlcyBhdCB0aGUgc2FtZSB0aW1lIChqdXN0IG5vdCBpbiBvbmUgdGhy
ZWFkKS4NCg0KQWgsIGNvb2wuDQoNCkdpdmVuIHRoZSBsaWtlbHkgaW1wZW5kaW5nIG1lcmdlIHdp
bmRvdywgaG93IHdvdWxkIHlvdSBmZWVsIGFib3V0DQptZXJnaW5nIHRoaXMgc2VyaWVzIGFzLWlz
IGFuZCB0YWtpbmcgdGhlIHNlbGZ0ZXN0cyBhcyBhIGZvbGxvdy11cD8gV291bGQNCmJlIGtpbmRh
IG5lYXQgdG8gZ2V0IGl0IGluIHRoaXMgY3ljbGUgOikNCg0KLVRva2UNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
Y2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
