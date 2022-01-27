Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AA56349E690
	for <lists+cake@lfdr.de>; Thu, 27 Jan 2022 16:47:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F20023CB41;
	Thu, 27 Jan 2022 10:47:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643298450;
	bh=xSQERnBl9hzoJHMitLKveI4zaDNHQrncMheKHG7th5M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g/dUkg7LXh6LoObPFeCT/kbEZ/8AX9YhphIUDccq/B2OqnLT8OwUSq19DD8+kg8oU
	 pa+zBa/+AixgsnPTdZwiClo2Ogr8W2qFDNE6GnB1DHHgb+e32g0bipd+kTJFMP5cC/
	 yxNZc4vsc2NJH8TdHrNTA71ks2HCEzKh7tsK7/K6CB9DwhYqGwArgsJKrmP0gBi4n0
	 Wuyyg4vc7ZXGn2x/rF6D+dFcS0zYXTKiXSx+D5n5O8oRBNLC0bT/KMDpHkSrE2c7Zy
	 lr/Oe3GcMZf9H8Fc+W6CZqBXBvFHp3+WQVaPqs7WVL2kcXWnktS9+7rtmsxr0/6VMR
	 UFQx+r1yuip3w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ED5413B29E
 for <cake@lists.bufferbloat.net>; Wed, 26 Jan 2022 22:14:21 -0500 (EST)
Received: from [192.168.12.102] (unknown [159.196.94.94])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id CC3AD20129;
 Thu, 27 Jan 2022 11:14:14 +0800 (AWST)
Message-ID: <db81c2b5bd1fb2fb6410ce0d04e577bbff61ee1e.camel@codeconstruct.com.au>
From: Matt Johnston <matt@codeconstruct.com.au>
To: Sebastian Moeller <moeller0@gmx.de>, Toke
 =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Date: Thu, 27 Jan 2022 11:14:13 +0800
In-Reply-To: <242985FC-238B-442D-8D86-A49449FF963E@gmx.de>
References: <20220125060410.2691029-1-matt@codeconstruct.com.au>
 <87r18w3wvq.fsf@toke.dk> <242985FC-238B-442D-8D86-A49449FF963E@gmx.de>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 27 Jan 2022 10:47:28 -0500
Subject: Re: [Cake] [PATCH net] sch_cake: diffserv8 CS1 should be bulk
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
Cc: cake@lists.bufferbloat.net, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCAyMDIyLTAxLTI1IGF0IDEyOjU0ICswMTAwLCBTZWJhc3RpYW4gTW9lbGxlciB3cm90
ZToKPiAKPiBMRSgxKSBpcyB0aW4gMCB0aGUgbG93ZXN0Cj4gQ1MxKDgpIGlzIDEgc2xpZ2h0bHkg
YWJvdmUgTEUKPiBDUzAvQkUoMCkgaXMgMgo+IEFGMXggKDEwLCAxMiwgMTQpIGFyZSBhbGwgaW4g
dGluIDEgYXMgaXMgQ1MxCi4uLgo+IEp1c3QgYXMgZG9jdW1lbnRlZCBpbiB0aGUgY29kZToKPiAK
PiAgKgkJQm9nIFN0YW5kYXJkICAgICAgICAgICAgIChDUzAgZXRjLikKPiAgKgkJSGlnaCBUaHJv
dWdocHV0ICAgICAgICAgIChBRjF4LCBUT1MyKQo+ICAqCQlCYWNrZ3JvdW5kIFRyYWZmaWMgICAg
ICAgKENTMSwgTEUpCgpUaGUgZG9jdW1lbnRhdGlvbiBkb2Vzbid0IG1hdGNoIHRoZSBjb2RlIHRo
b3VnaC4gQWxtb3N0LCBidXQgaXQncyBvZmYgYnkgb25lLgpJIGNhbiBzdWJtaXQgYSBwYXRjaCBp
bnN0ZWFkIHRvIGNoYW5nZSB0aGUgZG9jcywgdGhvdWdoIGl0J3Mgbm90IGNsZWFyIHRoZQpkaXZl
cmdlbmNlIGJldHdlZW4gY29kZSBhbmQgZG9jcyB3YXMgaW50ZW5kZWQgaW4gdGhlIGZpcnN0IHBs
YWNlLgoKKGRpZmZzZXJ2OCBhbHNvIG5lZWRzIGEgZGVzY3JpcHRpb24gaW4gdGhlIGNha2UgbWFu
cGFnZSwgSSdsbCBzZW5kIGEgcGF0Y2gKZm9yIHRoYXQgb25jZSB0aGUgb3JkZXIgaXMgY2xhcmlm
aWVkKQoKQ2hlZXJzLApNYXR0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
