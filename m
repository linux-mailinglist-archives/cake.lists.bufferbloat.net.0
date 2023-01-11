Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 10898666581
	for <lists+cake@lfdr.de>; Wed, 11 Jan 2023 22:21:42 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0DAA23CB4C;
	Wed, 11 Jan 2023 16:21:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1673472100;
	bh=Yi6JRfjvE0IFfIYpXPcTM8JvgP3eLUa52oLYDHPjdgI=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=iUXG7HETsXpOBJH7h24lRwkNioEuvZt/N46Te6XOPhPXJIgdu1QTg6O5cafXo/Jo2
	 090QcyyQOFY7F/1exxfKDUg1GA80mlZQnyM6i07zDxAl/Xi0N0KRp7CbWLtwt47rrO
	 FP9HsLVIc/kDznoaSi+izPdWpUBHot+30/O0YDLwbGBNiVbeN6D6NfxKci7UWvtLVp
	 qzuvHW1WxXOsibcWPyzWSgP/hQFNamlyDFvZ5pJzD3tLWgaWPdFgUtHp2Dis/AlTF8
	 QX0qZSivFzzTjfKYmg/QTo66dPMM+8EHLFFdNVJU8nGTdFG2c0w5KE8c9OQ+lvdD6w
	 EZnkfG00TxoPQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6BF0C3B29E
 for <cake@lists.bufferbloat.net>; Wed, 11 Jan 2023 16:21:39 -0500 (EST)
Received: by mail-wm1-x32b.google.com with SMTP id
 j16-20020a05600c1c1000b003d9ef8c274bso9311943wms.0
 for <cake@lists.bufferbloat.net>; Wed, 11 Jan 2023 13:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=v75Gi79q1N+oxiJatUQEGEmK4XDhCCS7wwCw+y3+Hec=;
 b=q7gbY6DLlMe/3+kFovqqQo2kCgvoH4MBZoabMLY4y1KwCWxVjnrJY2IE/T1r+4Funs
 s/ohM9XNEB68+8MpdyhGMRlDmlOuhJikYZxk4kxy4MeErJmLHABnx4KblIScj4bbu98h
 xWQhH5fVWAtQlvYQM3RvXOMEHgDFqaaYt0uFyiGxowpV/hllWgCY8rDLI2ZTpPGYajFH
 oWZXvTemShrUY8Rsks/NXU4GouWTwXQkSU0GCNsKFPNMaXtUndL2yANJodiqF3/OtrVy
 rYqApOlhHEFWeXzXhtcvmFQ6vGTzQXxrersHlOtAAPQ77gkytbyh5mNa3MkFbo3O9erI
 A9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=v75Gi79q1N+oxiJatUQEGEmK4XDhCCS7wwCw+y3+Hec=;
 b=ahdAYNdmOuREHML+Ktb2VsUuvdX1HnSWo57Jhh19r4ZjmLHn4K5LNdmV2Cx1DmCoJr
 P3sMTM6Nqs4ndtvr0YdbCd8RyT69rXxw68T8ToL0/10wbtkQe1TLksAtGlXqP1BdsU7h
 EDS5Y/gXyVWh7062wTw+U2JBtRce6lWfEZQz5UWiDctbB9Q76kn/Lk/fh+b0gVJcSPl0
 PeYOq3awObflTvUxoWu6cPvsfGQeyprfhOsvRydf3/bC1Nt2ABKU9Agadiq/AboH91QR
 JnrK8ol209DOHOKTeEZ+2PJaXdH2Db+5u/NFHfDzkMweXfQ8aRdjakDMvFL1SwcevPDL
 p9Tw==
X-Gm-Message-State: AFqh2kq9nK4joFNzwfEQFDUUQGWCE2RF8QpRCD0+ENYC82CIRyAfEcP8
 VliEvGFkt5+erZU7FCq3ozBqo5SZFEQ4lDkpeJe9fUk9XAE=
X-Google-Smtp-Source: AMrXdXsEUgICeHsw7EYIYyQRAcdUUGIJvnLMWqDA2Skpg47T/bpLj8TkyfwqqCcaynbK1WMKOWKhiHwBrB+Oi633Xok=
X-Received: by 2002:a7b:c7cb:0:b0:3cf:a511:3217 with SMTP id
 z11-20020a7bc7cb000000b003cfa5113217mr3709903wmk.205.1673472098148; Wed, 11
 Jan 2023 13:21:38 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 11 Jan 2023 13:21:23 -0800
Message-ID: <CAA93jw6RzdP7pKNfBTSMGA2nGBLFdWjUP6j_d9bJexg-H6kR9Q@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] firewalla gains cake
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSB3aXNoIHRoZXkgd291bGQgcHVibGlzaCBzdGF0cyBmcm9tIHRoZWlyIGxpbmUgcmF0ZSBmcV9j
b2RlbCBvciBjYWtlIGluc3RhbmNlLgoKaHR0cHM6Ly9oZWxwLmZpcmV3YWxsYS5jb20vaGMvZW4t
dXMvYXJ0aWNsZXMvMTAyMjE5ODU1OTczMzEtRmlyZXdhbGxhLUJveC1SZWxlYXNlLTEtOTc1LUFw
cC1SZWxlYXNlLTEtNTIjaF8wMUdLMDBSTTVZTkJSWUo4SzhCVkUzV1hYMQoKLS0gClRoaXMgc29u
ZyBnb2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3Jr
OgpodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmct
YWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJy
ZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
