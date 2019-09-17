Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E10B4A45
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2019 11:21:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E48913CB38;
	Tue, 17 Sep 2019 05:21:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568712109;
	bh=+r4lHXXC+ezUJZMyz7mx0FlXCexu7Obme3/rcmJpw+I=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O7sRR3Q1smjbolWBN3U/9ZfdymECZ24BZ1y5yb01kISIPM8nPBS6EZEOXcaiAtktR
	 kD2EA4sjglxvdAPiQse2hAuWDhGfRddWbVxUFRUizN7Alq9EF+Jvl8H4XfWK/i43Bk
	 MhejblE5y3vDqIuHFz7xAcT1Bg6EveGYEjZft+PXnvYa/1GtUoE4wZi36TPTJR6XFM
	 kvs5So0zk62ypCoLf8H1QAuXNrG8hP3uIE5+FgwPut3El4uaG2seGm8GATZ9aOd36u
	 toP0v20hpxRtn1yHjeYYFBulPU4YDpdsGNMuoZfNNyiJLdEsl+IM186X/fbKTNF4w0
	 4sb57bY8qbV9Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1EFFF3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 05:21:48 -0400 (EDT)
Received: by mail-lj1-x235.google.com with SMTP id q64so2660598ljb.12
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 02:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KinI2n8N6njcBlYo9NqC9nXv4uMXnkaKTW37AG5nFqA=;
 b=X00PVgvmSBM3LCRUHZlLhGaT8iiQcoBOrm3s9ogj2aaSOsiOUPoV/Eir+WM42kwYHo
 w0e+hl7OW5faPzuZT57LuJg7Fp9uxIX7uouY126m+4xx0in0JQD8w5fw4cPvWMjb/xQT
 aStlau/YF37ttstcj53pXG8CfQwcJG1H3nzqyBQp9WGmpbzSt3aRapHNzDZXR1Xy1a2D
 UzE42s4dHiYH6hObhMeuHyp7Brm+bS55LQutddVEQ1xp5lsmTv/IPuYRcG3zhMKH2eXM
 DNX/IsBS5au4sHH4RIA4GEk7hee2FBcArvAGEvwz2qdlPfEtM9q3/8MIoZlO3wMCSqYW
 8dcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KinI2n8N6njcBlYo9NqC9nXv4uMXnkaKTW37AG5nFqA=;
 b=bVVgckNXsBZ9oU+dXC75S9ms8eutKC3aAS/g+OTX2o7r4SYIXN2qk8dfNDUVc2GQUL
 OP5PDjVrkqTVPSWArKXrIEpFW5zViENgrl7GA6UuHhffvqD71F7XRPdjdY6Rf3Jz2Hc3
 9lym1x7OWMOptaGGT8O2LKwYJ0wwE3X67e5CL4VTty2oVPZcH09q5PRXdozFoeN2bEqX
 FXGP+P99whgX4JtaSbH0Av3M7hvQIEhzDk+qjMzuETZ8AKQyFoDdItNvJbcKDf2cakbn
 oA0ZNWzE59F+VDPstMSi8rFvdRNmpx65WFYKZpWYtnxpE0Z8eRSODpav47XBNg8cCTXK
 ByaQ==
X-Gm-Message-State: APjAAAVRyCDAZ3HEliNgqxOyRS5Nsu6aKAEqreXehIRZORNViZN/YNjI
 FDgOTaI6G0KUqG6+Q+mbYWQ=
X-Google-Smtp-Source: APXvYqzXTiFF3optJCLEd/oRUdpaBPOGXWrJJqAq9dFWuLs/TMMOTqPI9tUgBewBunuJdaEMjmkc0g==
X-Received: by 2002:a2e:3808:: with SMTP id f8mr779279lja.7.1568712107024;
 Tue, 17 Sep 2019 02:21:47 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-113-nat-p.elisa-mobile.fi.
 [83.245.235.113])
 by smtp.gmail.com with ESMTPSA id b15sm321334lfj.84.2019.09.17.02.21.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 02:21:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <65e68948-6464-23ac-5df0-91735fc298af@newmedia-net.de>
Date: Tue, 17 Sep 2019 12:21:44 +0300
Message-Id: <44AD9976-DC81-47F7-BBB3-0D884C880A29@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <878sqomoj4.fsf@toke.dk>
 <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
 <87h85cl4qk.fsf@toke.dk>
 <65e68948-6464-23ac-5df0-91735fc298af@newmedia-net.de>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] cake memory consumption
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

