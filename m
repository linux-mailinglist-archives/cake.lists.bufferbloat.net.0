Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 412ECACA2A
	for <lists+cake@lfdr.de>; Sun,  8 Sep 2019 02:59:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 392253CB67;
	Sat,  7 Sep 2019 20:59:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1567904348;
	bh=eRecsumQG2cwlDWJjR3y52Zq3G7i0SlmFMK5XpFg7sE=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mCK3iVBy46cNX/x4eCp8b4KEooSnsLzaF3rvg1eqklkOwzxyiuX2mY6VHZ6hCDn7x
	 nKAUEH9pAJbNGV6HEUePrHb0dPeGTUOwqfzcDOzAfiFEi5Plqtja4gnwWIdxsEMWqT
	 5orqSEVmZeS2LP+DI2qnrV6Q/4ST6J/aMw/3zeZk+rmFPQJM6uEJRk0SOZwKxxQsjI
	 PCAkxNAD/Xc5AspNbCbUZeqBsV6fWorayRrsWmgg070t0Csj39CDBFVOUbty3Ig4vr
	 chj8n+ShdnjncmvYfGfQD+PNXPDzQGWMotYefe4at1SYmohsl7gEDT9JS3NiOpN6JQ
	 tU87aiNUotrtw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BFE3F3B2A4
 for <cake@lists.bufferbloat.net>; Sat,  7 Sep 2019 20:59:06 -0400 (EDT)
Received: by mail-lj1-x244.google.com with SMTP id y23so9345509lje.9
 for <cake@lists.bufferbloat.net>; Sat, 07 Sep 2019 17:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=rdlnFjDss5TOEvfCwzQ5JXa2/a60yGZL/m5hZAGI5a4=;
 b=tHTaq7UOgm4zNbLtHJvTv3HmysSgN0SujHJ7XSwl5IXjcsXX4J06aaZHagYD5i+So2
 WIwkGEDtqlXnL9eKU63KJFO94vu3aCkVUY9NFT0AQQOXTrbZRHYvEGm0ZKzWsTpouDjb
 3U9iuzTVDKSZ5hl+VfwPB0ZE+V83q8HeuxVVmbLES/sFPW0xsjIpAhuwnWV3B5ntfaxV
 u3aj7zPitMhHwVOrUwtqShnXHykdn3U92vQdORCziFY6FLctzogfqxDFQLNGVTDmA32b
 QmJNAWSazNrAt3N6Q+TY2Uw6pXyQlegzeFQJwPYKsQ9kr3gLRNaof3oNppY9WZYq9hmv
 +n3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=rdlnFjDss5TOEvfCwzQ5JXa2/a60yGZL/m5hZAGI5a4=;
 b=WMZKfEUtTspD6jJ5GkrhDg4x4k4SGntCSPrhhF+0e/g/wWFqdnO5TUNEtLV1u88tZn
 /+L6Ql7tEysEQLUudzaYguW2PyyqBCHOKc7t9aP3r4FVGoQRlKXjhO/xvnr8NZEpXxh8
 2uMleC9Z7fesIsvm7LMyjYokwJjjyTD+ryqjgywSZmFaO7hOySS/PBxkIg0Zux6cQUla
 6y72/xDv37fHZ2Z2rrNZh0vQjHTs00HDI5W+2mdFL+KxjIZUmX5WMvx/qJ5qpMxBK5KL
 yBcNctp0RVIRHqF74b7Nyih/aLCIxiA4wEDOCUB620jYHDGzsnSBrEUBLYajIOOQM+Q+
 epNw==
X-Gm-Message-State: APjAAAX7PA1zgNv1Mr52ceBMBbfjTf9vxBAwjJnKVkT8BP4cjfRRILNJ
 3H5yq44ZK7nB1tc/dMcAlB+Hv5oIFv0=
X-Google-Smtp-Source: APXvYqy2916oV4Rmj2ko20tvThg287i84bQEv12YYd4CN8Pph/UegCkpoH+W+Xqg+9TsP2uLUqYlhA==
X-Received: by 2002:a2e:8814:: with SMTP id x20mr10939532ljh.221.1567904345733; 
 Sat, 07 Sep 2019 17:59:05 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-193-nat-p.elisa-mobile.fi.
 [83.245.237.193])
 by smtp.gmail.com with ESMTPSA id a3sm1937853ljb.36.2019.09.07.17.59.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 17:59:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
Date: Sun, 8 Sep 2019 03:59:03 +0300
Message-Id: <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
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

