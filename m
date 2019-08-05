Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id A27B6820FC
	for <lists+cake@lfdr.de>; Mon,  5 Aug 2019 18:00:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 142AF3CB3C;
	Mon,  5 Aug 2019 12:00:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1565020824;
	bh=S9DHEf9tG2UfPIYyAVnkABOSI2132bg7kTaWY+RhAmQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GjV99gyjWGob1Jsi8jmYMvNdpMEaik2P4HhViNfsjYcsJ56mTdgDeKaU80lUhe6+Q
	 4ntArcGSmPWFNh+l5HM9Jl3WAkXCSUOaKAtyjHnMvB36Fz3x5EGzp8wIHT5g7fl4gM
	 F+t7XXbHZiRA09W0hsYiqCeCOGlJ9UprWtusJzfrFKIMymtOh+Ic/1pj8NfOop0pFO
	 gj6k88+rUEiXFFAi70BGPHXD7eOPGoLPkWQcZZJapPaLEnfCFYQvPXu+gFa4qlwQTm
	 SjOURtK0SuKeTqpGuTKs6JAwoz1nuDyTxCRbvrhvsDuMbjG5KnbF9scTgWVv//VoBv
	 YzAU6jN2NJ7WQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E2EB93CB37;
 Mon,  5 Aug 2019 12:00:22 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id j6so695707ioa.5;
 Mon, 05 Aug 2019 09:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=GB6AzFMYY7yBBbXTpLbXkX0zzuU5iwVdFtQW1cl6AVQ=;
 b=OPTZ1FWGrIjnqLEEReVNAiGrJDvmp2uMTkPkT6hR+MkjA4Wh3qwSWLZTxFI7cmdeiZ
 Ebf8yYMPDu+M6v1+vlzQTm03Frzcqa6P/qDZXrSalx8fLWTVwT+Rgmbv/N5/bO0tLhJ6
 l8r1TfAWMfMTlEev/zXJGgSMwG0Z7F4rqOl9X78YTgqk79K/SarznHr5erYpCfq0cjY+
 dzUrjTFfXxpvswAWJU87g+goLzutjj7V69QTd7z+LNJnoeL0zZmkpBl3e0LzDmqdPMwe
 h+Y//wla2eTLMdaO7Imb6rJ88WFooJr6Fp0shlYnwQjAL4XDcBtXE1v0eUgzqnkiXVwZ
 7eYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=GB6AzFMYY7yBBbXTpLbXkX0zzuU5iwVdFtQW1cl6AVQ=;
 b=qvkp4+0OrwQIrfZ5+K1KUB9tMOW9Rye92qOlaV2kocID7LJXoS/4897haRDlfCWvvI
 kLNES9tAUGFJczqp+xmaF+GJUd78OxWBahUbg6TzREf8uZeOhE/vBDN31u1IA8ZRN8dy
 KnSkZ1BGJgb4l6fjpmayKySHlM970MmqO8zbO8572icelodS/hfkdLfT3Yi9FG8K/hjq
 z4tpbgVe6r1wILI/E3eTCjzF2hp4JZhvrqMVlyW+oiM864tgwtQO9BJIou7rEbvUki8B
 VRfYTg3UPJ+Hh0szuKCF6IB9Axup3wA1od6xGx7+C5J8Z+JsxtFQgsLBTHeuksD+2DkF
 QABw==
X-Gm-Message-State: APjAAAV2FOgLAvmPYj8mveIIzpUhdQHJyeKLPyhLYxYaVXInTKCqAG4C
 HJCMmDb+00ZtUoLBSh55AhQmkgpfu4o79bhRmYJRlSfx
X-Google-Smtp-Source: APXvYqwPZHHEj4o7YOkJA3u2PgpWfVpzWqLZ9vZXKoquYo/+oXeIjsdSrJXeEtbZh/PGAlUGTWKLao6eczC2aY3vQpE=
X-Received: by 2002:a6b:cd07:: with SMTP id d7mr6992973iog.150.1565020822125; 
 Mon, 05 Aug 2019 09:00:22 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 5 Aug 2019 09:00:11 -0700
