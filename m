Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4DE5F9BA5
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 11:09:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BC8203CB46;
	Mon, 10 Oct 2022 05:09:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665392992;
	bh=QjIfkLoAObUYnQC3GiuWnk00tTqZsGP7RJia+tW6Z0w=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=N8fxBBMgLh225GT0+UKoJalVVtMJ5q8PO3cbTvofYlq296eqEODDEn1TygHeMF2Xi
	 CutiQRiX9vQ14aP/4Zr5H0lHsaLdGNL8rmQpDf0vLGs9KHAiibnI9my6HI0u5fesNd
	 4p0sR5dO1H6DNIV26gptG5txmahf74Mi1gpsLuD+veKhsMBOPYKy4i8dpovLX9ljzl
	 +h0hbTQHxJ93PyNMq49IKHSNZQ5ItdhpwTsyRThGOdgGV7TKpMu39OUkFqLW86ALpj
	 Gaa14n0CXDv4YjBBTnn3XL8gZoTh5z+MbDKwBEyoG3TIN1+jWOMv74c9Gnp2sBTwWJ
	 P5N0F7O6MBESg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8D86D3B29E;
 Mon, 10 Oct 2022 05:09:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1665392988;
 bh=E1NgL+adWdPALn93H/s467fw8R2asbu1rp5PCgV5jQA=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=Ldy7EEHV8ba+/A81COgfm4XW5JPsqK9v8fHBP9He1XC1C/e2PFz7xR8sRrwSfg/oX
 yc1sh+uIjAiD/kgGvI1rjpTRnChfce3CWY5fTMEDAyuXnmCkSzqAV2zMj9V3FMKQdo
 YXOeTmu57do3wQshEdeGzShh8UmO3mBP3uhuFdEw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N5G9n-1p8nwP2Ea5-011Ce0; Mon, 10
 Oct 2022 11:09:48 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
Date: Mon, 10 Oct 2022 11:09:47 +0200
Message-Id: <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
To: Taraldsen Erik <erik.taraldsen@telenor.no>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:cCoP53ZaaCfuqQw21BR3zK9/moPxscSJ/CNRUtWyz0pC/k/Tk2E
 4bVbssfI1DDO4NISQAiVgSC5QSvJHVe6/+1XXRB0zqu63n/NXlXfIyDrT9jwlRbraQnYMD5
 Tt+NJYYXnuR9RS+cNXW5nX+nZOAO7QIkItXDVAS8x48+JAepdwitoB1sPpQOWjw66qaVf/X
 63fgUawmTEwBef40hykfw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cLN9YqO+Dsc=:rrGmQsZt+Qbqk/rtSfEa5N
 fATnPBq1SCvVdxZo2BMfA3yAvePUHRcGNW06kov/J+1UFice5GSC7MYVKh0H/TK5kzFj1zwgP
 hcneKpLWGjhQQs3ggeO4qYawgvJLBJzTqdlKSld6zzuhNHvugYHYZ+n8EUoaoTIyq3wPdcGSM
 6tmDuk7a945ms3I9FawryN1CdP7Ow9lFpVUk6JgpEX99fXY8wS/LdIdOi0wIPiCFzp4UMmTZ1
 gO9X/8NuTBOILPOTcGQPFAcVw4eyy3ruEKnEBjrnp5tNrPWdgi/3Ljce2Z9urZtlSNcVQpVv5
 j7sFLu/FzGyJiOr9xykSzrAh7tqyMuOwL9UY5Oe+TOwykCab4xGLYDdJOEYSgHr1knzaE7lvv
 NaYlczaEAxh3nECBgraQfV+2gZs3Y2NJ2bwKZ3lzN7gr4holDZZpdq8cF0jE+BolQBlyxT+FU
 9lLdEaQHtwLMwMZU/6FuoWMyaqeSI2Lvf1rNV7weRZbFswOLvHuacNMQtujfzG3FfYBdXrQm+
 eByRr/16ouRUze4HPbN0jDf7uTrbvlDxpLiqBJ+MbrjXzfRSVyExjPBzjJPuclngTK4jCYLOa
 8A6l5pz5gVKL9MdLTkLa9u2GLa6gnyJ4rY3/CKTmXDot95LzpLPX4ivEfjNF4vI2a6chFh8T5
 vuMHlWaQcLrcUbdp6FgmjPsHgoHznbmyBERkUlng1sS4g4YRrXZdY8g/GS2I4rAVTFVAleAMJ
 ZgJ9k9D66/QpkYMZ+TZryvLnbAxuXsV7y6oGBh+xE193Un00UZ9lP4slBj3hxGWjI17MJOzSc
 Ia6ZsZflYjOAHlHnfYoSLJm1djyTS1iJRAJ/groM5qQmSJz+izBhkVID9ctuPSwh9A1Rh0C51
 TdWfGcTva9Dy/gPe4DX+4ASn0ujbqojiEwEs/FFkVx9S+97CSUoZt5IP68iri2hV5kymnPNMQ
 5jfdCMSXe9c6Hlq/7S5WGQ2Rtgnz5XXh9lkZn8mNK6FCkKadQ3abd0KiAz/e6BdwVo6p8UNSS
 AOCBxsmgEnrDOkNTnn1BdrohFyNc4Pda3lJAH4sOiVVKUcnTkiAHNQ1GSbzATDe9OqcKHRmMc
 ouasuu41nM0TlM02GYLNZmCyFXTbm5RU8lnlH4gv0syrG7+n9mmPfybsjmDoom0Tx2b23U51s
 VOg2TFFysZN+2xMPBDWgatcpiIwU6BPLmEcXEURyQQEg+AeRG47w7XuccVgxzqA4cvCWKLN3I
 bCVr5RQMfH3Jh6bjrN6XNvZQ+MY0bqJx0VrQCu8CPcArbzyyRlcQGXdpVGw+SN70oOjG8JSDJ
 41c9znBRCbyzJuPCFvTFCG1VErOHkePpegNpbSXa73pWXhF3jNiWJmpQjQ1Ar6TaYspUkliEg
 zhRDbQPguLn8tfdPKr8Dr9UApFEkW1WhrQJK98Nq4GF3ZaYxQAlPArozhjy+Rvwsn5kLZlzNb
 CFFOWpYz+x2LiVdP1UyJUdWcASy1dI2smE19mPUp6VloPMr/JatdILaRKTiX6+VWkzVjG6qch
 Ngtgqm3nMRCsTFbG7g4ben0Ld3LLNYnMRUYZ4og3ktCBu
