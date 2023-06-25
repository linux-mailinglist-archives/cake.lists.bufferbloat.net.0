Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CADE73CF72
	for <lists+cake@lfdr.de>; Sun, 25 Jun 2023 10:43:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 36DE63CB40;
	Sun, 25 Jun 2023 04:43:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687682592;
	bh=+tc3dIh8DbTRiMFVjg3Z2p+5aericzq6OiXZL7y9zdI=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fUmSg//Arapzu6CmqMkgmqgkB0mnz23idENA/8WvlWujZsC+9+8RzRPmIvuUpZajS
	 EYBrWmA6y3he9iwENPhAiEj4R73YPVzOoC7sOt0FCsldVSkN3G1LYkLWhj7b4FUnMM
	 5z3ut3iy4wXHgpYbZaXCNGkevLEUXVShq2ues9ymyF67ayT8Ftn53VyJuMY/dWEC75
	 XES8C2qzQP3HUr09CKdQlyngP1tHkBqn24RHCRG0CBZeEoGR96T5doZ/0ExUiXhehY
	 bH9nXmWn+1f1lgDU9dZgWqcBXr5Me1renr++t0ca0FBw0WVwF2psg4NO2dP1xuR+S6
	 yF9DXQVLGOP8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 67FD93B29D;
 Sun, 25 Jun 2023 04:43:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de;
 s=s31663417; t=1687682588; x=1688287388; i=moeller0@gmx.de;
 bh=MsXcB5dsQ8WSY1qOtL1GYXTmNNwduF0m3xrZa5tGvIU=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=X+BWr0RIS8hu+CG/G7UvMm3KZoqwXFim/CPEHRcIWHOR8czoTyvFhsLVbd67gRN08AR5p/d
 dSQ9mgliZPRfuNC9Ve32+Kl+7b7eBH5lGj81qAMH7hMOhEOZX7XprFJewskZVF/+mRaH587wO
 10GtsiprFI2cqeDqs9QjIlAzEODS+77UqdWxBp64oSVkTRstUZzy1swJ1wm1IwCsdiJb3IyDJ
 ropmQJLNA4O1Za17dmSwXtIB5ABK0w3fSCj/XGKptbR51YSylUHvaV8HK6I2VFJbRSE3lgWDz
 ZsHPAOfsd5ULu3RywLK7bWXLJl2eSYh6ARERRTgGL1ef0m5Ex/cA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([77.3.0.223]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N2V0H-1q4Z5n1t0R-013wiU; Sun, 25
 Jun 2023 10:43:08 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.3\))
In-Reply-To: <46B3DF93-48F1-429C-B9E0-41683CBBE1E8@gmail.com>
Date: Sun, 25 Jun 2023 10:43:07 +0200
Message-Id: <27C08679-D769-4FA6-B088-F8FD138AAA73@gmx.de>
References: <24D1A566-DFE9-4FDF-86A2-CFB30F20FCB2@gmx.de>
 <46B3DF93-48F1-429C-B9E0-41683CBBE1E8@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.3)
