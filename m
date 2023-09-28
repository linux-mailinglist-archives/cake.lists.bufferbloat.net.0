Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C374B7B1BDC
	for <lists+cake@lfdr.de>; Thu, 28 Sep 2023 14:15:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B90263CB39;
	Thu, 28 Sep 2023 08:15:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695903332;
	bh=DoGxZRwx90ROBM3b5dMKfduOlGeyXsVJFlQdJA7I6kM=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=V92tkrkntgm5w8johxpZIV5oAG2EBHMsQmJT34d+DKzPZS9N7As4sv9Rfwl17m95F
	 2O/d+qjt1WqA1VXWOqT/Z5JblEr6Yltkt43hUbdA3HJ39Mi3WQFRfkkpR/NIjnUIuK
	 y5xBICYTDNgWPYz1CHGkuMGby+7t+1OIz4ehEqHoqOvmAATklT173kxFtS31bWTuvm
	 /xfyKOsY992RE3fDF8obJzRpa7O1Xcne9g0eafff/fT47rmhFdilKQU90Zu9o3iX4G
	 vtehlLvDNhu4aAQ09oClgyz4t775URc8+uf6Ga2Due4QDF0A/rxg9Igkqh7BSWT9eH
	 pPgmHi+ZzgF6Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B96313B29D
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 08:15:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1695903327; x=1696508127; i=moeller0@gmx.de;
 bh=V0goXoRMuZPdeEcvBKXk3dEhWheRbCCSRZDTjTVug4A=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=tnCIQ0+eed0FHrkj6RYUU3nemkLnKobJieNRFXWYl7AOFPBrvkv9+qIyvs8MQJX+MF6VMhFMFrS
 d5EPWOP42ai7cVwmii/H6eWCmWnZHW6WJEBdfGyhWUcf3yPQ3Qu5I839itTL/c1rgZmyjD8otTrOz
 hygY2TEWNmFuoZSTuE6MW7TFogkjSIZBH2MSZa/SJULUlVi5uSTb4lRhxt5gKB3VsYPhUdIxir16L
 sdTdieXaafcnDs53o1jShYv3OtrWa+SYslClbo8Vr50k0f8vefEAkjUe46H0nqwNcUnLTzUvoXdGK
 PZZCi4Y2JGtIvqOPvzZoVEWYaH2BEP29soFQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M7sDq-1qi0AX2cV8-0055NG; Thu, 28
 Sep 2023 14:15:27 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
