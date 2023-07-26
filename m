Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0250C762B69
	for <lists+cake@lfdr.de>; Wed, 26 Jul 2023 08:29:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 91EF53CB39;
	Wed, 26 Jul 2023 02:29:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690352951;
	bh=W4HK3NuS2EVF9kMec89juGzEc87ZVLVkX1AqlE4N3fk=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=GhAR8abTAk1fEd1XaDd6wLR2PWna/zvUs8OGzh5bgHOdVF0TaU36iz7I0gs4dpVcW
	 ORV2uR9BOL0XH7VSKre7DZlIFYzy3/Ow4wBfVcNXiGzvwZYb0C/JVQVP9VTYW2r8sI
	 EC9AT74zLbrBHWUt3OCWMV/5GZtXV78HlvoCxUQ/crkn68YuYymw7WTrMWptahD0xV
	 gyKLGaDASF34ze8ayo8eLevIu2kbigT/0HH0GNbkpSi4DIf3cylllxtWwJnjFhDQaz
	 e1Ji8ryLsRv6Piqv0OChaSEApqPEUUJcMzN/TLuYf5LQTeTIyv79nP1zgWpX06yNjZ
	 v9ArzhQjpq7dg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 74B113B29E
 for <cake@lists.bufferbloat.net>; Wed, 26 Jul 2023 02:29:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de;
 s=s31663417; t=1690352946; x=1690957746; i=moeller0@gmx.de;
 bh=bUwiWzUQo4X8z4hiihbSAO+otxtRc01tC4vVl7yC+5M=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gz7Ih7gZaD3W0jHvN9wMOjfgP8nDxZh7fPkDWFnL0dk9xlBdfD7fRQMqOHKkBelatWcKeqa
 8hbEGiuMjN1ndh/5MablwqI0R2XNIaxwBtlR19+C3ido1ikYhdrZrit0crX2jRgA4zsYj4UKF
 uGzRW4dirI+T3ASBE0rgpS3fYC/A4i3igRiGCi5BLNFthx8ePhu8UJQFPqdfnacEWii+AKBWy
 MOmZ9NpEcLp8LhniWUhwIvnuXgpoN7mTs3vWWaTN11uvnRh4dfXFqAvIXzuRTQlnqVXNRgkY3
 t3vmGO1CvjAr/GL87/wIt10cTFs+CqhRdfafJLOgBGEoPwI7nGqw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [77.1.254.3] ([77.1.254.3]) by web-mail.gmx.net
 (3c-app-gmx-bs42.server.lan [172.19.170.94]) (via HTTP); Wed, 26 Jul 2023
 08:29:06 +0200
MIME-Version: 1.0
Message-ID: <trinity-c963ad84-c42e-4742-ba39-1f38c99e3000-1690352946152@3c-app-gmx-bs42>
To: dave.taht@gmail.com, greearb@candelatech.com
Date: Wed, 26 Jul 2023 08:29:06 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAA93jw6WNZ8w1FgHY9aFQGdx__MivoOC7t1Q_yTqXLntx5JQjA@mail.gmail.com>
References: <CAA93jw6WNZ8w1FgHY9aFQGdx__MivoOC7t1Q_yTqXLntx5JQjA@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:/WXI/dlGIkO923WW22J0rBbMBbx+jSPh7Gk/6o4L79CUWv9NWC1WB6O5Tz0leX3GIsKjF
 yGHez2Hm3dAX/4dkl21erimeeMKRCEGiruColRfcAIaI6XoEn/N7s6ACpE9v3M9ZH+GIXBEC1ATC
 pVUAPI65uGM45TwhgJXri1CtsNyGGpMDFLRVZjhhWCRdGS4irs/ZlR0YqJVtn86JLzDjnmhVhKTR
 tgstQ2ON9R+5QYAKNlkVNaWvSQBS7E2+dSypS7adNrF6zAevz7qO61vJSs5Jw90XBIqOA+703QI9
 KU=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:vkfboVEdnZI=;mMZqcAPL9CoqnkFdQBJii8FrMEy
 5D9+3d2AWrOpJiGdi2k3zfuXIUEsbZRsiuNP+qpq0BotuTAt5aOogwmndfE6gv3S6WRnxfpPs
 4KshqCaU6VBRdg3rt7/91BFhtmZLExkXIS6zQHtKkU3EmSzgJFll66UGcAjmdZEt1mbzvf4x6
 ZJMwsimf96+b0tjSA4WgTAnaryQaQZnhmydpgH61f/1PA9xkB/1Q0FtoohvDhhmFTNrlBQZJ2
 3sTGttr0TWQAXD+dgfacvH/pa5LaHn148EAFX7pqo0ljpiOhUJ/ZhRKgkkpBIqQWH0i4ZJUir
 vgwm1DnYDiCFPEtwB20m45Z6L53hR1N06vnu94awvocaYMZsERJRSgZQlTAwPgyTitVOYbaU0
 VkexcJgJVOo5645Y9KadSS/ZRPWR4eX3x4knq8a8HjJRj2wODp2dBBNepL2QlLT8MGu37Y9yU
 vD/qZ63/fyFfXmMqkgznYKb/9uK12gCbNmaLbCI/eYbhizdajrQO80Q0C/KtsPazUrD1MLCsP
 /TWrHxkIEK+jIg2VSQmIFoCJHRNjJBFFgSLwJk5/HbVQy0TKP126lFSr4+ECnCglFV9vFXhNd
 FgOU6y+FQYceGiNrtrb6aqSV55EeKxcodPd9dlqj9sgTxhUzFfe9Zw4lpJl6YghZSvHFG04i/
 IbzJRsWtvzVM66FZmt9n/LEG1x0sxoF/ezwPe1zJP7QCWvzZZprFC38tfAYFMgNZXh7v3SFZQ
 4gbSAhLWs4XvbTPexzI5ePl+Yb4qjku/6Jmsm6zlE8+LoyO0CxG3yuN5H88R+DrsJO80MvLWH
 Wgw7YoyUzJ+RN0PuEMv1G+wRMvZwA5qKM+LSyr/kYFq6g=
Subject: Re: [Cake] qosify ad - I think
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

PiBHZXNlbmRldDogTWl0dHdvY2gsIDI2LiBKdWxpIDIwMjMgdW0gMDY6MTAgVWhyCj4gVm9uOiAi
RGF2ZSBUYWh0IHZpYSBDYWtlIiA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gQW46ICJD
YWtlIExpc3QiIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiBCZXRyZWZmOiBbQ2FrZV0g
cW9zaWZ5IGFkIC0gSSB0aGluawo+Cj4gZHluYW1pYyBxb3M6Cj4gCj4gaHR0cHM6Ly93d3cueW91
dHViZS5jb20vd2F0Y2g/dj1WdUZXaDFYMS15MAoKU2luY2UgdGhpcyBzZWVtcyB0byBiZSBmcm9t
IG91ciBmcmllbmRzIG92ZXIgYXQgQ2FkZWxhdGVjaCwgbWF5YmUgQmVuLCB5b3Ugd291bGQgbGlr
ZSB0byBlbGFib3JhdGUgYSBiaXQgb24gdGhlIHRlY2hub2xvZ3kgc2l0dGluZyBiZWhpbmQgdGhp
cz8KClJlZ2FyZHMKICAgICAgICAgU2ViYXN0aWFuCgoKCj4gCj4gLS0gCj4gUG9kY2FzdDogaHR0
cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo3MDU4Nzkz
OTEwMjI3MTExOTM3Lwo+IERhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
