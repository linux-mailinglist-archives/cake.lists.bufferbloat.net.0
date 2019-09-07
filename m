Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 070BBAC9D0
	for <lists+cake@lfdr.de>; Sun,  8 Sep 2019 01:09:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EA3F43CB67;
	Sat,  7 Sep 2019 19:09:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1567897794;
	bh=eb1GMDwecHwpUOTCqjv6MleAMDws37uH8KV7iMd1kpE=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jA2BdMN3azrdVQQzA06qBsvTXMoWkzAzUrEThtWopWtK2HxZa3npJG21fi1CZjgOE
	 V4NCGla8PDWvqstJDdkKgvcjd0XEjCtpydHOg2UCdL+jkOocwQ4iF/+FMoVWrAjBXs
	 +TIronx0RCGzewwVJYgDQ4pOTXoJBXZxoaRs2cNFXHmStEMbxbQJhJ6j4vLynpXBHy
	 D2ZQlB9OgZhziC4PCLdKMOxmKPuI6Pa7CkHjdxN+zHKzBdqMG9LzXQ9k/gUp1SsDYX
	 A1jblyeSPxUkF/5n3P6BPIoLbK/HebRlFbIAsoVcvhpwW9lToe1TCv/aucsSrjsxk5
	 zbr7DZ4lb5DFQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 71B823B2A4
 for <cake@lists.bufferbloat.net>; Sat,  7 Sep 2019 19:09:53 -0400 (EDT)
Received: by mail-lj1-x22c.google.com with SMTP id j16so9271143ljg.6
 for <cake@lists.bufferbloat.net>; Sat, 07 Sep 2019 16:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=dW8PP4JrEpTxjEdQCkRn3oXxm2goz3vEXhaJdLu9QR4=;
 b=RnNxmzk1HqLnV85QLfwpcqaigWYeOt7aH46BqjLJWfsRyOq6T5geplF/kkHd5Jd+0V
 Y+DxqBxFkcdu1k4Yrij25NNTEO7Typ5Oe5/gC8CZkQM+1mYpTjaBjAsM4Ph+ErdHnCwe
 ctWuswLnJLRsRiYy3u03v3I56AYfwkqRrZPgXi6i05xKZ2+nOT78WQdpvDqPHDVEF+Oa
 K+ERu0lTKERosUljpjhRPVguD9mGiZMrJb/uNmBDv3IqJQ8DdOaTXHMRClSEfGaS4LNS
 +iZmdFlmIUb0X8bnKEQZ8UGWzGp1wqZAlknX/b+crGVbEpqlO7McfIhA59FKSjhLuTAj
 DmKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=dW8PP4JrEpTxjEdQCkRn3oXxm2goz3vEXhaJdLu9QR4=;
 b=uNtKESkf48QcpOOSldEOKcLgoMWL1RDf7HOr2xTXoJHCNCv42SMCRi4kCIZOFzTEcf
 QXPGnEE08H2dy2nqyqJogv+1TXIqIJFi92QTPBPDvHCo3J+1ONw5nSHSijKSz4PBQynT
 lBaCchQbVXSqNFk4ZPwy1q313qknjUV11Haenomjsj4H3nirj4XCIjdMK58H7jabCZrN
 8CJZ2hezn7tjc+kig+/LK7PZ5OYV95uOtu9cDE7au1d2/wRNx6zyH0ypPkr15fRDAPZ+
 mmXV7sid0ymvu0MNNP27r7gQp3TxA2c+gOXueCpH7wynJQUoZRxLw2bUzG1VrA11AOfe
 slqQ==
X-Gm-Message-State: APjAAAWl9/NnOSkpFr96xhiMjU4rJ6H0Kvw+YqX9YG+DEgQRNcpLPPhU
 +fQFAYBziU1MxLL9CsO2QDc=
X-Google-Smtp-Source: APXvYqwL/MIAMty9dgFbuDfZ5//pjzcHJ8M22H4Phng9sNwgouaAN1UCb3MMmfEibBJHr8UjGYjfLg==
X-Received: by 2002:a2e:9c99:: with SMTP id x25mr10471133lji.9.1567897792355; 
 Sat, 07 Sep 2019 16:09:52 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-193-nat-p.elisa-mobile.fi.
 [83.245.237.193])
 by smtp.gmail.com with ESMTPSA id t82sm1929591lff.58.2019.09.07.16.09.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 16:09:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
Date: Sun, 8 Sep 2019 02:09:50 +0300
Message-Id: <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
To: Justin Kilpatrick <justin@althea.net>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Fighting bloat in the face of uncertinty
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA4IFNlcCwgMjAxOSwgYXQgMTo0MiBhbSwgSnVzdGluIEtpbHBhdHJpY2sgPGp1c3RpbkBh
bHRoZWEubmV0PiB3cm90ZToKPiAKPiBJJ20gdXNpbmcgQ2FrZSBvbiBlbWJlZGRlZCBPcGVuV1JU
IGRldmljZXMuIFlvdSBwcm9iYWJseSBzYXcgdGhpcyB2aWRlbyBvbiB0aGUgbGlzdCBhIG1vbnRo
IG9yIHR3byBhZ28uIAo+IAo+IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9RzRFS2Jn
U2h5THcKCkkgaGF2ZW4ndCBhY3R1YWxseSB3YXRjaGVkIHRoYXQgb25lIHlldC4uLgoKPiBBbnl3
YXlzIHVwIHVudGlsIG5vdyBJJ3ZlIGxlZnQgY2FrZSB0b3RhbGx5IHVudHVuZWQgYW5kIGhhZCBw
cmV0dHkgZ3JlYXQgcmVzdWx0cy4gQnV0IHdlJ3ZlIGZpbmFsbHkgZW5jb3VudGVyZWQgYSBzY2Vu
YXJpbyB3aGVyZSB1bnR1bmVkIENha2UgYWxsb3dlZCBmb3IgdW5hY2NlcHRhYmxlIGJ1ZmZlcmJs
b2F0IG9uIGEgbGluay4KPiAKPiBIYW5kIGNvbmZpZ3VyYXRpb24gaW4gYWNjb3JkYW5jZSB3aXRo
IHRoZSBiZXN0IHByYWN0aWNlcyBwcm92aWRlZCBpbiB0aGUgUkZDIHdvcmtzIG91dCBwZXJmZWN0
bHksIGJ1dCBJIG5lZWQgYSBzZXQgb2Ygc2V0dGluZ3MgSSBjYW4gc2hpcCB3aXRoIGFueSBkZXZp
Y2Ugd2l0aCB0aGUgZXhwZWN0YXRpb24gdGhhdCBpdCB3aWxsIGJlIHVzZWQgYW5kIGFidXNlZCBp
biBtYW55IG5vbi1zdGFuZGFyZCBzaXR1YXRpb25zLiBQcm9kdWNpbmcgbm9uLW9wdGltYWwgb3V0
Y29tZXMgaXMgZmluZSwgcHJvZHVjaW5nIGRyYW1hdGljYWxseSBkZWdyYWRlZCBvdXRjb21lcyBp
cyB1bmFjY2VwdGFibGUuIAoKV2hhdCB3YXMgdGhlIHNjZW5hcmlvIHRoYXQgZ2F2ZSB5b3UgdHJv
dWJsZT8KCkkgbm90ZSB0aGF0IENha2UgaXMgbm90IGRlZmluZWQgaW4gYW4gUkZDLiAgV2VyZSB5
b3UgcmVmZXJyaW5nIHRvIGEgQ29kZWwgUkZDPyAgQ2FrZSBpcyBhIGJpdCBtb3JlIHNvcGhpc3Rp
Y2F0ZWQsIHdpdGggdGhlIGFpbSBvZiBtYWtpbmcgaXQgZWFzaWVyIHRvIGNvbmZpZ3VyZS4KCj4g
V2hpY2ggbGVhZHMgdG8gYSBmZXcgcXVlc3Rpb25zCj4gCj4gMSkgV2hhdCBoYXBwZW5zIGlmIHRo
ZSB0YXJnZXQgaXMgZHJhbWF0aWNhbGx5IHRvbyBsb3c/IAo+IAo+IE1vc3Qgb2Ygb3VyIGxpbmtz
IGNhbiBleHBlY3QgbGF0ZW5jeSBiZXR3ZWVuIDEtMTBtcywgYnV0IHRoZXkgbWF5IG9jY2FzaW9u
YWxseSBnbyBtdWNoIGxvbmdlciB0aGFuIHRoYXQuIFdoYXQgYXJlIHRoZSBjb25zZXF1ZW5jZXMg
b2YgaGF2aW5nIGEgMTAwbXMgbGluayBjb25maWd1cmVkIHdpdGggYSB0YXJnZXQgb2YgMTBtcz8K
ClRoZSBkZWZhdWx0ICd0YXJnZXQnIHBhcmFtZXRlciBpcyBub3JtYWxseSA1bXMsIHdoaWNoIGdv
ZXMgd2l0aCBhIGRlZmF1bHQgJ3J0dCcgYW5kICdpbnRlcnZhbCcgcGFyYW1ldGVyIG9mIDEwMG1z
LgoKWW91IHNob3VsZG4ndCBub3JtYWxseSBuZWVkIHRvIHNldCAndGFyZ2V0JyBhbmQgJ2ludGVy
dmFsJyBtYW51YWxseSwgb25seSAncnR0JywgYW5kIHRoZXJlIGFyZSB2YXJpb3VzIGtleXdvcmRz
IHRvIGFzc2lzdCB3aXRoIGNob29zaW5nIGFuIGFwcHJvcHJpYXRlICdydHQnLiAgVGhlIGRlZmF1
bHQgb2YgMTAwbXMgaXMgcHJvdmlkZWQgYnkgdGhlICdpbnRlcm5ldCcga2V5d29yZCwgYW5kIHRo
aXMgc2hvdWxkIGJlIGFibGUgdG8gY29wZSByZWFzb25hYmx5IHdlbGwgd2l0aCBwYXRocyBkb3du
IHRvIDEwbXMuICBZb3UgY291bGQgYWxzbyB0cnkgInJlZ2lvbmFsIiB3aGljaCBnaXZlcyB5b3Ug
dHVuaW5nIGZvciAzMG1zLCBvciAibWV0cm8iIHdoaWNoIGdpdmVzIHlvdSAxMG1zLCB3aXRoIGdv
b2QgYmVoYXZpb3VyIG9uIHBhdGhzIHdpdGhpbiBhYm91dCBhbiBvcmRlciBvZiBtYWduaXR1ZGUg
b2YgdGhhdC4KClJlbWVtYmVyLCBpdCdzIHRoZSBwYXRoIFJUVCB0aGF0IG1hdHRlcnMgZm9yIHRo
aXMsIG5vdCB0aGUgbGluayBpdHNlbGYuCgpTaG91bGQgdGhlIGJhbmR3aWR0aCBzZXR0aW5nIGNv
cnJlc3BvbmQgdG8gYSBzZXJpYWxpc2F0aW9uIGRlbGF5IHBlciBwYWNrZXQgdGhhdCBhcHByb2Fj
aGVzIHRoZSAndGFyZ2V0JyBpbXBsaWVkIGJ5IHRoZSBhYm92ZSwgJ3RhcmdldCcgd2lsbCBhdXRv
bWF0aWNhbGx5IGJlIHR1bmVkIHRvIGF2b2lkIHRoZSBuYXN0eSBlZmZlY3RzIHRoYXQgbWlnaHQg
Y2F1c2UgLSAqdW5sZXNzKiB5b3UgbWFudWFsbHkgb3ZlcnJpZGUgaXQuICBTbyBkb24ndCBkbyB0
aGF0LgoKRUNOIGVuYWJsZWQgZmxvd3Mgc2hvdWxkIG5vdCBlYXNpbHkgbm90aWNlIGFuICdydHQn
IHNldHRpbmcgdGhhdCdzIHRvbyBzbWFsbC4gIFJGQy0zMTY4IGNvbXBsaWFudCB0cmFuc3BvcnRz
IG9ubHkgY2FyZSBhYm91dCBob3cgbWFueSBSVFRzIGNvbnRhaW4gYXQgbGVhc3Qgb25lIENFIG1h
cmsuICBOb24tRUNOIGZsb3dzIG1heSBzZWUgZWxldmF0ZWQgcGFja2V0IGxvc3MsIGhvd2V2ZXIs
IGFuZCB0aHVzIG1vcmUgcmV0cmFuc21pc3Npb25zLCBidXQgdGhlIHNhbWUgY29uZ2VzdGlvbiBj
b250cm9sIGJlaGF2aW91ci4gIENha2UgcHJvdGVjdHMgdGhlc2UgZmxvd3MgZnJvbSBleHBlcmll
bmNpbmcgInRhaWwgbG9zcyIgd2hpY2ggY291bGQgbGVhZCB0byBhbiBSVE8gdGhhdCB0aGUgZW5k
LXVzZXIgd291bGQgbm90aWNlLgoKPiAyKSBJZiBpbnRlcnZhbCBpcyBkcmFtYXRpY2FsbHkgdW5w
cmVkaWN0YWJsZSBpcyBpdCBiZXN0IHRvIGVyciBvbiB0aGUgc2lkZSBvZiB1bmRlciBvciBvdmVy
IGVzdGltYXRpbmc/Cj4gCj4gVGhlIHVzZXIgbWF5IHNlbGVjdCBhbiBWUE4vZXhpdCBzZXJ2ZXIg
b2YgdGhlaXIgb3duIGNob29zaW5nLCB0aGUgcGF0aCB0byBpdCBvdmVyIHRoZSBuZXR3b3JrIG1h
eSBjaGFuZ2Ugb3IgdGhlIGV4aXQgbWF5IGJlIG11Y2ggZnVydGhlciBhd2F5LiBCb3RoIDEwbXMg
YW5kIDgwbXMgd291bGQgYmUgc2FuZSBjaG9pY2VzIG9mIHRhcmdldCBkZXBlbmRpbmcgb24gZmFj
dG9ycyB0aGF0IG1heSBjaGFuZ2Ugb24gdGhlIGZseS4KCkdlbmVyYWxseSB0aGUgZGVmYXVsdCAn
cnR0JyBvZiAxMDBtcyBpcyBzdWl0YWJsZSBmb3IgZ2VuZXJpYyBJbnRlcm5ldCBwYXRocywgaW5j
bHVkaW5nIG5lYXJieSAxMG1zIGhvcHMgYW5kIDUwMG1zIHNhdGVsbGl0ZS1saW5rZWQgaXNsYW5k
cy4gIFRoZSBkZWZhdWx0IDVtcyB0YXJnZXQgYWN0dWFsbHkgcHV0cyBhIGZsb29yIG9uIHRoZSBt
aW5pbXVtIGVmZmVjdGl2ZSBSVFQgdGhhdCB0aGUgbWFya2luZyBzY2hlZHVsZSBoYXMgdG8gY29w
ZSB3aXRoLiAgVGhlcmUncyBhbHNvIGEgZ29vZCBjaGFuY2UgdGhhdCB0aGUgImh5c3RhcnQiIGFs
Z29yaXRobSBpbiBDVUJJQyB3aWxsIGRyb3AgaXQgb3V0IG9mIHNsb3ctc3RhcnQgb24gdmVyeSBz
aG9ydC1SVFQgcGF0aHMgYmVmb3JlIHRoZSBBUU0gdHJpZ2dlcnMuCgogLSBKb25hdGhhbiBNb3J0
b24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
