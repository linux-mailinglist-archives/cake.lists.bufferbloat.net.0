Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CA79E39D12A
	for <lists+cake@lfdr.de>; Sun,  6 Jun 2021 21:59:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6A4623CB38;
	Sun,  6 Jun 2021 15:59:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1623009563;
	bh=QjD+7USsJGfgW8k/wxpD11A90WpdIiZABGOPyZ3Vzws=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=ffelCir0Al0GgaXIDBSlG7yilfC34zv1B7eoXAWaLs6G5Rox9BlSSFzYEph041bme
	 X87q/wTm9x/sfYp8Rr8yxmyERjVkMNimS2uWB3oXgBgvHQHFa2mF81jledXNOhd8fz
	 u0N5AhOof0kUWD3IaHEEBytG5zu+frU8j4teTdV0jHuRQl0+ASan1vWs4ydnfk6nfq
	 hHWId9Y5x3wtCRJOJjoBU2olOP2lSXKXtH7xXaa31eqPFbrZ+XcYWyH7VhzUSwUmlH
	 pxa5qFK8c1dIifHJ4T/MNGgX/ex65JITkxHzDxLE/tIx0mVv4tueFJj20yRb72zckw
	 5YAyRvn03VNeg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E10353B29E
 for <cake@lists.bufferbloat.net>; Sun,  6 Jun 2021 15:59:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1623009556; bh=QQyMty9p7UvYmyTJbGwTZ3kcu3JLe3ulbl49ms+bDDo=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=vEjUaxfSx+1TcyL55VXtcOPIXzwksYNBJ+wF49zG6cdc+PGkWLrABezYU8Y3zNVP3
 gG6tIJ4GioGF2l+vEi/NNLnwYMHoMOZqxtnbnyBj/yKhgdqyifz/9OD3hneGyj/Ivr
 pi+CbXx+xZGFORwm7sLjKPRe/jSsesHJP1ZReDJnOshQN3gBlZ8bWIPYtJxamSBHDQ
 6qnGWobJxQHgiQDjGlWdrvjl2/BUCC+tvammxQskNqvMDoQ/doA0axHMA7bL42ejBN
 ou+O2CO/QWecvodqNm8cRvycveoxOGat0Dqa6rthwaTFDbhkfn2fmsRZeRma0BBEDl
 EJmvQt6x/Qp5w==
To: Pete Heist <pete@heistp.net>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <22f3032d0dfd47f53d4d6595ee6bd192377fbc6e.camel@heistp.net>
References: <22f3032d0dfd47f53d4d6595ee6bd192377fbc6e.camel@heistp.net>
Date: Sun, 06 Jun 2021 21:59:14 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87h7iawyr1.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] customizing Cake's isolation with ipsets,
	tc-flow and eBPF
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

UGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cgo+IEkndmUgYWx3YXlzIHdhbnRl
ZCBhIHdheSB0byBjdXN0b21pemUgQ2FrZSdzIGhvc3QgYW5kIGZsb3cgaXNvbGF0aW9uIGluCj4g
YSB3YXkgdGhhdCB3b3VsZCBiZSB1c2FibGUgZS5nLiBmb3Igc21hbGwgSVNQcywgYW5kIHRoaXMg
aXMgd2hhdCBJIGNhbWUKPiB1cCB3aXRoOgo+Cj4gaHR0cHM6Ly9naXRodWIuY29tL2hlaXN0cC9j
YWtlLWN1c3RvbS1pc29sYXRpb24KPgo+IGlwc2V0cyBhcmUgdXNlZCB0byBzZXQgdGhlIHNrYiBw
cmlvcml0eSBvciBtYXJrLCB0aGVuIHRjLWZsb3cgb3IgYQo+IHNpbXBsZSBlQlBGIGNsYXNzaWZp
ZXIgaXMgdXNlZCBpbiBhIGNoaWxkIGZpbHRlciBvZiBjYWtlIHRvIGdldCB0aGUKPiBtYWpvciBh
bmQgbWlub3IgY2xhc3MgSURzIHNldCwgd2hpY2ggb3ZlcnJpZGUgdGhlIGhvc3QgYW5kIGZsb3cg
aGFzaGVzLgoKVmVyeSBjb29sISBBd2Vzb21lIHRvIHNlZSB0aGUgY3VzdG9taXNhdGlvbiBvcHRp
b25zIGJlaW5nIHVzZWQgZm9yCnNvbWV0aGluZyBuZWF0IGxpa2UgdGhpcyEgOikKCj4gVG8gc2hv
dyBpdCBpbiBhY3Rpb24sIHRoZSBjYWtlaXNvLnNoIHNjcmlwdCBzZXRzIHVwIGEgbmV0bnMgZW52
aXJvbm1lbnQKPiBhbmQgcnVucyBjb21wZXRpdGlvbiBiZXR3ZWVuIHR3byAic3Vic2NyaWJlcnMi
IGFuZCB0aHJlZSBmbG93cywgdHdvIFRDUAo+IGZsb3dzIGFuZCBvbmUgdW5yZXNwb25zaXZlIFVE
UCBmbG93LiBTZXZlcmFsIGNvbmZpZ3VyYXRpb25zIGFyZSBydW4gdG8KPiBzaG93IHdoYXQgaXMg
YW5kIGlzbid0IHBvc3NpYmxlLgo+Cj4gSWYgYW55b25lIGtub3dzIG9mIGEgc2ltcGxlciB3YXkg
dGhhbiBlQlBGIHRvIGdldCBib3RoIHRoZSBtYWpvciBhbmQKPiBtaW5vciBjbGFzcyBJRCBzZXQg
ZnJvbSBpcHNldHMsIEknZCBsaWtlIHRvIGhlYXIgaXQsIGJ1dCB0aGUgaW5jbHVkZWQKPiBjbGFz
c2lmaWVycyBhcmUgYXQgbGVhc3QgdmVyeSBzaW1wbGUgb25lLWxpbmVycy4uLgoKV2VsbCwgeW91
IGNvdWxkIGdvIHRoZSBvdGhlciB3YXk/IEluc3RlYWQgb2YgaXBzZXQsIGp1c3QgZG8gdGhlCmNs
YXNzaWZpY2F0aW9uIGluIGVCUEYgYW5kIHVzZSBhIEJQRiBtYXAgdG8gc3RvcmUgdGhlIElQIGFk
ZHJlc3Nlcy4KVGhlcmUncyBldmVuIGFuIExQTSBtYXAgdHlwZSwgc28geW91IGNhbiB1c2UgYXJi
aXRyYXJ5IHByZWZpeCBsZW5ndGhzCmZvciBlYWNoIGNsYXNzIChvciBub3QsIGFuZCBqdXN0IHVz
ZSBhIGhhc2htYXApLi4uCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
