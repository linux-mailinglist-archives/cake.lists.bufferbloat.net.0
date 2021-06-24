Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 463BF3B324A
	for <lists+cake@lfdr.de>; Thu, 24 Jun 2021 17:07:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 259FA3CB59;
	Thu, 24 Jun 2021 11:07:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624547251;
	bh=Is6h4Em0e5F/ioE9n+WhWpwAAJbOFjpQZHQOXqsCcOM=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ixa7ULXg67gjx1Iv7TjPn7B9f//t5tKkWw6GTbRd0/fu/XM1GgKbbqktxc/X6G5iC
	 FWqbEdOnqFe3cS8iO9PEXKrPsP/WFyzG6AJfHzHCRzaL3os+tUXRDnOaJOeVA9M6Xz
	 psaEBYqVrR9zXtAjSaf6iaQ2Ch2LYKnUVVJZz5lE8Yepzomm3peqZRfZxD0wkOspu3
	 5i86y4oUVdRqA++LLBF+HdpKBCkwtNMI6MvpdVzlT8+svOonptrX5dJOYsyJJGCOeQ
	 9TGp3dMbzNEpWyxWErSl6jHDc58QW0nWedzqCYeSVYnHcyMzFhazBVnGAj4lHggJDv
	 GUhHStT9D12+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 996243B2A4
 for <cake@lists.bufferbloat.net>; Thu, 24 Jun 2021 11:07:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1624547245;
 bh=LE/sZWTGGNg2JH2eXuVIqB/oToRNy909TmQYsiK7Zkw=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=BAqSAPk8TjlY0JuxOFNRJmPot7ugt+VH27g8TWiC/2pTISJjVDb/drxbaDpX41bbe
 wAWnZ97cUgtnKRyFhBIR2NdXNYY4MliFW2rU+nIVQTxBHSvcydAM8EQxeLkzXTF7SJ
 DBxqoBfG/Bzqk3xWISI5nr2M10T9avRT7V4RWfsM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.250.105] ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MPXhA-1lb2Df1qpm-00MfVE; Thu, 24
 Jun 2021 17:07:25 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <87h7hnmkhc.fsf@toke.dk>
Date: Thu, 24 Jun 2021 17:07:23 +0200
Message-Id: <0341E253-B8CB-4976-ABC1-553C070E77F3@gmx.de>
References: <3d529e0b78ef8ea54021d8f8e93285e9a474cba1.camel@heistp.net>
 <87h7hnmkhc.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
X-Mailer: Apple Mail (2.3445.104.21)
X-Provags-ID: V03:K1:LvGuUuP1TqtVE0zNcBuVrS0qaCR9sc1ZZvGX/MPwE/1t8lOFq33
 fltaoXMJTBAW7kT0GCoRrJRSlqDx7sbVdgAMHXedTpVr1O6veBzWEZZAV19A35NvEP/cE6q
 dflqoCHAMHoUnEQQw1SSGuo/E4+fVOpF1AhUIhhkj5AGrWbfJKNHe+t0BaM75UdRfMKIkMZ
 l5S8+lJsq5j1B/vkiyTsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jn9J+aNrOJk=:eGJpSbcw19JFSwPHS2NdJz
 9/P8Z8yroCXto2LnM5rcenSYEeeAFHv36uhgIqmYL9woHKCVpofIaEUMsUtP80u3dCBGnyc9s
 ZSTFA4GYMIZLP3bccKP2b823E0w5Ljd+6upRRiCDUM1J+J/aHNNeMvxb9LCGAMGqyW8ivhFlm
 RszYInBOVL1Plir0H3VbzXkreC67nXz45iWknZeYTpcORLryFH6CEN2fic2KWmUXZYWaAaqj1
 RPVuREZjoDUu+wiCsu/+b2lg8Mh2Mf2c21ujFyGHNp1gzx6KFf/lFm6eOb4i8A9dRJLndTEza
 OxUpG2P3Z91yt+YE1ci9D8X04NNxAVzLWkuaC4I6gRqPxtHxBjxKluVI237u0iIPMPx+S59gr
 bDxzh33beHP7SvKW1Y3lGo40pbQ7YsQHknYiTxqrL8owVLHGbnSzqwjZ8iLoOLC6wZM/SopMO
 tRihYPZwvtTiqTyqc56woImyLWO4kdXuDR9NK0alYZHjJzkjj3BphC45N7xfz4Z3jB030HA9a
 LPGIFnNtA/rI+9xA1ysrpLTv9snKiHdZguGHV49FsvLoc7Seq5/HwD4mcgZCh/ABYYOOi8PZW
 xvIZ03tdaB6UOIeHWq1P0iVF+3pcqzOQLYJZTcs1K9YDGDy1FL09PDrWJhRZ8DS9n0qB/4rK7
 IlPWdoiS6IHNejpJ2PSsSoZr97uMCuh2j6m++XPDbH8l2QHQvx95JedfX8XxVvUKtUpuLIPBY
 cpBJIJjEZ1CJ9xSjpbriHh/7Dt+dRqExCVL57j8tYEMXldHTfhXqOcs72yG6C+i8vK4stA6he
 4fgJuicpBg613t2QwL/nd+yQYMGcM5oBjSjVCRlTIpOKBhUV1JhpuhuR+rB1Wd7OWejvXwErW
 bOQevLT6L97mYXg3nRPqq99t9U7M77zH1u6RtWEx5TZWX8Fo9KP78FlM8YJiCBxtDJNmmYV5d
 0lDsjLzUBzpKfo9TfftET6nNr13CPKXyYIcP/iFpchW4FNm0G20drDZZ4NMoKEUckQFpR/41i
 mTKlNdO6Fy91xO+73zzoilWoKlAQ3RGHmxT9oGOPYuUvM+4HQ3vNOlIwEvWgr0yQ8xQ2oNBBs
 PpTWnIpg9zFElbiv8NdwdI0+1uY6nD6Qpmw