Message-ID: <CAA93jw48Jv9GXTaSAgREUOeQq5qYxRyjZEjuNGUE1naanygJfQ@mail.gmail.com>
To: ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] ECN is off on retransmit by default, upstreaming a bug fix,
 and some patch cleanup
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBidXJuZWQgeWVzdGVyZGF5IGF0dGVtcHRpbmcgdG8gZm9yd2FyZCBwb3J0IGNocm9taSdzIFND
RSBicmFuY2ggdG8KYmUgcGFydCBvZiBuZXQtbmV4dCArIGJicnYyLCBhbmQgSSdtIG1vc3RseSB0
aGVyZS4KKEkgaGF2ZSBhIGZldyBvdGhlciBub24tcmVsYXRlZCBrZXJuZWwgdGhpbmdzIEknbSBk
b2luZykKClRocmVlIG5vdGVzIHRodXMgZmFyOgoKQSkgVGhpcyBsb29rcyB0byBtZSB0byBiZSBh
IGdlbmVyaWMgYnVnIHRvIGEgbm9uY2UgT1IgU0NFIE9SIEw0UwpkZXBsb3ltZW50IGFuZCBzaG91
bGQgZ28gdXBzdHJlYW0KCiBzdGF0aWMgaW5saW5lIGludCBJTkVUX0VDTl9pc19jYXBhYmxlKF9f
dTggZHNmaWVsZCkKIHsKLSAgICAgICByZXR1cm4gZHNmaWVsZCAmIElORVRfRUNOX0VDVF8wOwor
ICAgICAgIHJldHVybiBkc2ZpZWxkICYgSU5FVF9FQ05fTUFTSzsKIH0KCkIpCkluIHRlcm1zIG9m
IHVwc3RyZWFtaW5nIG90aGVyIHN0dWZmLCBzY2hfY2FrZSBzaG91bGQgc3RvcCBmaWx0ZXJpbmcK
b3V0IHRoZSBub25jZSBpbiB0aGUgYWNrIGZpbHRlciAoPyksIGFuZCBJJ2QgbGlrZSB0byBhZGQg
c3VwcG9ydCBmb3IKdGhlCm5ldyBMRSBjb2RlcG9pbnQgdG8gY2FrZSBhbmQgdGhlIHNxbS1zY3Jp
cHRzIHRoaXMgcm91bmQuIFRoZSByZmMKZGVwcmVjaWF0ZXMgQ1MxIGhvd2V2ZXIsIGFuZCBJIGRv
bid0IHRoaW5rIHRoYXQncyBhIGdvb2QgaWRlYS4KCkNsZWFuaW5nIHVwIHRoZSBmb3JtZXIgcGF0
Y2ggYSBsaXR0bGUgYml0Li4uLgoKI2RlZmluZSBDQUtFX0FDS19JR05PUkUgKFRDUF9GTEFHX0VD
RSB8IFRDUF9GTEFHX0NXUiB8IFRDUF9GTEFHX0VTQ0UpCgooYnV0IGl0IHdhcyBpcm9uaWMgdGhl
cmUgd2Fzbid0IGV2ZW4gYSBkZWZpbmUgZm9yIHRoZSBOUyBpbiB0aGUgZmlyc3QKcGxhY2UsIHRo
b3VnaCkKCkMpIEknZCBlc3NlbnRpYWxseSBmb3Jnb3R0ZW4gdGhhbiBvbiBhIHJldHJhbnNtaXQs
IHRoZSBleGlzdGluZyBSRkNzCnR1cm4gb2ZmIEVDTiBjYXBhYmlsaXR5IGVudGlyZWx5IChmYWxs
aW5nIGJhY2sgdG8gbG9zc3kKcmV0cmFuc21pdHMgaW4gYW4gYW5jaWVudCBhdHRlbXB0IHRvIGtl
ZXAgdGhlIGltcGFjdCBvZiBlY24gbG93ZXIpIC0Kd2hpY2ggYm9kZXMgaWxsIGZvciB0aGUgY29u
ZmxpY3RzIGJldHdlZW4gTDRTIGFuZCBTQ0UsCmFuZCBub3Qgc2hvd24gaW4gdmFyaW91cyBwcmlv
ciBkY3RjcCBiZW5jaG1hcmtzIHRoYXQgcHJldmlvdXNseSBoYWQgbm8KcmVhY3Rpb24gdG8gbG9z
cyBhdCBhbGwgYW5kIHByZXN1bWFibHkgbm8gb3IgZmV3IGNpcmN1bXN0YW5jZXMKd2hlcmUgYSBs
b3NzIGFuZCByZXRyYW5zbWl0IHdlcmUgdHJpZ2dlcmVkLiAoYW5vdGhlciB3aW4gZm9yIG5vdCB1
c2luZwplY3QxIGFzIGFuIGlkZW50aWZpZXIsIGluIHRoYXQgaW4gU0NFIHdlIGRvbid0IEhBVkUg
dG8gY2hhbmdlCnRoaXMgZmFsbGJhY2spCgpJIGhhZCBzdWdnZXN0ZWQgaW4gYSBwcmlvciBtYWls
IHRoYXQgd2hlbiBjd25kIGZhbGxzIGJlbG93IDIgdGhhdCBFQ04KYmUgZGlzYWJsZWQgYWxzbyBp
biBhIHByaW9yIGVtYWlsLiBEb24ndCBrbm93IGlmIHRoYXQncyBldmVyIGJlZW4Kc3VnZ2VzdGVk
IGFueXdoZXJlLgoKSW4gc29tZSBleHBlcmltZW50YWwgUkZDIG9yIGFub3RoZXIgc2V0dGluZyBF
Q04gZXZlbiBvbiByZXRyYW5zbWl0cyBpcwpzdWdnZXN0ZWQsIHdoaWNoIEkgdGhpbmsgd2FzIGEg
TDRTIHJlcXVpcmVtZW50PwoKY2FzZSBJTkVUX0VDTl9OT1RfRUNUOgovKiBGdW5ueSBleHRlbnNp
b246IGlmIEVDVCBpcyBub3Qgc2V0IG9uIGEgc2VnbWVudCwKKiBhbmQgd2UgYWxyZWFkeSBzZWVu
IEVDVCBvbiBhIHByZXZpb3VzIHNlZ21lbnQsCiogaXQgaXMgcHJvYmFibHkgYSByZXRyYW5zbWl0
LgoqLwppZiAodHAtPmVjbl9mbGFncyAmIFRDUF9FQ05fU0VFTikKdGNwX2VudGVyX3F1aWNrYWNr
X21vZGUoc2ssIDIpOwpicmVhazsKCgoKLS0gCgpEYXZlIFTDpGh0CkNUTywgVGVrTGlicmUsIExM
QwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMxLTIwNS05NzQwCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
