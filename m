Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D74C49E6D4
	for <lists+cake@lfdr.de>; Thu, 27 Jan 2022 17:01:14 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 443CB3CB41;
	Thu, 27 Jan 2022 11:01:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643299273;
	bh=HEn/kSztEd1k49AbD7Jykb36XV7/i9Gv0JnJQP/+kow=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qwm/uyvqCKVs6womgTkAA+9MduDqJuq070tdPsIKe0C9pl6gIKWEP8uuUpKRdFr3R
	 iM5E+2wqEUFbtX13ItvtxFsz5W7mH95JBR6kkv9acp75UOL7+DmWxC0aHoNKyJHO2n
	 6bwAOxDk+fE2uTwjaaE3FqUZ9y5FY4nIMeF18dIAzecIY+lXjYQa/WLHk4iZr6wAh9
	 DAzPY4FuP2yCVn1MT9C/OHoe5X36n1GMgy3sNPmu9nH03250+HOS9fhhGZr28dFbEl
	 5HdAAHkQqMbSWjMs+Che5jR2PwGP4g3Me+iE8W2v31QtEiBYPca2G30kx2Jtwgfmqq
	 TK6CLSNRC0Fgw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 579CC3CB35
 for <cake@lists.bufferbloat.net>; Thu, 27 Jan 2022 11:01:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643299256;
 bh=Bt8OqLgnOxynRLY4b2b2o4iqKvPISP4pVOnQlE40P0Q=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=TmRhxbZnjdLWeK8AtacEJ8cY2Wjxnwhyk2/DWgDYS0FiGHFnsU3dI6u+Ozsbtgk3m
 ne87gvT76DJUbIYDeXb6O3bliXHP7jBuJTUm2eAmNKkPaSNyW+m3pA7I1p4BJ5WZKW
 Pik3thMZt62P2MzfQpUM7wE3eFfVN4cJnE6h1GbM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([77.8.117.92]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MRCKC-1msAZQ329s-00N8nl; Thu, 27
 Jan 2022 17:00:56 +0100
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <db81c2b5bd1fb2fb6410ce0d04e577bbff61ee1e.camel@codeconstruct.com.au>
Date: Thu, 27 Jan 2022 17:00:54 +0100
Message-Id: <82BBD116-4A04-4E19-9833-0DCB5134C73C@gmx.de>
References: <20220125060410.2691029-1-matt@codeconstruct.com.au>
 <87r18w3wvq.fsf@toke.dk> <242985FC-238B-442D-8D86-A49449FF963E@gmx.de>
 <db81c2b5bd1fb2fb6410ce0d04e577bbff61ee1e.camel@codeconstruct.com.au>
To: Matt Johnston <matt@codeconstruct.com.au>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Provags-ID: V03:K1:mHn1nyR0QjM3nDrP4h2GaDb4oo0n5u506IeJLiHOZX7NSGb6ujf
 vgUx78oY2I5h3cUmqeQx1W9OljmlDlQYgdzB3jBOawcYyExtnamDErbuwWxFKHePT+7q9JV
 Oisc33pcwrwTd5B3QEp+/7kgyo+vMmB9atwUekM8Vf6jVrWn1UwGPgAZfrxiSChE4bvF26d
 CjoIHKhzyU/mdyeZc3igg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TZMT8aeK80E=:dr9EtUL9ZOEnRAKO83tyhI
 larrGUABQmYtEnKrCyVlVvbV5hbiBIthnUxqhFFtek7RIHujSPLTJEKl8hxuxj1ciqBpeMta7
 i5KE1ijuismryE27Um3wOpPf8RsXha0YWNsV3l1r6dI/am2MLek7qQEnDK01Fugl22yuo6tkr
 f9i8u2azpC76lA64DmPE2RolbOrGRGlgLZNcNsWacWMoxW7tvA3NQJecFHTXvziQYyrTapHHu
 67Glhapok8bjudoJ1iHOW1jU0gMsPfBfArKS4pbU322UV6+/588cMqeQZB4RteFsnY3fWHu/F
 T6/VcA3yB/1GYvE62gs0c3PqP1GcRobuOhAZX904ToLhDxBfadMTwQUGLlZZQ9Hd+VIlUJffJ
 d033wmmqAIFkVhI8s6ZPMU4QWXj0mVXowi3JSCDPHXqA2FAO0FvcvzugNvOXQ8b152rVqxtXL
 Svf0f7m2+WUv7k/dwUCMGTay17vOm5wcgr4zwhLUUFTyzI9GMR/z+BsAAPPZxIS2anN7ZGXd6
 BSYxmE5kE12/JFyDv8XHsFIs372tIjW8rDoKWX59iA2VJkxYIyU6egPUX+WbppNG/Y76pt7S4
 BjCXSpGDYhv/6xkojRiy/l4au+HhvMtYbIUmcgQsYdXUdTZhdTQpAU+Kn+8hj5XCIeh+NwyJ6
 ly9isr0T+DiMwNAh1JHiXr0VvkM23EbN0mkR2inUHCGDUWzcKL9ZzQOZP/ybS7/PiMi1bQlrV
 7PDriMcM0SccBOEPRMWLyQzo3srnxCalxCtoYhvuMJd61R1P4ZKdgZu2sVsQ44JkYmGlvZcjR
 v2H12MApYPgkC4K+YM9mBf55nx3efPf++r7kI5iEtBDCagrRLYuN/pTrck5yhfWrAjzfDEHoW
 PmLs1Kp0YL/R3wuZ+sEBYAt1EAlGgkgHcHo7SbVkLe/S3spuidr2DURDXiiCDfFXlqv1Diwgz
 FTp4CMppt7L6s1s1x2V/Tv/uXrWfsEe72fVZOhphdOG2ruJoaWICY6yaojZhSAeYiAx17rhFZ
 aU14re3uV2MeuLxAR75E+lOXiEfOw3Li2H7KzfoQki7RN3AjetldwbIETrrH+J3BZMdU7asRF
 2c8s2gJBxQj9bg=
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
Cc: netdev@vger.kernel.org,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgTWF0dCwKCgo+IE9uIEphbiAyNywgMjAyMiwgYXQgMDQ6MTQsIE1hdHQgSm9obnN0b24gPG1h
dHRAY29kZWNvbnN0cnVjdC5jb20uYXU+IHdyb3RlOgo+IAo+IE9uIFR1ZSwgMjAyMi0wMS0yNSBh
dCAxMjo1NCArMDEwMCwgU2ViYXN0aWFuIE1vZWxsZXIgd3JvdGU6Cj4+IAo+PiBMRSgxKSBpcyB0
aW4gMCB0aGUgbG93ZXN0Cj4+IENTMSg4KSBpcyAxIHNsaWdodGx5IGFib3ZlIExFCj4+IENTMC9C
RSgwKSBpcyAyCj4+IEFGMXggKDEwLCAxMiwgMTQpIGFyZSBhbGwgaW4gdGluIDEgYXMgaXMgQ1Mx
Cj4gLi4uCj4+IEp1c3QgYXMgZG9jdW1lbnRlZCBpbiB0aGUgY29kZToKPj4gCj4+ICoJCUJvZyBT
dGFuZGFyZCAgICAgICAgICAgICAoQ1MwIGV0Yy4pCj4+ICoJCUhpZ2ggVGhyb3VnaHB1dCAgICAg
ICAgICAoQUYxeCwgVE9TMikKPj4gKgkJQmFja2dyb3VuZCBUcmFmZmljICAgICAgIChDUzEsIExF
KQo+IAo+IFRoZSBkb2N1bWVudGF0aW9uIGRvZXNuJ3QgbWF0Y2ggdGhlIGNvZGUgdGhvdWdoLgoK
CVNpbmNlIEkgZGlkIG5vdCBzZWUgeW91ciBvcmlnaW5hbCBtYWlsLCBvbmx5IFRva2UncyByZXNw
b25zZSwgd2hpY2ggZG9jdW1lbnRhdGlvbiBpcyB3cm9uZyBoZXJlPwoKCj4gQWxtb3N0LCBidXQg
aXQncyBvZmYgYnkgb25lLgoKCUkgZnVsbHkgYmVsaWV2ZSB5b3UsIGJ1dCBjb3VsZCB5b3Ugc3Bl
bGwgaXQgb3V0IGJ5IHNob3dpbmcgdGhlIGxpbmUgb2YgY29kZSBhbmQgdGhlIGxpbmUgb2YgZG9j
dW1lbnRhdGlvbiB0aGF0IGFyZSBvZmY/CgoKPiBJIGNhbiBzdWJtaXQgYSBwYXRjaCBpbnN0ZWFk
IHRvIGNoYW5nZSB0aGUgZG9jcywgdGhvdWdoIGl0J3Mgbm90IGNsZWFyIHRoZQo+IGRpdmVyZ2Vu
Y2UgYmV0d2VlbiBjb2RlIGFuZCBkb2NzIHdhcyBpbnRlbmRlZCBpbiB0aGUgZmlyc3QgcGxhY2Uu
Cj4gCj4gKGRpZmZzZXJ2OCBhbHNvIG5lZWRzIGEgZGVzY3JpcHRpb24gaW4gdGhlIGNha2UgbWFu
cGFnZSwgSSdsbCBzZW5kIGEgcGF0Y2gKPiBmb3IgdGhhdCBvbmNlIHRoZSBvcmRlciBpcyBjbGFy
aWZpZWQpCgoKUmVnYXJkcwoJU2ViYXN0aWFuCj4gCj4gQ2hlZXJzLAo+IE1hdHQKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