X-Priority: 3 (Normal)
In-Reply-To: <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
Date: Thu, 28 Sep 2023 14:15:26 +0200
Message-Id: <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.4)
X-Provags-ID: V03:K1:HRIAjQS6Fc0tx4dk/M36ONe45QzrvTumCiJYV0jz11/9r8Mkf3t
 ouRMNxxDwSiJBqOUfGtKUWNJtIb/MdvWYC4331zrLoLYxQiaMJqtwADL+8eUDPOKVgq63UG
 AWpebadevV4JDrOtAkzcjLbiJ9FLZIjYwVHwVZiWp/Ln4QAv3Wl3T6+T66XVO1vBQfn5Yyu
 lHyhTrWRlYSWF9jFMahjg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:1zohZYfEqnk=;2G+4zAXafRD73Inf78r/6bMXaCu
 bU+4Av59pvpDK94ZpmgQKVoK7a8t+gjiELwtH9sYpThNB4JF+GmPL58X4Ty+MZfa86PTsCTam
 idP/DJvx17k0xuhLeZXqPoMluBsVtwdmCv4in++DbnagGmB3BLdl3ueAdOZ09p6HIXk5Ep0TO
 MBIPvMKPIGHHrrkNwdC/GzP6J+lYKq8kUM4Tx0CrFdY4I1No5Ojvze46oeqPS1cTeTvL3wSE9
 iwnDxPxUU/4044gCtXZyumHWo/mFkL3Z4lBbK5Y40QXaZSCCvh5EbcZj4D+0sX/TCy2ZptiWw
 VAnfVasW+KyuGsN5sfN/joR9iKrOnBsOnuh2rFOr94iG1BzQMv1eaj08axPYjSDA7es7maqIh
 OxHPvhwH59zSEWz4rHVMzd8SWrop8dUDLG9vIk+rqQUOE0/bYhmCSmuqMc0wPApXyHgZBNA3C
 Cz9d1jaNLRaXqv+Bl7daXy2P4SnzRwbOEgTlWFNh/hAeCISCMZl7dnUGQzNzflZitGuw/IqRS
 boCRiyg7ud5PhocRRVoQfKUEto24RoCX2hUIK8CvIgh9dfXJLssXXEpMcEYGiHIFoZ5l67l4V
 JQILpORM15r2LJm8iNeWLWPr8fv/UrmGkjGzeE9b2SW+YCtUNEX3Jb4AVcZm9n3Zqu5xg9EQg
 qqYfUp1uL6ii8lNK38TfpPgo/BRUPttd9vu3GNREAksVjreL9GC2v+52ShpKS6TuqqFI0P8uh
 likbOE4JUuitILqHW3K9Btf3bwWc0/QRhwpAn85CYoYocoXNxcj6DW4gghzo8J6yXV9GCTg7j
 F9B7X5ZQqnYg/XNjc6jPlgr4pdogLCU2u9fo9nBTJJcGzXeCPavjCGnu/EltwKfO/vNhKIiBk
 zhwCaSJzEIKyBRV1NXR91y5WgjyJrXMELfo2xaaxGHlph8ZII5uCFwdpCQvhm+r3pP8OiOQWI
 fQn+1WUrJXi1dxbHMR9/aLaK9pU=
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4KCj4gT24gU2VwIDI4LCAyMDIzLCBhdCAxMzo0NCwgSm9uYXRoYW4gTW9ydG9u
IHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4gCj4+IE9uIDE5
IFNlcCwgMjAyMywgYXQgMTowNyBhbSwgSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFp
bC5jb20+IHdyb3RlOgo+PiAKPj4+IFJhc3BiZXJyeSBQaSA0J3MganVzdCBhcmVuJ3QgdmVyeSBn
b29kIGF0IG5ldHdvcmtpbmcgYmVjYXVzZSBvZiB0aGVpciBJL08gYXJjaGl0ZWN0dXJlIG9uIHRo
ZSBib2FyZCwganVzdCBhcyB0aGV5IGFyZSBzbG93IGF0IFVTQiBpbiBnZW5lcmFsLiBUaGF0J3Mg
d2h5IHRoZSBDTTQgaXMgaW50ZXJlc3RpbmcuIEl0J3MgaW50ZXJlc3RpbmcgdGhhdCB0aGUgUGlI
b2xlIGhhcyBnb3R0ZW4gc28gcG9wdWxhciAtIGl0IHdvdWxkIHJ1biBiZXR0ZXIgb24gYW4gUGkg
d2l0aCBhIGJldHRlciBuZXR3b3JrIGFyY2hpdGVjdHVyZS4KPj4gCj4+IE9uIHRoZSBjb250cmFy
eSwgdGhlIFBpIDQgaGFzIGFuIGV4Y2VsbGVudCBJL08gYXJjaGl0ZWN0dXJlIGNvbXBhcmVkIHRv
IG1vc3Qgb2YgaXRzIHBlZXJzLCBhbmQgZXNwZWNpYWxseSBjb21wYXJlZCB0byB0aGUgcHJldmlv
dXMgUGlzLiAgVGhlIGJ1aWx0LWluIE5JQyBpcyBpbnRlcm5hbCB0byB0aGUgU29DIGFuZCAqTk9U
KiBhdHRhY2hlZCB2aWEgVVNCIGFueSBtb3JlLCBzbyBpdCBjYW4gZ2VudWluZWx5IHN1cHBvcnQg
Z2lnYWJpdCBzcGVlZHMuICBUaGUgVVNCIGludGVyZmFjZSBpcyBhbHNvIGZhc3QgZW5vdWdoIHRv
IHN1cHBvcnQgYSBzZWNvbmQgR2lnRSBOSUMsIHRob3VnaCB0aGUgbGF0ZW5jeSB3b3VsZG4ndCBi
ZSBhcyBnb29kIGFzIG9uZSBhdHRhY2hlZCBvdmVyIFBDSWUuICBUaGF0J3Mgd2l0aCBhIHN0YW5k
YXJkLCBvZmYtdGhlLXNoZWxmIFBpIDRCLgo+IAo+IFRpbWVseSBicmVha2luZyBuZXdzOiAgdGhl
IFJhc3BiZXJyeSBQaSA1IGhhcyBqdXN0IGJlZW4gYW5ub3VuY2VkLgo+IAo+IFRoZSBpbXBvcnRh
bnQgbmV3IGZlYXR1cmUgaGVyZSAoZm9yIHVzKSBpcyB0aGF0IGl0IGV4cG9zZXMgYSBQQ0llIGJ1
cyBsYW5lIG9uIHRoZSBzdGFuZGFyZCBtb2RlbCwgc28geW91IGRvbid0IGhhdmUgdG8gbWVzcyBh
cm91bmQgd2l0aCB0aGUgQ29tcHV0ZSBNb2R1bGUganVzdCB0byBnZXQgYWNjZXNzIHRvIHRoYXQu
ICBUaGUgYnVpbHQtaW4gRXRoZXJuZXQgcG9ydCBpcyBub3cgaW1wbGVtZW50ZWQgaW4gYSBQQ0ll
LWF0dGFjaGVkICJzb3V0aGJyaWRnZSIgY2hpcCwgYW5kIHRoZSBXaUZpIHBlcmZvcm1hbmNlIGhh
cyBiZWVuIGltcHJvdmVkIGJ5IGFjY2VsZXJhdGluZyB0aGUgaW50ZXJmYWNlIGJ5IHdoaWNoIHRo
ZSByYWRpbyBpcyBhdHRhY2hlZC4KCglbU01dIE1vcmUgdGhpbmdzIG9uIHRoZSBwbHVzIHNpZGU6
CjQgQTc2IGNvcmVzIHVwIHRvIDIuNCBHSHogKHZlcnN1cyA0IEE3MiBjb3JlcyB1cCB0byAxLjgg
R2h6KQo0IHggNTEyIEtCIEwyIGNhY2hlIHBsdXMgc2hhcmVkIDIgTUIgTDMgY2FjaGUgKHZlcnN1
cyAxIE1CIHNoYXJlZCBMMikKTFBERFI0WC00MjY2IG1lbW9yeSAodmVyc3VzIExQRERSNC0yNDAw
KQoKVGhpcyBwcm9taXNlcyBldmVuIGJldHRlciBwZXJmb3JtYW5jZSBmb3IgbG9hZHMgbGlrZSBj
YWtlIHRoYW4gdGhlIGFscmVhZHkgcHJldHR5IG5pZnR5IHBpNEIKCgo+IAo+IE9uIHRoZSBkb3du
c2lkZSwgdGhlIHByaWNlIGhhcyBnb25lIHVwLgoKCVtTTV0gQXMgd2VsbCBhcyB0aGUgcG93ZXIg
Y29uc3VtcHRpb24uLi4KCgo+IAo+IC0gSm9uYXRoYW4gTW9ydG9uCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