PiBPbiA4IFNlcCwgMjAxOSwgYXQgMzowMyBhbSwgSnVzdGluIEtpbHBhdHJpY2sgPGp1c3RpbkBh
bHRoZWEubmV0PiB3cm90ZToKPiAKPiBTbyB5b3UgYmVsaWV2ZSB0aGF0IHNldHRpbmcgdGhlIHRh
cmdldCBSVFQgY2xvc2VyIHRvIHRoZSBwYXRoIGxhdGVuY3kgd2FzIG5vdCB0aGUgbWFpbiBjb250
cmlidXRvciB0byByZWR1Y2luZyBibG9hdD8gSXMgdGhlcmUgYSBjb25maWd1cmF0aW9uIEkgY291
bGQgdXNlIHRvIGRlbW9uc3RyYXRlIHRoYXQgb25lIHdheSBvciB0aGUgb3RoZXI/IAoKVGhlIHNl
Y29uZC1vcmRlciBlZmZlY3QgSSBtZW50aW9uZWQgaXMgcmVsYXRlZCB0byB0aGUgJ3RhcmdldCcg
cGFyYW1ldGVyLiAgQ2hlY2tpbmcgdGhlIGNvZGUsIEkgYW0gcmVtaW5kZWQgdGhhdCB3aGlsZSBD
YWtlIGl0c2VsZiBjYW4gaGF2ZSAndGFyZ2V0JyBzZXQgZnJvbSB1c2Vyc3BhY2UsIHRoZXJlIGFj
dHVhbGx5IGlzbid0IGEgcGFyYW1ldGVyIHRvIHRoZSB0YyBtb2R1bGUgd2hpY2ggYWxsb3dzIHNl
dHRpbmcgaXQgaW5kZXBlbmRlbnRseSBvZiAncnR0Jy4gIEJ1dCB0aGVyZSAqaXMqIGEgdGFibGUg
aW4gcV9jYWtlLmMgKGluIHRjKSB3aGljaCB5b3UgY2FuIHRlbXBvcmFyaWx5IGV4dGVuZCB3aXRo
IHRoZSBmb2xsb3dpbmcgZW50cmllcyBmb3IgZXhwZXJpbWVudGF0aW9uOgoKc3RhdGljIHN0cnVj
dCBjYWtlX3ByZXNldCBwcmVzZXRzW10gPSB7Cgl7ImRhdGFjZW50cmUiLAkJNSwJCTEwMH0sCgl7
ImxhbiIsCQkJNTAsCQkxMDAwfSwKCXsibWV0cm8iLAkJNTAwLAkJMTAwMDB9LAoJeyJyZWdpb25h
bCIsCQkxNTAwLAkJMzAwMDB9LAoJeyJpbnRlcm5ldCIsCQk1MDAwLAkJMTAwMDAwfSwKCXsib2Nl
YW5pYyIsCQkxNTAwMCwJCTMwMDAwMH0sCgl7InNhdGVsbGl0ZSIsCQk1MDAwMCwJCTEwMDAwMDB9
LAoJeyJpbnRlcnBsYW5ldGFyeSIsCTUwMDAwMDAwLAkxMDAwMDAwMDAwfSwKKworCXsibWV0cm8t
bG9vc2UiLAkJNTAwMCwJCTEwMDAwfSwKKwl7ImludGVybmV0LXRpZ2h0IiwJNTAwLAkJMTAwMDAw
fSwKfTsKCklmIHRoZSBlZmZlY3QgaXMgZ2VudWluZWx5IGR1ZSB0byBtYXJraW5nIHJhdGUsIHRo
ZW4gJ21ldHJvLWxvb3NlJyBzaG91bGQgYmVoYXZlIGxpa2UgJ21ldHJvJyBhbmQgJ2ludGVybmV0
LXRpZ2h0JyBzaG91bGQgYmVoYXZlIGxpa2UgJ2ludGVybmV0JywgdG8gYSBmaXJzdC1vcmRlciBh
cHByb3hpbWF0aW9uLiAgSWYsIG9uIHRoZSBvdGhlciBoYW5kLCBpdCdzIGR1ZSB0byB0aGUgc2Vj
b25kLW9yZGVyIGludGVyYWN0aW9uIHdpdGggQ1BVIHNjaGVkdWxpbmcgbGF0ZW5jeSwgdGhlIHJl
dmVyc2UgbWF5IGJlIHRydWUuICBUaGUgbGF0dGVyIGlzIG5vdCBzb21ldGhpbmcgeW91IHNob3Vs
ZCBiZSBjb3VudGluZyBvbiwgYXMgaXQgd2lsbCBpbnNlcnQgcmFuZG9tIEFRTSBtYXJraW5nIGV2
ZW4gd2hlbiB0aGUgbGluayBpcyBub3QgYWN0dWFsbHkgc2F0dXJhdGVkLgoKWW91IGNvdWxkIGFs
c28gc2V0IGl0IGJhY2sgdG8gJ2ludGVybmV0JyBhbmQgcHJvZ3Jlc3NpdmVseSByZWR1Y2UgdGhl
IGJhbmR3aWR0aCBwYXJhbWV0ZXIsIG1ha2luZyB0aGUgQ2FrZSBzaGFwZXIgaW50byB0aGUgYWN0
dWFsIGJvdHRsZW5lY2suICBUaGlzIGlzIHRoZSBjb3JyZWN0IGZpeCBmb3IgdGhlIHByb2JsZW0s
IGFuZCB5b3Ugc2hvdWxkIG5vdGljZSBhbiBpbnN0YW50IGltcHJvdmVtZW50IGFzIHNvb24gYXMg
dGhlIGJhbmR3aWR0aCBwYXJhbWV0ZXIgaXMgY29ycmVjdC4KCiAtIEpvbmF0aGFuIE1vcnRvbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
