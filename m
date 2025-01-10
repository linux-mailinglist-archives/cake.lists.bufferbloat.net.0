Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EABA09C75
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 21:34:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D07823CB39;
	Fri, 10 Jan 2025 15:34:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736541264;
	bh=EC4Td3y5RBQRDb3dTJj6HyHzblEu+3+RPMteCF5igrc=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=PxeU15dPrq9gOC3GJ+fo0lIm9W2LPcCKofGc6FSvb3MqI5bMNjJ6m5zT5vZPe49D5
	 y1xuwQUxDuv9HwzEdvTqZMQN14zpQaRgKgDZP7lOGF4FiPVSqbv9wsTscllbb03ki4
	 s2Rm0B5jcK30Ar4xjCyZ+cwT+s278G/w9Gk9KUhV32kbsmPEZmoGotOHjlOLQhqLM1
	 O9rJa25GZ5c3vk4+XFLGitTVp5vUEZ0p49fJ2A9q5wEaI2kedFrDfCZB8VdU6WtUrR
	 +IL7EFs6LiIYdHg/M9P+3TFkAxhTf59hnHQFoufKw74XJRhHH2LiGB+hdWF4blH5gd
	 VOu2wQVpTyJmw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9FCB43B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 15:34:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1736541259; x=1737146059; i=moeller0@gmx.de;
 bh=S5lybsaFnD9yIDnEvMtFhMfYbRCGH4nL3RDOYuBx77k=;
 h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
 References:To:cc:content-transfer-encoding:content-type:date:from:
 message-id:mime-version:reply-to:subject:to;
 b=fguZzUh8RX6Z8C4ZlX3fIn5bNE8Ihjyu83brpjpVWlCLsxaqXYzlGK7d5dHKkpKE
 mrWVcF7IX0L1fLKc83sqh9b90a8AUZMfGhK/H4RJl23DjwPsuWcT4CkQuoj/VCKFM
 vVHZq5+0pJHTycsj1X1KmYJIqav3hkx0p3Qbn55vkUnnjlEaS7u0ss+MysYS+M7hc
 zbw6yI0Sx6LUtIrA80HsVPbL+OMhajnk5stCa23M0XqjV0IoS3ziqgJBy56vy4odZ
 74HG2eII3c/MvR3WT94a4Wh0W3GlYMw7E4+/6NXueIDpmHPir3tYRjZd7ixg2L2s7
 slKwa5953TyCLCu26w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([77.8.251.184]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MyKHm-1tMP2M40Wy-013cT9; Fri, 10
 Jan 2025 21:34:19 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
In-Reply-To: <CAA93jw7XUfR7Ww40nh5EZ8U8pMUezhSY6PFLoaGj+pGnzeYZbg@mail.gmail.com>
Date: Fri, 10 Jan 2025 21:34:08 +0100
Message-Id: <F4B37725-18F6-45DB-8BD1-02849E146108@gmx.de>
References: <20250110155531.300303-1-toke@redhat.com>
 <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
 <CAA93jw54GOfYP56XTh-jjjfAbybNDeYUgUENNA2+aSQbXpS91A@mail.gmail.com>
 <FAD46B40-2142-4254-BA44-C9AD9EEFB924@gmx.de>
 <CAA93jw4mj2RdtqdDT3ug5j8EZSsYujC1V_SjQEcjmCVCUZU+jw@mail.gmail.com>
 <898E9FB0-D92E-4421-8CCD-1B9F4A3D9D5D@gmail.com>
 <CAA93jw7XUfR7Ww40nh5EZ8U8pMUezhSY6PFLoaGj+pGnzeYZbg@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-Provags-ID: V03:K1:iPBTLOIVqP/rOj08E3C9Cbtqol4lyijYpTOpi8is+n1nAflQVaR
 2HijMXpm+8gdx9XcjT2AGDExnlV0FhWkuQj4Rx16cddJTh9td3rTDSf0/6NVbZKIfyv2lvL
 LGycIbIYWc3uYVSFMl5UYNCRn+4Wy5Ub6QWVky8iKjlW3Q0oMXLHKD+dKIVnIl5VDT+PfEf
 c7qCKqbOEUuvi0svXV5VA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:4T4qPQlzBkY=;dZpRHd9vsQED7VgJEFUuFvy/pTp
 BgAJsB34v1BjS0uhCmDWyhgEybQB/MPAZlB5NpZ+I7v4Nb4dX6OkGrVdt593ynU5s69TvkOIs
 /FVt/kQvAF8FT+zJUpEDjapqeKJ2jr58h6DrGse8zUADnS6gARcG28yqE1bWqY+yRvKzOG+Un
 SW/a0Z88qA8VP6DaQcqaTBnLnwK52cElTE8ah2aBMGsYDCCGqUwQStMeMiKmTRrEMphIOtlfN
 FawVs+aqBKqaQEqMni1hfdZEYEsP+D0rfqJLf2HVNK9KwMLwSXl0zVL3Z42620/hSL12oXxKO
 +pRJDmDFbTWpQafOLshF9++tRNca+n2HsRO8uwg9r5FD6NnoipbFCYQr7e7typgp0ETSzkHDc
 IOduLhO09PIgJf7LZ8/8eunO1K9xjGbdnGtAkoKAFjVTSI4OmtkA4HItodJdLbT0UWoJHBuDU
 fdAb1suHT+8/nmcFKHm+TDrJn4bLM5+77KIzzsVdbqn5Xi4u55BTQSSvI0yezl33pGR1h/5eE
 PkYHHPmyjjlAVOPsLy7a5/qxQAlI1WqGBESDLttnGCCLjd8NeVkpT3U1b+NBJAKP3zAhVzf1K
 KLyBng/LIV76ccFaESYt5/gUOlxstQ18g6qzfxKSJPr/Xw4Q8xIV8Rekj2k1x9yXeSblKR9NF
 j5W5AaQEAv9Grg5hPA8RGwTB5UkOcq8g4BO969uthgU7dsrrH32nn0tRScSYGCZ6MGN2U5sYu
 eTg/IICS69hAbMJgz/M/zEfY5BpPMcNm+9YA9Z/k7WT3wOVC6urXyCJ1CO3iRUGuhG8QIDz1V
 fLZR2AsivYwkzBZ6BUSag2jKY5hqmE2+Vz/uxEWoYL/K00dXHebpdIVUupvmSao7lntSrY0cN
 glTr37hDQBPJIEcEPdGkdEAFHlHLHJJmi2SfI1YBsTROzAmZhwNFtNqE4Zq9XJpDvjoWAkQGz
 tBPQdoVlEJ80s7eSqR6Qf4UqH0Ahn13Wgdil3UMhTIvxVlxrNC1TIzCrLkz7f7oA+z6JbuIZ1
 WqazFTSqZenGUxysgkcbRlOoLxrT1fLePYKdLpbqDc33sV/YS0unhIjGBc9C+VnC/1dzgaQZh
 x31t0gk1HgsF1gAz1G6PjlsLg3xKxX
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
Cc: cake@lists.bufferbloat.net,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwKCj4gT24gMTAuIEphbiAyMDI1LCBhdCAyMDo0MywgRGF2ZSBUYWh0IDxkYXZlLnRh
aHRAZ21haWwuY29tPiB3cm90ZToKPiAKPiBvaywgSSBjb25jZWRlIG9uIE5RQi4gRG8gd2UgYXQg
bGVhc3QgaGF2ZSBhZ3JlZW1lbnQgdGhhdCBDUzUgYmVsb25ncwo+IGluIHRoZSBWSSBxdWV1ZSwg
bm90IHRoZSBWTyBxdWV1ZSwgb24gZGlmZnNlcnY0PwoKQXMgSSBzYWlkLCBJIGhhdmUgbGVzcyBp
c3N1ZXMgd2l0aCBidW1waW5nIHRoaW5ncyBkb3duIHRoYW4gdXAgKGJ1dCBJIGFtIGFsc28ganVz
dCB2b2ljaW5nIG15IG9waW5pb24gaGVyZSwgdGhhbmtzIGZvciBkaXNjdXNzaW5nLCBJIGFtIGZp
bmUgZW5kaW5nIHVwIGluIHRoZSAicm91Z2giIGhlcmUpLgoKQWJvdXQgWm9vbSAoaCsrcHM6Ly9z
dXBwb3J0Lnpvb20uY29tL2hjL2VuL2FydGljbGU/aWQ9em1fa2Imc3lzcGFybV9hcnRpY2xlPUtC
MDA2NjYxNyk6CiJUaGUgZGVmYXVsdCBab29tIERTQ1AgbWFya2luZyB2YWx1ZXMgYXJlIDU2IGZv
ciBhdWRpbywgNDAgZm9yIHZpZGVvLCBhbmQgNDAgZm9yIHNjcmVlbiBzaGFyaW5nLiBZb3UgY2Fu
IHVwZGF0ZSBhdWRpbyBhbmQgdmlkZW8gdmFsdWVzIHRvIGFsbG93IGEgbmV0d29yayBhZG1pbmlz
dHJhdG9yIHRvIGFkanVzdCB0aGUgcHJpb3JpdHkgZm9yIFpvb20gdHJhZmZpYyBvbiB0aGVpciBu
ZXR3b3JrLiIKClRoYXQgNTYgaXMgQ1M3IGZvciBhdWRpbyB3aGljaCBJIGFtIHByZXR0eSBzdXJl
IHdpbGwgbm90IHBhc3MgbW9zdCBvZiB0aGUgaW50ZXJuZXQgKEkgYmVsaWV2ZSB0aGUgSUVURiBy
ZWNvbW1lbmRzIHRvIGRyb3AgQ1M3IG9uIGluZ3Jlc3MgZnJvbSBvdGhlciBBU3MpLi4uIGVpdGhl
ciB0aGV5IHdhbnRlZCB0byB3cml0ZSA0NiAoRUYpIG9yIHRoZXkgYXJlIGp1c3QgYXMgY29uZnVz
ZWQgYXMgdGhlIFdpRmkgV01NIGZvbGtzLi4uCgoKCgoKPiAKPiBPbiBGcmksIEphbiAxMCwgMjAy
NSBhdCA5OjQz4oCvQU0gSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdy
b3RlOgo+PiAKPj4+IE9uIDEwIEphbiwgMjAyNSwgYXQgNzowNyBwbSwgRGF2ZSBUYWh0IHZpYSBD
YWtlIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4+PiAKPj4+IEkgZG8gbm90
IHRoaW5rIE5RQiBiZWxvbmdzIGluIFZvaWNlICh3aGljaCBzaGFyZXMgcHJpb3JpdHkgd2l0aAo+
Pj4gbmV0Y29udHJvbCwgZXRjKS4gSSBhbHNvIGRvIG5vdCB0aGluayBpdCBiZWxvbmdzIGluIGJl
c3QgZWZmb3J0IGFzIHRoZQo+Pj4gaW50ZW50IGlzIHRvIGdldCBhIHF1aWNrIHJlc3BvbnNlIHRv
IGEgc2hvcnQgZmxvdy4geWVzLCBGUSBzb2x2ZXMgYQo+Pj4gbG90IG9mIHByb2JsZW1zLCBidXQK
Pj4gCj4+IEFzIGZhciBhcyBJJ20gY29uY2VybmVkLCBGUSBpbXBsZW1lbnRzIGV2ZXJ5dGhpbmcg
dGhhdCBOUUIgd2FudHMuICBJbiBhIHN5c3RlbSBpbXBsZW1lbnRpbmcgRlEsIHRyZWF0aW5nIE5R
QiB0cmFmZmljIGFzIGJlc3QtZWZmb3J0IGlzIHRoZSBSaWdodCBUaGluZy4KPj4gCj4+IEFuZCBJ
IHNlY29uZCB0aGUgbm90aW9uIHRoYXQgc2xhdmlzaGx5IGNvcHlpbmcgd3RoZSBicm9rZW4gZGVm
YXVsdCBiZWhhdmlvdXIgb2YgV2lGaSByb3V0ZXJzIGlzIHRoZSBXcm9uZyBUaGluZy4KPj4gCj4+
IC0gSm9uYXRoYW4gTW9ydG9uCj4+IAo+IAo+IAo+IC0tIAo+IERhdmUgVMOkaHQgQ1NPLCBMaWJy
ZVFvcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