X-Provags-ID: V03:K1:cmzy4G+ddmUD61KuxGB26im2dY/2yZHbGGN0cCUa9/RaAC9kQP1
 GsJQGJmzU/eAOmA5jV+9LJ3HMEqYZofEzWZoMdQuYd81LkHRr7q3yHWbcyVcvEssI/WUmra
 nRDcgQXb4yNveJAMd17x1mT/lqJjw/Qw3sqPp5tDenuL3ooMm1ZIwEiSZFNSA+uunKxQ8zK
 93m/+SvgnJkRHe9fa5rrA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:YhBkYYVx/9Y=;rULcKp25eS43nFf4CGOp2ZnQviW
 kxrUjNnfFqQHOumSwxQNMwbRsuy2BV4PSJHPBjp8L/+rLcM2ASB2xi6NiDK+VxYzAAi3V30Ec
 rKhKorCaTAbENNKDak0lQjq+3Tuo+qeyTkUsrBujPjrbCLNRJ7gNSV0+TV8Pq1+Jv7aVZQTNg
 EIanUrkDCPs8uNag0Qn1/TgJ+l0WuvqTzuBetXQu348sexVLvJhV0vSKK1heya552vNzhR5Z0
 p55RQFk+5iEZYLfbiR7zajqbSEw5PwZA7AgV1xv7RQASx04HWP3UcPr43ik4CwYWZ3s+a4G0T
 NEW5b65eG1Y/EtUnOjJrWY836PpkLwtTxPJ9Yb5ZZ/doJOY5FcQXjtNaemJ6LzO8+G1VhYKoS
 IGHWbddEsZ4UH7K0mvZvEkRZiH+Dlv9Zxls/i/GRE68mrJg364qhV34upvX8+FvXUVp1NREld
 aW42eMQjQzRbksnuWD5C5atpCzS6Dm0G4gnptQ/64PGxSXB81D/5WnyppydRiE5VAX6SZgV1v
 cOkTFiTEK2ecta68m9PUkLZQawZJGak75L51Zz1xY6a50IUveR9uDmpxpaUT6EUgMKWOm3WBQ
 CsSuw9oUz8pjxXINs5mbtbPsiteQPD7XCNk2FzDkT1wzI+sM/L9eyrXqTqTpS6aq7Ls42m9+u
 Hc35qbI5goxWUTa9qoEAYMpY9bdcGOXVzUeKme2s4+Ncwaedb2FtRK8eJGXj46/p6IDiln30X
 xOywhKklSnu5sxobKL96dnrM/70YMladhwL9nSOk9h41ffNonn/NYt3+o6MIt2rAPhRH4zkSz
 YKNm5V6fLy35tJ+zQmjJYj8cN9qIdFJmA2ebyJUTE2aI8zaV22rrhdBlaG1S/FwpCsDSbKTq2
 +vV+31UTwWonOuLSTx7USEBo29g1NtDdS3Hee9lOf7lqFrhbLVqL5Ntxf/otoQVthajpR15sO
 TGtbug==
Subject: Re: [Cake] Anybody has contacts at Dropbox?
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 Jonathan Morton via Bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4sCgoKPiBPbiBKdW4gMjUsIDIwMjMsIGF0IDAxOjA0LCBKb25hdGhhbiBNb3J0
b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4+IE9uIDI1IEp1biwgMjAyMywg
YXQgMTI6MDAgYW0sIFNlYmFzdGlhbiBNb2VsbGVyIHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldD4gd3JvdGU6Cj4+IAo+PiBJcyBkcm9wYm94IHNpbGVudGx5IGFscmVhZHkgdXNp
bmcgYW4gTDRTLXN0eWxlIENDIGZvciB0aGVpciBUQ1A/Cj4gCj4gSXQgc2hvdWxkIGJlIHBvc3Np
YmxlIHRvIGRpc3Rpbmd1aXNoIHRoaXMgYnkgbG9va2luZyBhdCB0aGUgdGhyZWUtd2F5IGhhbmRz
aGFrZSBhdCB0aGUgc3RhcnQgb2YgdGhlIGNvbm5lY3Rpb24uCgoJW1NNXSBHcmVhdCBpZGVhLCBq
dXN0IG5lZWQgdG8gZ29vZ2xlIGhvdyB0byByZXN0YXJ0IHRoZSBkcm9wYm94IGNsaWVudCB0byBm
b3JjZSBhIG5ldyBoYW5kc2hha2UuCgo+ICBUaGlzIHdpbGwgc2hvdyBhIGRpZmZlcmVudCBzZXQg
b2YgVENQIGZsYWdzIGFuZCBFQ04gZmllbGQgdmFsdWVzIGRlcGVuZGluZyBvbiB3aGV0aGVyIFJG
Qy0zMTY4IG9yIEFjY0VDTiBpcyBiZWluZyBhdHRlbXB0ZWQuICBXaXRob3V0IEFjY0VDTiwgeW91
IHdvbid0IGhhdmUgZnVuY3Rpb25pbmcgTDRTIG9uIGEgVENQIHN0cmVhbS4KPiAKPiBCdXQgSSB0
aGluayBpdCBpcyBtb3JlIGxpa2VseSB0aGF0IGl0J3MgYSBtaXNhcHBsaWVkIERTQ1AuCgoJW1NN
XSBQcm9iYWJseS4uLgoKVGhhbmtzICYgQmVzdCBSZWdhcmRzCglTZWJhc3RpYW4KCgo+IAo+IC0g
Sm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
