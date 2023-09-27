Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D39A97B0D87
	for <lists+cake@lfdr.de>; Wed, 27 Sep 2023 22:44:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA7543CB39;
	Wed, 27 Sep 2023 16:44:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695847495;
	bh=+NVNnOyDXP3lBEPVncrtccK6tJy2R7xQ8X/22KyzDig=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Rw9IRBbPnjHAAYBh7R83/H0kalN7pDgJColuogbh+QESoescA5oSBinI+cv10pCb+
	 e3WDyWS4ovAmifW+UaWSa5s7wtGvDkffZAAVQLfbsMMtXEy60g+TGq6bzAh1e+357C
	 OsErahZO3vCHqzaYh8LIbqgThMO/ZbWERRWzoSS9wuaA6d/fqSXDvOsWO/1Ckx3Wqm
	 tGE/21mgu6v1RnVbDYIYAhh6/aHzcczv/bDkVZOcNh3jUHx/cwB64ho6ZBpQSG2Mjo
	 ZtNv5K7ro8DOZR//KD9wQJIYN4dkFLn9nAptAlXd1NcjzuneZuKtVuJ+ciVBq45kGJ
	 1ZKPICLrFFJ+Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4A3843B2A4
 for <cake@lists.bufferbloat.net>; Wed, 27 Sep 2023 16:44:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1695847492; x=1696452292; i=moeller0@gmx.de;
 bh=+sJhRfSnpdLcOiroacxaf5+HQbrTp2SOaZTqbZPCO/k=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=MduJpQLCN8d0mz4niW7t0DcTMae7sIGxY+kJ9kMGjZrrFyvY31k4vANKaMHLlqYqBVWt2cCTfhj
 gIrF/LnvUtqcWsoc1kl/vlAouKhz/UXoIyrhy8KV70p7wE6Il4OBgchsvpW0LP1olXHIH/ew7rzMR
 nWtVo62rhvwNDiLx3q6Z1B8JxMKMvF7awE9edtdukzI0Gzmv80B+PaUXeWwKoqkEI8FsrMaKDZsUa
 gH/zDjV5H4/hYGWdj/u8lEpIvU+S/Pn0fbkPFZN0nSuLgQc5RWCqYNAffJg9tIp5svqlw2bPepMrv
 uN8wiZdmGyIYl+2KcV7jGycLp51WlvOHCxbQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([77.10.163.125]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M5fMY-1qjwiM0ixW-007D9E; Wed, 27
 Sep 2023 22:44:52 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
In-Reply-To: <20230927132732.6585172a@hermes.local>
Date: Wed, 27 Sep 2023 22:44:51 +0200
Message-Id: <219B7A03-E587-43AF-8A98-B7872B3B525B@gmx.de>
References: <e6464f0d9e7e4c91b26f2d08d72b1a0c@diadema.cz>
 <20230927132732.6585172a@hermes.local>
To: Stephen Hemminger <stephen@networkplumber.org>
X-Mailer: Apple Mail (2.3696.120.41.1.4)
X-Provags-ID: V03:K1:p443yuyL6amFduXaXAxhKnMfvgZNf2YM+WeSGyj5ET+WdmHG7Ft
 52kPYiQdBUQmODUc9B7F8KDkHhedXH2N4Xl0wHBUAxlOFt0zYxE8lJRPf5QDXADJBEkB6hK
 4faUdrLDdeafcLqBSGrU24ja6LqOJHIrO62Y7Nv34OnWUb0VNAtjZ+i+cAqZ+y9Ecl0Kfh6
 R3oIHqERCIVPhm5hNJzXA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:oWrP7i81gOw=;GOELJSpOmZVOWS1m4RdeTaU8YGQ
 2jycYFYLwJs4L62kE1zWK9PjM1cRt0N6GfL1qIRIQn/F+rPFG0utSfGXgPJwxTJE5jdWQg+Kc
 gIixMZ9DLKtD/M6T82DP+Yy5NV34AdlVPXWZ5xpIb5Ly2rwOyT8KRbhfiNFylWQO1fVpMe3Pk
 s5i+awoldNldLIXVCmC/aiMnA+rCZbFSezQ4Px7sjJ0CuoJyO56aTiG4UpgMRER4YyFyXn2zW
 Tdyjh76VzMX63fWLIwj7cjKN9eeyB/bcucDIoTUEvZCvOQ+3XuX6I9Y1Y8GDrxFlp2jtozt7h
 KdRwOAYbuBi2jgL3zs1DESGx72Y6Rqz5y48pddVhTal6yEo2ri7kYdSwdmLGM1afYSZ5npYRD
 54juN0WtoiV+SpXvpeGedmKsZR9HwVqqPSWp6cW6VOatsF+bJd8HlEbULjDuOsUZrjOyBg7Vp
 utiLmYKKZ1xVSpj54MhPZ0l0hUto2eTx8uZd3NDUQS221NdEIC27B8zJ5wBsn0JHrzQmksZs1
 RdAfcQyuBXPUwbSjvESVaRnUvfrc3TqYa0LkPlawRatTb5/TuTZ6aQyAEWavkFt71kAIEiX//
 HmRw2tBFDgBtu9Oy+qWGf0bTOraXtUwC7YKgIjVao1mTVlgcLPGjX9EecYjvkMjuv6/IlD/Dq
 uMno/EY1lExScNRcQodswjTaQitqOLzyabrRpqbGMsaaL7JSuJRqPdTr2qZ/w5Ov1ZLtE6k3v
 /ntnae84d0VNqjSc8W69gG0F/qXE+joryK6uETdlUk6ubZlLdxSXVsI9Yu3cjFQ6TUAEBIRb3
 lGbt25uMNL4Dx048LmE0wN1PfQldBuAeg7cr8etnwbp++3IBoYyQgXlKPWoKumzYqk22nRx6a
 iLO+nM4xVDE1D5949w6Nc/d4bt1uJhaDvwoL9RbILsOi1TUxNR2X0h2RKSboDH+6/GhCpHnDw
 7xRM/BYugjC3Nx6sVBEEbkTE/7I=
Subject: Re: [Cake] Cake - flow (or host) weight request - how to implement
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
Cc: Jan Rovner via Cake <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgU3RlcGhlbiwKCgoKCj4gT24gU2VwIDI3LCAyMDIzLCBhdCAyMjoyNywgU3RlcGhlbiBIZW1t
aW5nZXIgdmlhIENha2UgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPiAKPiBP
biBXZWQsIDI3IFNlcCAyMDIzIDE3OjQ4OjA2ICswMDAwCj4gSmFuIFJvdm5lciB2aWEgQ2FrZSA8
Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+PiBIZWxsbywKPj4gCj4+IEkg
YW0gdHJ5aW5nIHRvIGV4cGVyaW1lbnQgd2l0aCBzY2hfY2FrZS5jLCBteSBnb2FsIGlzIHRvIGFk
LWhvYyBwcmlvcml0aXplIC8gZGVwcmlvcml0aXplIHRyYWZmaWMgc2VydmVkIHRvIHNwZWNpZmll
ZCBhIGhvc3QocykuIFRoZSBwcmlvcml0aXphdGlvbiB3b3VsZCBiZSBjb250cm9sbGVkIGJ5IGFu
IGV4dGVybmFsIHN5c3RlbSBhbmQgaXQgc2hvdWxkIGhhbmRsZSB3ZWxsIHRoZSBzaXR1YXRpb24g
d2hlcmUgYSBob3N0IGhhcyBhY3RpdmUgZmxvdyhzKS4KPiAKPiBJcyBpdCBwb3NzaWJsZSB0byB1
c2Ugb25lIG9yIG1vcmUgZXhpc3RpbmcgQlBGIGhvb2tzIHRvIGNoYW5nZSBEQ1NQIGJpdHMgZm9y
IHRoYXQgcGF0aHMgeW91IHdpc2ggdG8gYWRqdXN0Lgo+IFRoZSBwb2ludCBpcyB0aGF0IGNoYW5n
ZXMgdG8gdXBzdHJlYW0gYmFzZSBjb2RlIGFyZSBoYXJkIHRvIG1haW50YWluLCBhbmQgdGhhdCBp
cyB3aGF0IEJQRiBpbml0aWFsIGhvb2tzCj4gd2VyZSBtZWFudCB0byBwcm92aWRlLgoKCUlJVUMg
dGhlIE9QIHdhbnRzIG5vdCBvbmx5IHRvIHN0ZWVyIHBhY2tldHMgaW50byBhIHNwZWNpZmljIHRp
ZXIgYnV0IHJlYWxseSB3YW50cyB0byBtb3ZlIGEgaGFzaC1iaW5zIGNvbXBsZXRlIHN0YXRlIGJl
dHdlZW4gdGllcnMgKGhlIHRhbGtzIGFib3V0IGNvYmFsdCBzdGF0ZSkuIE15IChsaW1pdGVkKSB1
bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhpcyB3b3VsZCBuZWVkIGNoYW5nZXMgdG8gY2FrZSdzIGtl
cm5lbCBjb2RlLCBlaXRoZXIgYnkgYWx3YXlzIGtlZXBpbmcgc2hhZG93IGNvYmFsdCBzdGF0ZSBw
ZXIgaGFzaC1iaW4gaW4gYWxsIHRpZXJzIG9yIGJ5IGltcGxlbWVudGluZyBhIHN0YXRlIGNvcHkg
cHJvY2VkdXJlLi4uCglOb3csIEkgYW0gbm90IHN1cmUgaG93IHdlbGwgbW92aW5nIGZsb3dzIGFy
b3VuZCBwcmlvcml0eSB0aWVycyBpcyBnb2luZyB0byB3b3JrIG9uIGEgdGltZXNjYWxlIHRoYXQg
cHJlc2VydmluZyB0aGUgY29iYWx0IHN0YXRlIHNlZW1zIGltcG9ydGFudCBhbmQgaG93IHRvIGF2
b2lkIHJlLW9yZGVyaW5nIGlmIGEgYSBmbG93IGlzIGluY3JlYXNlZCBpbiBwcmlvcml0eSB3aGls
ZSBpdCBzdGlsbCBoYXMgcXVldWVkIHBhY2tldHMgaW4gdGhlIGxvd2VyIHByaW9yaXR5IHRpZXIg
KG1heWJlIHRoZSBzb2x1dGlvbiBpcyBtb3ZpbmcgYm90aCBjb2JhbHQgc3RhdGUgYW5kIHF1ZXVl
ZCBwYWNrZXRzIGJldHdlZW4gdGllcnMpLgoKUmVnYXJkcwoJU2ViYXN0aWFuCgoKCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcg
bGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