Subject: Re: [Cake] Cake memory usage after 1TB
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

Cgo+IE9uIEp1biAyNCwgMjAyMSwgYXQgMTU6NTksIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUB0b2tlLmRrPiB3cm90ZToKPiAKPiBQZXRlIEhlaXN0IDxwZXRlQGhlaXN0cC5uZXQ+IHdy
aXRlczoKPiAKPj4gSSdtIHVzaW5nIENha2Ugb24gYW4gRWRnZVJvdXRlci1YIGF0IGEgc2l0ZSB0
aGF0IGRvZXMgYXJvdW5kIDUwLQo+PiAxMDBHQi9kYXksIGFuZCB3ZSdyZSBxdWl0ZSBoYXBweSB3
aXRoIGl0IHNvIGZhci4gRWdyZXNzIGFuZCBpbmdyZXNzCj4+IHN0YXRzIGFyZSBiZWxvdyBhZnRl
ciB+MVRCIGRvd25sb2FkIGFuZCB+MTAwR0IgdXBsb2FkLgo+PiAKPj4gSSB1c2UgIm1lbWxpbWl0
IDhNIiwgYW5kIG5vdGljZWQgdGhhdCBpdCdzIHJlcG9ydGluZyA4Mzg5Njk2IGJ5dGVzIHVzZWQK
Pj4gb24gZWdyZXNzLCB3aGljaCBpcyBhdCB0aGUgbWF4aW11bSAoc2xpZ2h0bHkgb3ZlciBhY3R1
YWxseSkuIEFyb3VuZCA2TQo+PiBpcyB1c2VkIG9uIGluZ3Jlc3MuIFNob3VsZCBJIHRoZW4gcmFp
c2UgdGhlc2UgbGltaXRzLCBvciBpcyBpdCBub3JtYWwKPj4gZm9yIGl0IHRvIHNldHRsZSBpbiBh
cm91bmQgdGhlIG1heGltdW0gb3ZlciB0aW1lPwo+IAo+IFRoYXQgc3RhdCBpcyB0aGUgbWF4aW11
bSBtZW1vcnkgZXZlciB1c2VkLCBub3QgdGhlIGN1cnJlbnQgdXNhZ2UgKHRoYXQKPiBpcyByZXBv
cnRlZCBieSAiYmFja2xvZyAwYiAwcCIpLiBTbyBpZiB5b3VyIHF1ZXVlIGV2ZXIgb3ZlcmZsb3dz
IGl0J2xsCj4gYmUgYXQgaXRzIG1heGltdW0uCgoJSXMgdGhlcmUgYW4gZWFzeSB3YXkgdG8gcmVz
ZXQgdGhhdCwgc2hvcnQgb2YgdGVhcmluZyBkb3duIHRoZSBxZGlzYyBzZXQtdXAgYW5kIGJ1aWxk
aW5nIGl0IHVwIGFnYWluPwoKUmVnYXJkcwoJU2ViYXN0aWFuCgoKPiAKPiAtVG9rZQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5n
IGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
