Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F321CA5F7
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 10:23:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EA91F3CB39;
	Fri,  8 May 2020 04:23:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588926189;
	bh=GzbExZM8d1C810geBZ4s+v36d7AVJWHOHUoeRuCcslA=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jWBO+Bwa9qwS2vtrOQk+peng8bmgwU0gzMGBrOdei0Aqf4yLVy+ffqMttqUUZHzii
	 fJ+oniABcahRQHQKViy2O6PgI1oouem1+mBnAJpaGFxeMx7FXUNKT+crlYONHTCZUJ
	 jsakh8xgKLd70EFBlxCgEj1Xo3VBVEHeJpjZu7Y3yJK/OCE4EeXjy5ra99DY28YsSB
	 pjIs2NcgzQgBGdd1MaxjhMuSZFVyCn7LcVus69vQRbUHT70PZyuXbEiw2hUfs+iE/G
	 gT95XfCnF44cGL1eNmyG7s16PtL6WFOW33Uja4hWBkLa+O+H6F0lIL7ziwdf5EtAcw
	 qFFzAPFn6pcqg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EC61B3B2A4
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 04:23:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588926183;
 bh=FluuWOYfnVzBf4O8qMBwcm/Rl2d6aG8lJu8pMMnY5NQ=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=Z5Qgqwg6rAPexwZ/hY9ho8uJZeGHQMh7ER4FLrT1D3kfSOTtEDd2ba7+lA3lse5W7
 Gy0e94a0kA3RA/eWhoB4hIBCg95RwKhPlUWDTiu+XBC1Biui85VN1mD9S5HhnaGm1k
 n6tqEoAjhJWFhBZ/Rl1Zmp+WS8CtIytBZExBrvmQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.16] ([134.76.241.253]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MF3HU-1jLzvL1ppQ-00FW1R; Fri, 08
 May 2020 10:23:03 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
Date: Fri, 8 May 2020 10:23:01 +0200
Message-Id: <A8EDBFFD-5D98-48EF-A791-6946BC954A47@gmx.de>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
To: Cake List <cake@lists.bufferbloat.net>,
 Avakash bhat <avakash261@gmail.com>,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-Provags-ID: V03:K1:ta6SYKztFVN4sqxriDAl1UOgLIlGbpsXjI9HZZw+chNvwjfiAXM
 Fv2Vra6vJFaC8eGkicQOj5qp4rWxavH3X0k5lc7zxGdkK/A9wqgdgH6j+aJPP6NKGaLe6Rx
 b3kPMfmpQ5yj1PIQInhcr5oAXxNz48saI5gR4QhEssZdxzWVBLl5ZAhiPWg2M3e3U+QP+Fg
 dqFdRDrE6YSUa15Vp+IRQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:b67sFYNatvU=:2BDLfY68upJHlYaXCxlepu
 sTJqcQImRaS7bjSrkMBqnpceV8c5l4V3cuMMS59dcY5B1TsZJXBOUg2TcZv3BLiBXt79gDCeR
 pR54igwXaJBrkuRSy/AHi5gOIls5Zn1IlrZIGUXx2TkYANx53RnanBGD6ZD3oG9wrOBCucUKm
 NiEFm2GO2y8TzQQDGHXI/yUc8ZXHgtzGfmjBhWwaJRAaLt1QRaLLjSiKu7h3hzgW39vG7CKsg
 pZupcUs+flm2FxNcFOZH8kVubzjrfrv8tk40xJGro5Kobu6LvN6m70kJoj9zOdfze7EZzga67
 KG3gbqu2EKm/45oSotIjja0+J8K7Mqo7nL7ZuKWgWLQps7rGpv1FKcIWJTFALSwvGgG+URGVx
 kwvnf1riyyQc7ztCRLXQH+nQOEOKNZI6jdu9Et1XULAP3C6rn8pFWjqgss87QwS8ZdmutU6bP
 5ivc5iNCCiAsGJJCErHi30XXG7J8vUjqc8ODWfnmOFhMEk3CxyiVnm+Rj1t06NCxnxPgzr9kH
 zcM2q0aeLQg7cFNoMp+WSTG8vIOQAm9Vh3vxjnFcnCz8WSK/s34/GpbyXHmCiqHhFrtVtcXet
 XG6FGcai0EcwYd5JN5cLVYXG2uux40oyhVaxMnEJMRKAoHwJ0ITN4gNTUYDJ0vQut9KZbgjTj
 /UOAWPVZ3AUaEloMgaOKrHhk/reBve6obrRvUw5WbUWVznz83RbatD7QBksHX3QvFZSz+mGS8
 kzz8SZ64g0M61ZzCHfJd8QSuYhjeJTpGvVfhLk2LtHgAqbLhvOVkHfbjNUTOfOKC5I2LOYYCb
 uCyyEom2eVpKQ5Za5wdFA5cv/7ZksnKm8eihLrbfms0rjH/OehrxvUdtq3St7wm7VrSSMEYRu
 wMtHd/wECznlhsIjk2XazXQGK4y/jUMxVrWMIxdC68oxzCzl4n0AOjv4wdrBJTm1yhpEyXtso
 5ZEqWDOZEhvJZu1tZpNw+I2MYDcETWqxtDKsjQY43OPQVduRQbdoy/7Hrj5vp85o+DqgSwFz7
 PMToe0SJOi4ku149ctqrAM1f62g2DXVbtXQvW4DyuHFEVGtNSd+2mSLwMCLR8pBe0ZO+9V4xk
 QtaDjl1UuIPvAIyuzFWa6cok7W3qKSGdL20e6nssmLOYQp6zhG+fCOjs15HM2csXmk+b3KDi1
 0aNTNBMUmdR7WiMvJ01xIXzCUQGFvwvq7d4/nrl+hOm4DxwXDXI1AtZisZKDm1js1hEth+Wgd
 7oPmFQbPjeTPU5yGi
Subject: Re: [Cake] Query on ACK
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
Cc: "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Vybhav Pai <vybhavpai1999.vp@gmail.com>, Deepak K <deepakkavoor99@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGVhciBBbGwsCgpqdXN0IGFzIGEgc2lkZS1ub3RlLiBJIGJlbGlldmUgdGhhdCBBQ0sgZmlsdGVy
aW5nIGlzIG9uZSBtb3JlIGFwcGxpY2F0aW9uIHRoYXQgZGlyZWN0bHkgcHJvZml0cyBmcm9tIGZs
b3ctcXVldWVpbmcgKGFzIHRoZSBzZXQgb2YgcGFja2V0cyB0byBjb21wYXJlIHdpdGggaXMgYWxy
ZWFkeSBzZXBhcmF0ZWQgb3V0IGZyb20gdGhlIHNldCBvZiBhbGwgcXVldWVkIHBhY2tldHMpLCBh
cyBvbmUgbmVlZHMgdG8gY29sbGVjdCBBQ0tzIGFjY29yZGluZyB0byB0aGVpciA0LVR1cGxlcyB3
aGljaCBGUSBkb2VzIG5hdHVyYWxseS4gCgpCZXN0IFJlZ2FyZHMKCVNlYmFzdGlhbgoKCgoKPiBP
biBNYXkgNywgMjAyMCwgYXQgMDk6MDcsIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVyMEBnbXgu
ZGU+IHdyb3RlOgo+IAo+IEkgdGhpbmsgdGhhdCB5b3Ugd2lsbCByZW1vdmUgYWxsIHJlZHVuZGFu
dCBCYWNrcyBpbiBvbmUgZ28gY29uc2lkZXJhYmx5IGFkdmFuY2luZyB0aGUgbmV3IEFDSyBpbiB0
aGUgcXVldWUuIEFuZCBtb3JlIGltcG9ydGFudGx5LCBpbiBtb3N0IHJlbGV2YW50IG1vZGVzIGNh
a2Ugd2lsbCBhcHBseSBvbmUgcXVldWUgcGVyIGZsb3cgc3RvY2hhc3RpY2FsbHksIHNvIGFsbW9z
dCBhbGwgcGFja2V0J3MgaW4gYSByZXZlcnNlIEFDSyBmbG93IHdpbGwgYmUgQUNLIHdpdGggaWRl
bnRpY2FsIDUtdHVwZWwuLi4uCj4gCj4gT24gNyBNYXkgMjAyMCAwODo0NDo1OSBDRVNULCBBdmFr
YXNoIGJoYXQgPGF2YWthc2gyNjFAZ21haWwuY29tPiB3cm90ZToKPiAKPiBUaGFua3MgZm9yIHRo
ZSBxdWljayByZXNwb25zZS4gSSBhbHNvIGhhZCBhIGZvbGxvd3VwIHF1ZXN0aW9uLiAKPiAKPiBJ
ZiB0aGUgYWNrIGZpbHRlciBhZGRzIHRoZSBuZXcgYWNrIHRvIHRoZSB0YWlsIG9mIHRoZSBxdWV1
ZSBhZnRlciByZW1vdmluZyBhbiBhY2sgZnJvbSB0aGUgcXVldWUsIHdvbid0IGl0IGJlIHN0YXJ2
aW5nIHRoZSBhY2s/IAo+IFRoZSByZXBsYWNlZCBhY2sgd2FzIG11Y2ggYWhlYWQgaW4gdGhlIHF1
ZXVlIHRoYW4gdGhlIGFjayB3ZSByZXBsYWNlZCBhdCB0aGUgdGFpbCByaWdodD8KPiAKPiBUaGFu
a3MsCj4gQXZha2FzaCBCaGF0Cj4gCj4gLS0gCj4gU2VudCBmcm9tIG15IEFuZHJvaWQgZGV2aWNl
IHdpdGggSy05IE1haWwuIFBsZWFzZSBleGN1c2UgbXkgYnJldml0eS4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4g
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
