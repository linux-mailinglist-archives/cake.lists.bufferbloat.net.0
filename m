Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE217741B30
	for <lists+cake@lfdr.de>; Wed, 28 Jun 2023 23:54:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 649873CB43;
	Wed, 28 Jun 2023 17:53:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687989235;
	bh=Z+bPyXe7y7BqmrRHsv2OYoqL4nSoU5ne4Wn4Kc6z7JY=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=hSYSG5USYPAtNe6PJXGbbMy9X25N6wfXjfmIPqE8wKXw6XsBIk6Pm2R8ZdtgTcb1f
	 8Gk6P1BX6T6M8hM/JEu5Ij2WyG8AdlpNvc6VDaA3RCtEP8waHCkmOUd9Zxe9Oq0Tn3
	 sOyIl6ZS8mxbKTuMz3vf9WasMPO4Gc2gC6Yzp0Q4TyGmkBcZgJm27Exrk3P4Xlmcxk
	 Zkfxp7IsSFxVtNQ5ONJZCI9lGnz4E9uEiOSavnHuK/WSUN0XruWjNQnJ7ZduI3ccMl
	 aLhBmt+7qcT2fYAsD2P/hP8epnkW4nqhzz9V7snqDJF6ysrN0jTeMAb1xj2PE7LFDr
	 aiFT/Aym5KLUA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 68C253B29E;
 Wed, 28 Jun 2023 17:53:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1687989232; bh=PLwiVRUPiYONer607l8EIH86a9+JIEWaztKI5Kom+/k=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=ZBK17eRERpeQoIn9qtGztI42SdwG3qmlnnOmbQ/dSFdsVaYNzFLrid05qL01fHcoK
 7kHIyae/BewguOPM8EFWIcxJPw+E1g2Hi1+5dv7dLYvYSwNVOgcWRQpobjk+UpC3S7
 KAqt6E8ssZaSV1icJeCCIxbXl2pil4HNicnDK4jfGWPIfnuSl/O83t+i71K+uM8fze
 vCBOvzdpbfN0D7ERuVE3n1Fez8uN6/Tge84gBoubRy4N0/B60kJ1gtKvSWFtn0ncjP
 JKA6bGGB4t+eSNa3Ljzl71nQBS+jEMIHxfHv6tEFpodpHCunVZV2aK/tWPFwmRvnna
 ZC10XfgmxoN2A==
To: "David P. Reed" <dpreed@deepplum.com>, Dave Taht via Cake
 <cake@lists.bufferbloat.net>
In-Reply-To: <1687962752.39077378@mobile.rackspace.com>
References: <1687962752.39077378@mobile.rackspace.com>
Date: Wed, 28 Jun 2023 23:53:51 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <877crngsnk.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Two questions re high speed congestionmanagement
 anddatagram protocols
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

IkRhdmlkIFAuIFJlZWQgdmlhIEJsb2F0IiA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3
cml0ZXM6Cgo+IChPbmUgc3VjaCBuaWdodG1hcmUgY2FuIGJlIHNlZW4gaW4gTEtNTC4uLiBTZWFy
Y2ggZm9yCj4gZHByZWVkQGRlZXBwbHVtLmNvbSBwYXRjaCBlbWFpbHMuIEkgdHJpZWQgaGFyZCwg
d2FzIHdvcm4gZG93biwgdGhlbgo+IGdhdmUgdXAsIHNpbmNlIEkgZm91bmQgYSB3YXkgdG8gYXZv
aWQgdGhlIGJ1ZywgaW4gdmlydHVhbGl6YXRpb24gY29kZQo+IG9uIHg4NiwgYW5kIGdhdmUgdXAg
b24gZ2V0dGluZyBpdCBmaXhlZCBhZnRlciBhIHllYXIuIExpZmUgaXMgdG9vCj4gc2hvcnQuCgpX
ZW50IGxvb2tpbmcsIHNpbmNlIEkgdGhpbmsgaXQncyBpbXBvcnRhbnQgdG8gbGVhcm4gZnJvbSBz
dWNoIHByb2Nlc3MKZmFpbHVyZXMgKGFuZCB5b3UncmUgY2VydGFpbmx5IG5vdCB0aGUgZmlyc3Qg
dG8gb3BpbmUgdGhhdCBnZXR0aW5nCnBhdGNoZXMgaW50byB0aGUga2VybmVsIGlzIGNoYWxsZW5n
aW5nKS4KCkknbSBhc3N1bWluZyB5b3UncmUgcmVmZXJyaW5nIHRvIHRoaXMgc2VyaWVzLCByaWdo
dD8KCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIwMDcwNDIwMzgwOS43NjM5MS00LWRw
cmVlZEBkZWVwcGx1bS5jb20vCgpXaGljaCwgdG8gbWUsIGxvb2tzIGxpa2UgaXQgd2FzIHByZXR0
eSBjbG9zZSB0byBiZWluZyBhY2NlcHRlZDsgYW5vdGhlcgpyZXZpc2lvbiB3b3VsZCBwcm9iYWJs
eSBoYXZlIG1hZGUgdGhlIGN1dC4uLgoKLi4uSW4gZmFjdCBpdCBzZWVtcyB0aG9zZSBwYXRjaGVz
IHdlcmUgbGF0ZXIgcmVzdXJyZWN0ZWQgYnkgU2VhbiBhcyBwYXJ0Cm9mIHRoaXMgc2VyaWVzLCBz
aXggbW9udGhzIGxhdGVyOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjAxMjMxMDAy
NzAyLjIyMjM3MDctMS1zZWFuamNAZ29vZ2xlLmNvbS8KCk9uZSBvZiB0aGUgcGF0Y2hlcyByZXRh
aW5lZCB5b3VyIGF1dGhvcnNoaXAgYW5kIG1hZGUgaXQgaW50byB0aGUga2VybmVsCmluIHRoaXMg
Y29tbWl0OgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy90b3J2YWxkcy9jLzUzNjY2NjY0YTMwNQoK
ClNvIHdvdWxkbid0IG5lY2Vzc2FyaWx5IGNhbGwgdGhhdCBhIGNvbXBsZXRlIGZhaWx1cmUgOikg
U2VlbXMgdGhlIG1haW4KcHJvY2VzcyBpc3N1ZSB5b3UgaGl0IGhlcmUgd2FzIGEgc3Vic3lzdGVt
IHRoYXQgd2FzIHRvbyByZXNvdXJjZQpjb25zdHJhaW5lZCBvbiB0aGUgcmV2aWV3IHNpZGUsIHdo
aWNoIGRvZXMgc2FkbHkgaGFwcGVuLiBUaGUga2VybmVsCnByb2Nlc3MgdGVuZHMgdG8gaGVhdmls
eSBmYXZvdXIgY29udmVuaWVuY2Ugb2YgcmV2aWV3ZXJzIGZvciB0aGUgc2FtZQpyZWFzb24gKHdo
aWNoIGlzIG9uZSBvZiB0aGUgcmVhc29ucyBpdCBjYW4gYmUgb2ZmLXB1dHRpbmcgdG8gb3V0c2lk
ZXJzLApzbyBpdCdzIGEgYml0IG9mIGEgY2hpY2tlbiBhbmQgZWdnIHNpdHVhdGlvbi4uLikKCi1U
b2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