PiBPbiAxNyBTZXAsIDIwMTksIGF0IDg6MzEgYW0sIFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdv
dHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPiAKPiBhY2NvcmRpbmcgdG8gdGhlIG91
dHB1dCB0aGVyZSBpcyBhIGZsYXcvYnVnIGluIHRoZSBtZW1vcnkgbGltaXQgY2FsY3VsYXRpb24K
PiBjYWtlX3JlY29uZmlndXJlICAgICBtYXkgc2V0IGJ1ZmZlcl9saW1pdCB0byAgfjAgaWYgbm8g
cmF0ZSBpcyBzZXQuCj4gCj4gdGhlIGZvbGxvd2luZyBsaW5lICJtaW4oYnVmZmVyX2xpbWl0LCBt
YXgoc2NoLT5saW1pdCAqIHBzY2hlZF9tdHUocWRpc2NfZGVjKHNjaCksIHEtPmJ1ZmZlcl9jb25m
aWdfbGltaXQpKSIgZG9lc250IG1ha2UgaXQgYmV0dGVyIHNpbmNlIGJ1ZmZlcl9jb25maWdfbGlt
aXQgaXMgbm90IGNvbmZpZ3VyZWQKPiBzbyB3ZSBnb3QgYSBwb3NzaWJsZSBtZW1vcnkgb3ZlcnVz
ZSBoZXJlLgoKSW4gQywgfjAgbWVhbnMgImFzIG5lYXIgdG8gaW5maW5pdHkgYXMgYW4gdW5zaWdu
ZWQgaW50ZWdlciBjYW4gZ2V0Iiwgb3IgZWZmZWN0aXZlbHkgNEdCLiAgVGhhdCBjb25zdHJ1Y3Qg
aXMgdXNlZCB0byBnZXQgdGhhdCBwYXJ0IG9mIHRoZSBjYWxjdWxhdGlvbiBvdXQgb2YgdGhlIHdh
eSwgc28gdGhhdCBpdCBoYXMgbm8gZWZmZWN0IGluIHRoZSBmb2xsb3dpbmcgbmVzdGVkIG1heCgp
IGFuZCBtaW4oKSBtYWNyb3MuCgpXaGF0IGFjdHVhbGx5IGhhcHBlbnMgaGVyZSBpcyB0aGF0IHRo
ZSAicGFja2V0IGxpbWl0IiBwcm9wZXJ0eSBvZiB0aGUgaW50ZXJmYWNlIGJlY29tZXMgZ292ZXJu
aW5nLCBhbmQgaXMgcmVjYWxjdWxhdGVkIGluIHRlcm1zIG9mIGEgYnl0ZSBjb3VudCBieSBtdWx0
aXBseWluZyBpdCBieSB0aGUgTVRVLiAgU28gdGhlIGxpbWl0IGNvbmZpZ3VyZWQgZm9yIGVhY2gg
Q2FrZSBpbnN0YW5jZSBpbiB5b3VyIHBhcnRpY3VsYXIgY2FzZSBpcyAxNU1CLCBjb3JyZXNwb25k
aW5nIHRvIDEwLDAwMCBwYWNrZXRzOgoKPiAgbWVtb3J5IHVzZWQ6IDBiIG9mIDE1MTQwS2IKCldp
dGggc28gbWFueSBDYWtlIGluc3RhbmNlcyBsb2FkZWQgKHZlcnkgbXVjaCAqbm90KiB0aGUgbm9y
bWFsIGNvbmZpZ3VyYXRpb24hKSBhbmQgb25seSAxMjhNQiB0b3RhbCBSQU0sIDE1TUIgaXMgb2J2
aW91c2x5IHRvbyBoaWdoIGEgbGltaXQgdG8gYmUgY29tcGxldGVseSBzYWZlIC0gZXZlbiB0aG91
Z2ggQ2FrZSdzIEFRTSBhY3Rpb24gd2lsbCBrZWVwIHRoZSAqYXZlcmFnZSogcXVldWUgZGVwdGgg
d2VsbCBiZWxvdyB0aGF0IGxpbWl0LgoKVGhlIGNvcnJlY3QgZml4IGhlcmUgaXMgbm90IHRvIGNo
YW5nZSB0aGUgY29kZSwgYnV0IHRvIHVzZSB0aGUgbWVtbGltaXQgcGFyYW1ldGVyIHRvIG92ZXJy
aWRlIHRoZSBkZWZhdWx0LiAgVGhlc2UgdW51c3VhbCBjb25maWd1cmF0aW9ucywgd2hlcmUgdGhl
IGRlZmF1bHQgbG9naWMgYnJlYWtzLCBhcmUgcHJlY2lzZWx5IHdoeSBpdCB3YXMgYWRkZWQuCgog
LSBKb25hdGhhbiBNb3J0b24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
