Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B1F610C
	for <lists+cake@lfdr.de>; Sat,  9 Nov 2019 20:04:56 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 94BE33CB42;
	Sat,  9 Nov 2019 14:04:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1573326290;
	bh=8gsABPl9nHHDtXncPlz/mH91/MaMBSaG+bepglZgBbU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W7uDYpKEAi/VpPAghHtqhU+pfvNORuol55mzWpiJE8W8L4GANBap6Gfx17r7Oj9p3
	 f80uBkUlnKDBbwbinRvi9CZuUgzTLdqWG6rDakRVEnhYpQvIg+/F7yCAoK5JbAkQ0/
	 p5siiEEHHWisCqQs7kG6HUnXP52C0SBGo0L20R8qzafV3NKu8Z/KCbZ1ukce49HnEr
	 zhljPs22ZPU5dcz3MEhdDO1m7r/xF1qKF+IA95HkO9jj4G18Hpv6SxiZFPE/2+4R0r
	 PU7QJ+7KBTBtA3PHmoCv0TWPbDA4CGCcz3XEbJ5qqkbBe3Wxw+BLtbEP/Mo7xWZY+K
	 VQ6+Ue52/o9Dg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C7B843B29D;
 Sat,  9 Nov 2019 14:04:49 -0500 (EST)
Received: by mail-il1-f175.google.com with SMTP id i6so8127113ilr.11;
 Sat, 09 Nov 2019 11:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=65IgzUCwkKkUdoG/QA2rxQno/3WY8FkviP3HSNdpqyk=;
 b=HPxhmXAkGyYFLlOSkpp7kpb0BemVZ8TrbKJ0FdIS2VvNn7fkpkiEgLdiqiTC4x+wjl
 /xsajGzrtl/dvP02JD9Ia7u97reDtK9KwUz665/V4T6USRXoPrIPZMspTGPm6BQ9ivl+
 U+1iOty37k5AsmfZ5egcEDZ8YbMVziykLw4R6HNIfn8rxNujOD0r6NI4IyzwTFnMSgpv
 XycmTR8xfBK8ml/Ow5nKDEBVvRrcsawyFLGrktPeeHNF2iNXG1qV0YoYj/KWfeFyfwGU
 2XAMepgbofn7aRl4qlD/xdUXs/rl9tYgmOQjXlgGifBGFANcZQ6mQIw3K47khDekYTx6
 qyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=65IgzUCwkKkUdoG/QA2rxQno/3WY8FkviP3HSNdpqyk=;
 b=LqnLegdPq4NR2Sr5a4CkGwKvYvG8hfZ8Gp0FbYWvVan1JDWZK6qknmbcWklBwjyVsd
 mesjXnhekVBM3drcD1JUNn8aNJM3bErUaj4pivosCKubDiE6D8GLGiA/+Yp6fPDPj2jH
 zDeEPmDjkdBTn8xJTLrfDijlK2O+mo3D3Bh2GdbiKI+yHHV22kpZ26Nca7IQM6zzU1kU
 er/Lrcaedv3cWgJtBXqJHLVa7jbVMeMjgvSyryN2H/qobme/0RbThXxrs4HSSiZQ3aP4
 gd5RxFTKt/pXlwLN2YUwLtXgj44/kZWAThkX2vBZHvj/5m1SgnEKRZmlPqfwCIzzvZKj
 4J+A==
X-Gm-Message-State: APjAAAX/E0uzMnpmfH+TvbahecFEyKGvjodfB2Y5Ef/S/ACjqFD9RzHA
 JGb53uyWyAcgQod2sOqFCVkEQrk5WA22MBywuOJfhd9u
X-Google-Smtp-Source: APXvYqwXPJwvy+H81+BFL2jluPykph07JySrChrsixgDf2pyKkhVNb0o6vWmxWk/bSsPT4sQ6CvtedGo+WYv5IuHdss=
X-Received: by 2002:a92:af15:: with SMTP id n21mr22235773ili.0.1573325813512; 
 Sat, 09 Nov 2019 10:56:53 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 9 Nov 2019 10:56:42 -0800
Message-ID: <CAA93jw67XdcJ0r_kvoH3y4py44FX4PFZAbBoVJ-QqQmywmBUkQ@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] ipv6 now disabled for lists.bufferbloat.net
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

Rm9yIG5vIHJlYXNvbiB0aGF0IEkndmUgYmVlbiBhYmxlIHRvIGRpc2Nlcm4sIGZvciBtb250aHMg
YW5kIG1vbnRocwpub3csIG5lYXJseSBhbnkgdXNlIG9mIGlwdjYgYXMgYW4gZW1haWwgdHJhbnNw
b3J0IGhhcyBlbmRlZCB1cCBnZXR0aW5nCnRoZSBpcHY2IGFkZHJlc3MgYmxvY2tlZCBpbiBzcGFt
aGF1cydzIFNCTCBsaXN0aW5nLCBhbmQgdGh1cyBhIGxvdCBvZgplbWFpbCBoYXMgYmVlbiBibG9j
a2VkLiBJUHY0LCBzZWVtcyBvaywgYnV0IGZvciBhbGwgSSBrbm93CndoYXRldmVyJ3MgdHJpZ2dl
cmluZyBpdCBvbmx5IHRyaWdnZXJzIHdoZW4gaXB2NiBpcyB1c2VkLiBTbyBJJ3ZlCmdpdmVuIHVw
IG9uIGlwdjYgYW5kIHN3aXRjaGVkIGl0IG92ZXIgdG8gaXB2NCBvbmx5LgoKSWYgYW55b25lIGhh
cyBhbnkgaW5zaWdodCBvbiBob3cgdG8gcnVuIGEgZHVhbCBzdGFjayBlbWFpbCBzZXJ2ZXIKY29y
cmVjdGx5IG5vd2FkYXlzLCBwbGVhc2UgY29udGFjdCBtZSBvZmZsaXN0PyEgSWYgYW55Ym9keSBo
ZXJlCmFjdHVhbGx5IG5lZWRzIHRvIHRhbGsgdG8gdGhpcyBzZXJ2ZXIgb3ZlciBpcHY2LCB3ZWxs
Li4uLi4KCi0tCgpEYXZlIFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xp
YnJlLmNvbQpUZWw6IDEtODMxLTIwNS05NzQwCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
