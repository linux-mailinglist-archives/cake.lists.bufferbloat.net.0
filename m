Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F7351912E
	for <lists+cake@lfdr.de>; Wed,  4 May 2022 00:16:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6D8C13CB42;
	Tue,  3 May 2022 18:16:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1651616199;
	bh=HvvqvDXB7jzVAYRUhLpjYa3hWnw/gsHrFAEEGEBTWbc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fQdMSF7aXHE6N9YqjxvzbMeDik8m/x/xI7RUAlwhub+RKJKcXlrh6xKSRlSlxFLDi
	 E/n/uLF3UtM8H3N1o+K47uek+fxMBj7rJPwy5HyEHScHwiG62ofWt+CzZjFs2+9S92
	 QYjYtI4wN0urMQDYTBcRDA47Shvn8s7703leBKgcEKPds4IaeUdroeuypitb1DrbrS
	 +l3Pnv7thHtjWDsEwGDfQ2qT0z4KCIM7B8F8hfAFTAKy9l0U22Koh8UatrhM9xOUrK
	 EFQUA0eLGFykiqda8qkpbUlgUQxXZnKQNAHbnu5uq2A1znC+jez0KTYDU8ecHCb+fW
	 qF/wMhrJtqS0g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3B7763B2A4;
 Tue,  3 May 2022 18:16:37 -0400 (EDT)
Received: by mail-pl1-x629.google.com with SMTP id c11so5910184plg.13;
 Tue, 03 May 2022 15:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=iMaXdf4VpaNWnoyErFdsD7AO0zjdNjXhrBhS5qWKxsU=;
 b=f0u+QNuAMEgDlFoS11C28jDZE2x9Cd0o+yONYW6qOhQk5E2cGCaNC+hCFx/H2F9Oo3
 9l0E/bFew6cCAOXnuKm9p73jtgNid8d/o967fcxoBpfsRczvucnyQR5V4guXcqEY4Dwb
 23uXiG3Ky5JoBfHEEIMZ3EuQ8JFZdcndtER9sEC3kuI8sKTTh4H1yQVq/wDf8q0u5xCz
 mMTi/q8HIoeyy0T5rN/tYxCW/cfQqsbFid/bWZaTnHGt9Is6uiU4AXh0yOsPGoPumu6R
 ZZjr5dhpUs+9ezrBupkjMvVqrpg1hiRSXvcrATwPlyaaEfwFIA7goleuaDmbEn+MopWp
 GGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=iMaXdf4VpaNWnoyErFdsD7AO0zjdNjXhrBhS5qWKxsU=;
 b=O3hm7pjnlK9zsx8zWMcCaRLmGFcS+sr+KxKYeUCJJ1rft8lGPGq6cDd50zfT91GDWT
 ygzJVTycqWjA/nQD1rV1IU1Xyx55n/lFndkqIhkBLEec4Hem+7mzMNuHKC9uDCDA1RYQ
 doL7aMwljtBxYutcc588AeqOXItNyzbTQS3HVahZwI5OXu4vWLbVwMGxwtjIRExTaYpi
 vT6Re49YGHmkOrGMcZ/gq8k4sYALywl7qezvCuCZUDk71TVS8gB+trJ7teQug3K8WqQ8
 AvXBI+Kfr0HaZNvxxZE/BIsq07hEkC9pVoohjwEoQjWk2cKbmcQHH/N/0on0Sj8aELo6
 qgwQ==
X-Gm-Message-State: AOAM531+vZI5hJQY63IgQNecDE+G5gOBLp4YWDufvUIZbv7mGAFuxHHn
 Hw7CYIBKhH6nlS6LdvQ6/8znAgEQeGvEmY+s+atXpIz+
X-Google-Smtp-Source: ABdhPJw+eA99V1gpdmgfsPgfmd6W6fIdGDKYHcT5dtWgb5gPUa+Nu5MX+JWW8WbSr2nSji5UepJKDREw4Aq8GI1XFN0=
X-Received: by 2002:a17:90b:4c0a:b0:1d5:2e1d:ec6 with SMTP id
 na10-20020a17090b4c0a00b001d52e1d0ec6mr7136438pjb.64.1651616195636; Tue, 03
 May 2022 15:16:35 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 3 May 2022 15:16:23 -0700
Message-ID: <CAA93jw5Jr5modPeEfuKOPrhptoW-n3J+Tt4LwKjfP5eDVxXNPQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] logo: t-shirts, coffee cups, socks, hats
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

SXQncyBiZWVuIGEgY291cGxlIHllYXJzLCBoYXMgYW55b25lIGNvbWUgdXAgd2l0aCBhIGdvb2Qg
aWRlYSBmb3IKbG9nb3Mgb3Igc2xvZ2Fucz8KCkknZCBhbHdheXMgd2FudGVkIHRvIGhhdmUgZ2l2
ZW4gb3V0IGEgdC1zaGlydCBhdCB0aGUgY29tcGxldGlvbiBvZiB0aGUKY2FrZSBhbmQgbWFrZS13
aWZpLWZhc3QgcHJvamVjdHMsIGl0J3Mga2luZCBvZiB0cmFkaXRpb25hbCwgYnV0CmxhY2tpbmcg
YW55IGFydGlzdGljIHRhbGVudCBwZXJzb25hbGx5Li4uIG9yIGJ1ZGdldCBmb3IgaXQsIG5ldmVy
IGRpZC4KQXQgdGhlIG1vbWVudCBJJ20gZmVlbGluZyB0ZXJyaWJseSBjeW5pY2FsIHNvIHRoaW5n
cyBsaWtlOgoKU2tlbGV0b24gd2l0aCBjb2ZmZWUgY3VwOiAiRml4ZWQgV2lmaSBpbiAyMDE2LiBT
dGlsbCB3YWl0aW5nIGZvciBuZXcKa2VybmVscyB0byBkZXBsb3kiLgoKU2tlbGV0b24gd2l0aCBj
YWtlIHdpdGggNiBjYW5kbGVzIGluIGl0OiAiV2hlbiB0aGUgdXBncmFkZXMgYXJlIG92ZXIsCmV2
ZXJ5b25lIHdpbGwgaGF2ZSBjYWtlLiIKCkNhbWUgdG8gbWluZCBmaXJzdC4gIEFsc286CgpNb3Vs
ZHkgYmFycmVsIGZ1bGwgb2YgYnVncywgd29ybXMsIHNwaWRlcnMsIENWRSdzIGFuZCBzbmFrZXM6
ICJNbW1tLAp2aW50YWdlIGtlcm5lbC4gU2hpcCBpdCEiCgpZRVMsIEkgV0FOVCBDR05BVCEgUE9S
VCBGT1JXQVJESU5HIElTIEZPUiBQVSQkSUVTLgoKV2hvIG5lZWRzIElQdjY/IChwaWN0dXJlIG9m
IGNyb3dkIG9mIHBlb3BsZSBvZiBhbGwgc29ydHMpCgpETlNTRUMgaXMgZm9yIGR1bW1pZXMgdGhh
dCBjYW4ndCB0ZWxsIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4KcGF5cGFsLmNvbSBhbmQgcGF5cGFs
bC5jb20uCgpPdGhlciwgZXF1YWxseSBjeW5pY2FsLCBvciBvcHRpbWlzdGljLCBtZXNzYWdlcyBh
bmQgaWRlYXMgc291Z2h0PwoKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzogaHR0cHM6
Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
