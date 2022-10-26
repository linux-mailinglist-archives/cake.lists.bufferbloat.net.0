Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF79E60EA9A
	for <lists+cake@lfdr.de>; Wed, 26 Oct 2022 22:53:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AED6C3CB4D;
	Wed, 26 Oct 2022 16:53:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666817587;
	bh=2/7fO/50S9yzrIvLLZF1tr25gI706DJKzzNiFXM+ah8=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=OxaAF1mCPC73ULLr3VOzvP3BhlBkQnwB+llVeL+ZoCX6p5ZaXX1mUEKAYE7J+a78b
	 AB6CjzB+2ovR5e4LWC7yWNe2PDzNK59kb7vA8JAfzS6/2uvEhOaSGTpuFac6nUfD64
	 C85awC2u5PazudijEy/f6p1BVvOIB+7gVRwUiOZhGXFIz6Mu21rT7AqiU0SrnhDDjO
	 mrFKynlmxGt69PEBOcTVMu3n3sWYwwdkBw+uqPYS1DwsATVoP5bVCIzeySrUzZ4mcK
	 jTQOsq/1Suc8YZX8D3ew9psOqHdTxq3wrOSKifTFtxRc6Ru1ufXZux1quNMljdsx4J
	 NW2/M5Bwl414g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 522333B2A4;
 Wed, 26 Oct 2022 16:53:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1666817582; bh=9BsBh9fNZvd07fYsd3BCmy36c6ZK8uFB6ljtRxtrqL0=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=pnkGTAHfm1zOvI8fm5UBIR7RMABMB5/pHx6PzN4ZRpFbDzoTMkaA/1+fwdlP6RCRW
 2KbXLjbnuQn6eIKJI+uN6ruz5SxIa+pbPSs9Ub5537cUsAge/3vphEW4V9jKF5W6tt
 IBDJ++FuRChrPFNSGfxo9AqfJ2iNcGSk1L01Eh6UTZdG9E55QpSo4p569bn9qnskym
 l7KbP7Rmr6R79bMg3QJIr67IkdFUdHMeC8rZneLRUiXi01GRuyVYsr9SQdARaecw0p
 BSvEkANXHKvKSHq8RECejsI1d02EVvTrkfAgGep4aAnzWq7z5hPBOx2PNdvKXx3NU+
 Ni6Qc9OMiT8tw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([84.157.42.192]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MgvrB-1pH3L91Wbl-00hQ4r; Wed, 26
 Oct 2022 22:53:02 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <CAA93jw5T-qUGsAeewUx=V5k2vZXn85FeY5mYosx2_E4PccMVtw@mail.gmail.com>
Date: Wed, 26 Oct 2022 22:53:01 +0200
Message-Id: <74E5EB6A-A4CB-457C-A10E-4B609F699764@gmx.de>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
 <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
 <C0D30810-C913-4E31-A18B-CD3887C329E9@gmx.de>
 <CAA93jw5T-qUGsAeewUx=V5k2vZXn85FeY5mYosx2_E4PccMVtw@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:iEyE/jqhPciFmlMYC24yIkF17e8mC5+IuWW6l+brHn1p2/cWo/h
 Q+Eyiu+zQ4WMhzb1lD9w6Ib98DAtIDNv77Z0/FqRdncPU2rY7UBpmJoyw4DkQoZ3lVsGJvQ
 a/gc/DXEqmiNLDpFgsgt57eL+QKwVBoNkbsMkEjJg9OJnNL+u5eswLtsMZcP2meYNabfZu3
 gQBuuKhz6P6QYv1/0vvRQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:jYfWs05MuiE=;WfQKml03Glr+FBDxSnEUE+3HMoT
 FWAmj+feGb6mAWIpzFRaO8fsDLNnp3qpyXI4VGPzBTOJZx52fM/bQzLO/5+R4Tb6milXjDN6K
 cZZ3q6gj12E3OZgduqD2qYDe+isL++jgO3xe+ksAhA4dmGC9mH8DJlvIUwBIPmkAcaz7/pzVI
 cJc4GIIoRS1leAi7ZuduHo4i06DaowuBDSdP7CZMhhzJaNChN/VyRMjuCwG3R2ZeSdsM8A511
 NxAMYNfpdS18cQKP5vvLOLKjwoFnn8cUPN/luj/u1zYrdnIMNJNf2ltOsJV5kNHGz0WG1r0Tn
 p2GSRRLdNMzkIqaG7sePhCe51C12FdhlhnzlbqK2/GLt+8ogG5LBWq1j1mKerMkuwchk9jp76
 wSkAk2FRh4iG1PihDsdRaxN6OiBXVYZIBwu9Ez5NZPEeGO/jAn/haqB29tXNLQaEMvV3uGXyq
 Mw4QoVzKH6UqkaZCvUAcrFt46BNf3SHtpwCbsk/lfEQBwrhUWLBVRNqeND7BXFbNppm01237g
 3o5luGRVsGayyUwoBw8RyTyQsxMT3P5g4hesWPhKDmR2A9C+yPLKaD2grYoeSLLyjv06MeMKj
 xA3kLJxr+SuMzyYy6t7+E9RfVIT7Y3SeyGsEom8MmYU8fpOAkik8spfq507WDK4yJL0AajHyD
 lu4LiuOxEEknXIs5awearwSM4jcFMZ8SygkbssWYnDustXB9f+ZYklakCo2OsxNcPjuucEBd1
 2zSl8xJZx7MgQqKAn48H2RKd22lZSLOTksgpNJYY5jhF0+xqQvMNUxyM/KpSNoCBnmcYm3h5G
 JopqJB23MJiQbh9L6hTRnO/NOA088u6sao/wZQRpJewakyOWraUOCFSMrs1zwc5myOL+XH1U2
 Oq+jJq2oetj7WiNoSVDXaIIeXk9aP7rjzMfe1kGFJ8msfh0TX4dnjZBmPNMnNOxncxno+SmzL
 fuYIiJ+7C+/9ly4gtgAISa8R1Q0=
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] The most wonderful video ever
 about bufferbloat
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
Cc: Stuart Cheshire <cheshire@apple.com>, Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwKCgo+IE9uIE9jdCAyNiwgMjAyMiwgYXQgMjI6NDIsIERhdmUgVGFodCA8ZGF2ZS50
YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gSSBsb3ZlZCBwYWNlZCBjaGlycGluZy4KCglbU01d
IFllcyBpdCBzb3VuZGVkIGxpa2UgYSBjbGV2ZXIgaWRlYSAoaG93ZXZlciBJIHdvdWxkIHByZWZl
ciBhIGNsZWFyZXIgc2lnbmFsIGZyb20gdGhlIG5ldHdvcmsgYWJvdXQgcXVldWUtZmlsbGluZyku
IEhvd2V2ZXIgSSBoYXZlIGhlYXJkIHByZWNpb3VzIGxpdHRsZSBhYm91dCBwYXJjZWQtY2hpcnBp
bmcgYWN0dWFsbHkgd29ya2luZyBpbiB0aGUgcmVhbCBpbnRlcm5ldCwgd2hpY2ggSU1ITyBtZWFu
cyB0aGUgZm9sbG93aW5nIHF1ZXN0aW9ucyBhcmUgc3RpbGwgb3BlbjoKYSkgZG9lcyBpdCBhY3R1
YWxseSB3b3JrIHVuZGVyIGFueSByZWFsaXN0aWMgY29uZGl0aW9ucz8KYikgdW5kZXIgd2hpY2gg
Y29uZGl0aW9uIHdpbGwgaXQgZmFpbD8KYykgaG93IGxpa2VseSBhcmUgdGhlc2UgY29uZGl0aW9u
cyBvdmVyIHRoZSBleGlzdGluZyBpbnRlcm5ldD8KCklJUkMgaXQgdXNlcyBwYWNrZXQgc3BhY2lu
ZyB0byBkZWR1Y2Ugd2hldGhlciBjYXBhY2l0eSBoYXMgYmVlbiByZWFjaGVkLCBhbmQgc2luY2Ug
cGFja2V0IHNwYWNpbmcgaXMgYSBrbm93biB1bnJlbGlhYmxlIHNvdXJjZSBvZiBpbmZvcm1hdGlv
biBpdCBuZWVkcyB0byBhdmVyYWdlIGFuZCBhZ2dyZWdhdGUgdG8gbWFrZSB1cCBmb3Igb3BlcmF0
aW5nIGJhc2VkIG9uIHF1ZXN0aW9uYWJsZSBkYXRhLiBJTUhPIGl0IHdvdWxkIGJlIHByZWZlcmFi
bGUgdG8gc29sdmUgdGhlICJxdWVzdGlvbmFibGUgZGF0YSIgcHJvYmxlbSBhcyBteSBndXQgZmVl
bGluZyBpcyB3aXRoIGJldHRlciBkYXRhIHdvdWxkIGNvbWUgc2ltcGxlciBzb2x1dGlvbnMgdG8g
dGhlIHNhbWUgY2hhbGxlbmdlLgpPciBJIGFtIHNpbXBseSBtaXNyZW1lbWJlcmluZyB0aGUgd2hv
bGUgdGhpbmcgYW5kIGJlIGJhcmtpbmcgdXAgdGhlIHdyb25nIHRyZWUgOykKCj4gSSBhbHNvIGxv
dmVkIHBhY2tldCBzdWJ3aW5kb3dzLgoKVGhhdCB3YXMgYWxsb3dpbmcgInJhdGVzIiBiZWxvdyBv
bmUgcGFja2V0IHBlciBSVFQ/Cgo+IEkgd2lzaCB3ZSBjb3VsZCBhbGwgYWdyZWUgdG8gZ2V0Cj4g
Y3JhY2tpbmcgb24gd29ya2luZyBvbiB0aG9zZSB0d28gdGhpbmdzIGZvciBjdWJpYyBhbmQgcmVu
byByYXRoZXIgdGhhbgo+IHdoaW5naW5nIGFsbCB0aGUgdGltZSBhYm91dCB0aGUgc3R1ZmYgd2Ug
d2lsbCBuZXZlciBhZ3JlZSBvbi4KCjspLiBZb3UgbWlnaHQgaGF2ZSBzZWVuIHNvbWUgb2YgbXkg
Y29kZSwgd2hpY2ggc2hvdWxkIGluZGljYXRlIHRoYXQgbWF5YmUgSSBhbSBub3QgZ29pbmcgdG8g
YmUgYWxsIHRoYXQgaGVscGZ1bCBpbiB0aGUgImdldCBjcmFja2luZyIgZGVwYXJ0bWVudCA7KQoK
ClJlZ2FyZHMKCVNlYmFzdGlhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