Subject: Re: [Cake] [Bloat] The most wonderful video ever about bufferbloat
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TmljZSEKCj4gT24gT2N0IDEwLCAyMDIyLCBhdCAwNzo1MiwgVGFyYWxkc2VuIEVyaWsgdmlhIENh
a2UgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPiAKPiBJdCB0b29rIGFib3V0
IDMgaG91cnMgZnJvbSB0aGUgdmlkZW8gd2FzIHJlbGVhc2UgYmVmb3JlIHdlIGdvdCB0aGUgZmly
c3QgcmVxdWVzdCB0byBoYXZlIFNRTSBvbiB0aGUgQ1BFJ3MgIHdlIG1hbmFnZSBhcyBhIElTUC4g
IEZpbmFsbHkgZ2V0dGluZyBzb21lIGN1c3RvbWVyIHJlc3BvbnNlIG9uIHRoZSBpc3N1ZS4gCgoJ
W1NNXSBXaWxsIHlvdSBiZSBhYmxlIHRvIGJ1bXAgdGhlc2UgcmVxdWVzdHMgdG8gaGlnaGVyLXVw
cyBhbmQgYXQgbGVhc3QgY2hhbmdlIHNvbWUgcGVyY2VwdGlvbiBvZiBjdXN0b21lciBkZW1hbmQg
Zm9yIHRpZ2h0ZXIgbGF0ZW5jeSBwZXJmb3JtYW5jZT8KClJlZ2FyZHMKCVNlYmFzdGlhbgoKCgo+
IAo+IAo+IAo+IO+7v09uIDA5LzEwLzIwMjIsIDE1OjE1LCAiRGF2ZSBUYWh0IHZpYSBCbG9hdCIg
PGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4gCj4gICAgVGhpcyB3YXMgc28g
bWFzc2l2ZWx5IHdlbGwgZG9uZSwgSSBjcmllZC4gRG9lcyBhbnlvbmUga25vdyBob3cgdG8gZ2V0
Cj4gICAgaW4gdG91Y2ggd2l0aCB0aGUgaWZ4aXQgZm9saz8KPiAKPiAgICBodHRwczovL3d3dy55
b3V0dWJlLmNvbS93YXRjaD92PVVJQ2gzU2NmTldJCj4gCj4gICAgLS0gCj4gICAgVGhpcyBzb25n
IGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9sayB0aGF0IHRob3VnaHQgU3RhZGlhIHdvdWxkIHdvcms6
Cj4gICAgaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL3Bvc3RzL2R0YWh0X3RoZS1tdXNocm9vbS1z
b25nLWFjdGl2aXR5LTY5ODEzNjY2NjU2MDczNTIzMjAtRlh0ego+ICAgIERhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCj4gICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiAgICBCbG9hdCBtYWlsaW5nIGxpc3QKPiAgICBCbG9hdEBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKPiAgICBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9i
bG9hdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK
