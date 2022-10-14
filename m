Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0475FF6F5
	for <lists+cake@lfdr.de>; Sat, 15 Oct 2022 01:42:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A57BC3CB39;
	Fri, 14 Oct 2022 19:42:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665790948;
	bh=xiLZ+/3oxayLqRNkWdJRRQI7kAsBdUJ19N8LHsLrcoM=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=aAr1VbIbOavkUOpluTWq5C0VJtTHt+Dm7m4kuRcq9l+vEsj+72IpsdrUE/Pi1oC+a
	 /wc0awa2vwfugWhllRjHlceUL3FDvgL+wRA2UwkUd/klxiCZpKPM6CXTDfFZiqdCA3
	 q7dg2WQ/ssFQtsuGIWAlZV45b1kx7aDtvR69H78nCdR/YiNV5PNT2OzfvhagFsvbs7
	 bWiAVwDTcY8LanWR7P/wwUwqN5lLR6n2BqGBSgiyWgEzZO7Kyc6rmtD6oXODf6RZPD
	 GGx4+C5fAgBoCgs2A2VeNtLViiPJ4W68iFd/GS2fsJiwexuY7L4TZrUcago6DH5nEs
	 Elg5oJlAtWTpQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F32693B2A4
 for <cake@lists.bufferbloat.net>; Fri, 14 Oct 2022 19:42:27 -0400 (EDT)
Received: by mail-wm1-x32d.google.com with SMTP id
 bg9-20020a05600c3c8900b003bf249616b0so4824787wmb.3
 for <cake@lists.bufferbloat.net>; Fri, 14 Oct 2022 16:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FEwiNPau+cdRi035Ukwtu96xf3f55r2sXj7L1dGldSo=;
 b=ZGXSm08GFuzR3TtKriMtRR4NaerUADRL1MRdg8VGh+dcfTTkqukk9b5uxve6G37xKu
 2NlmIXNh1OA1MjN6eKEad4OQweIQp62N68hqdtacnvFfeLjEXaRHYv5+g1nS1flDQsrx
 /UyYNdnpeon8PdBYSbpEczDaNI45HbHZYYwhyzzGgvA6OWXfr0aiEg0QkVSiLGwbVmHm
 VP4AIW77y1hXQHiSMgt7pPg0hlUbizxq6conhP3AVE8Srf+3atO+yx+Bwei0LE9l1dhQ
 cjVNFC+NhXd3x6TQoomNb1lPZSj4GA58feWRFL3HeenzJg8OgO7UTlYsbquaW8M81SLx
 Jsyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FEwiNPau+cdRi035Ukwtu96xf3f55r2sXj7L1dGldSo=;
 b=aSPwQlWv80gYVJv6i/47D/1iBmAzoqdzcmxy1trc2nrmevx/fbzlTFELP9hW/hxe7S
 0b5Ax1Rr11ImchV1oUWB2G2CABhXjUe9jDnZ89lFeJU4PDq9v1zXuZPWZN6eNQQ1bLkr
 lEWtMDp1jRFil1nKOkj26cN6FaCZj8R0SyVVY2CUElpfkllIo0y3DcghhkX0G4B5zOfm
 BuR2w+b7KASLdDLnrXaRLOfj8agXXH1fILb5uQ1DdJMYAydLVgPgjmK9syhTaW+j3O1s
 bmplVQjMDWhdxtFbyNdlpF79OoTt+kqB1I9bC6udKl0wL4+QJw7eXQhUMyzhuqes9JdW
 Kh3A==
X-Gm-Message-State: ACrzQf3FvTHNnnA6DJXmcHEoOj8DGGr8gC+iDxmEpteRe5yMRhHF7qG2
 xIaXiDes3VqVViiiLcoDO2/i+m+JbUUzQpV4l/8dWJU3/co=
X-Google-Smtp-Source: AMsMyM6QZlVuyk/sIRlWPnWVpUcZKtdsojHff5eB8V20wrbHCidl1kFpzzkFu4daqQ9KzWkHyJFBxj+gZ+Juda+BBgA=
X-Received: by 2002:a05:600c:1909:b0:3b4:aa30:40df with SMTP id
 j9-20020a05600c190900b003b4aa3040dfmr11929976wmq.205.1665790946213; Fri, 14
 Oct 2022 16:42:26 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 14 Oct 2022 16:42:14 -0700
Message-ID: <CAA93jw7RfrLMrAEzT7-_rrtOM2-7-kUy3HDfDqy+S0uydWfFsA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake anecdote from firewalla
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

Ik15IGZhdm9yaXRlIGFuZWNkb3RlIHJlZ2FyZGluZyBDQUtFIGlzIG9uZSB0aW1lIEkgc3RhcnRl
ZCBhIEIyIGJhY2t1cApmcm9tIG15IE5BUyBhbmQgcmVtb3ZlZCBhbGwgZGV2aWNlLXNpZGUgdXBs
b2FkIHJlc3RyaWN0aW9ucyAod2hpY2gKd291bGQgbm9ybWFsbHkgcmVuZGVyIHRoZSBpbnRlcm5l
dCB1bnVzYWJsZSBmcm9tIHRoYXQgcG9pbnQgb24pLiBUaGVuCkkgZmlyZWQgdXAgbnZpZGlhJ3Mg
Z2FtZSBzdHJlYW1pbmcgb24gdGhlIFNoaWVsZCB0byB0cnkgdGhlIFRvbWIKUmFpZGVyIGRlbW8u
IExvbmcgc3Rvcnkgc2hvcnQsIGFuIGhvdXIgaW50byB0aGUgZ2FtZXBsYXkgSSBmb3Jnb3QgSQp3
YXMgZXZlbiBydW5uaW5nIHRoZSBiYWNrdXAgKHdoaWNoIHdhcyBzdGlsbCBydW5uaW5nIGZ1bGwg
dGlsdCkuIFRoYXQKd2FzIHRoZSBtb21lbnQgSSBrbmV3IENBS0Ugd2FzIHRoZSBoaWxsIEkgd291
bGQgZGllIG9uLiIgLQpodHRwczovL3d3dy5yZWRkaXQuY29tL3IvZmlyZXdhbGxhL2NvbW1lbnRz
L3kyMjU3di9jYWtlX2Zvcl9zbWFydF9xdWV1ZXMvCgoKLS0gClRoaXMgc29uZyBnb2VzIG91dCB0
byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgpodHRwczovL3d3
dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0aXZpdHktNjk4
MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
