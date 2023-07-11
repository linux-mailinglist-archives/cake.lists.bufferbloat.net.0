Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E34874F016
	for <lists+cake@lfdr.de>; Tue, 11 Jul 2023 15:29:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 43FCB3CB40;
	Tue, 11 Jul 2023 09:29:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1689082153;
	bh=9BnyXIx23+Zso+07bIIB5As3aAowmJUncv6suV/uuP0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=j7S75Z+eRf9GKhu5AFRdA7pYEvxT9AEvkF8/5qLQDuVofFkC5MW+8Fpfwtb/asBef
	 Gr3+eYbPpO67QTMN/jAt1Ps5Z9i6f4agycWMpGSy9DyTqejEZ0dt14cwv/KeAZ4pU9
	 Pv2cPt79X5XFkKMLqfy6EqXXpFIWniAIM+Rreh4k63Sk2tn+ZnzwFqf/zh2ueP55dq
	 SomLWX5ond6Fr/n5VRxWEJIr/xB4f22S0zmq5GqQqPjqGJ6Uqwt33Ypfec0X5UawbX
	 8+I7Tax4/vz2S35bay/lJkIl5S+feFgB83roXTAi362U+ps1n4o/M2HzI2MkBYBgF9
	 xhZABFA9YVlpQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1D17E3B2A4;
 Tue, 11 Jul 2023 09:29:12 -0400 (EDT)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-55bc29a909dso2829495a12.3; 
 Tue, 11 Jul 2023 06:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689082150; x=1691674150;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZxVfe0TuEAvbf2RWqQBDaZCxjX5FyNIePTDDaeIJTNo=;
 b=UfK2n06of58Kmx8Bd9TQeTZFmzHQUOmrNZvn2nbC0JEDe6VQ3JNAdJhUfIG5Lv/ZL0
 W7WIi0x5/qz7Q8x43M68XdzgqfZ4Y+DxxmcB6T7XILhklErQANW92vskXJwFNd593v5i
 wHVV8C1n2C5VSM9/2XbU0jmLpy6axhXdiH0manN4cjaqkvMxtyQ/YWT7XVudXpt9rzLQ
 kb1huloZWxb6t2OR3OkvAe/YyX4uffh7wXQEVmdb45XBIvlvFOfanIVm+TgxB6Sk8roF
 px1GV/O+nkYNhm/B5NNopPT5ZyCPbcrw5F5Y2TtwYU9QLncXNxr1HMaHVvg3y9gb5S+O
 QfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689082150; x=1691674150;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZxVfe0TuEAvbf2RWqQBDaZCxjX5FyNIePTDDaeIJTNo=;
 b=YyhCD3c1Y7RAF/lWSlMrnTScWUhO+s1G2TkIgk4/sF9cyt3eUh5jf8flIVeGArctbo
 4tCef2ALfaM9IDNmA+UyjFlH1Q4YsBkI6WoiO4ZDUd5D9N/Oo3wyzNtWhyCDTgVLw9Ms
 b0Aw68GmuNqlWE+tdoIZ1pAEohDB0KIZoD4Wm4AAG9EN3aUztvfhMC6S/G4VWlW1/7rg
 FJdSkhGu0dtDPS1OCiXQVJrz0yzhNdIhYT+pvBwp8WJYARTEc6mF5g/oNLjnKOBLCRlL
 57jNx0Mq8cAo+sA2wy8cuStiOryBUcQiq1FpGBgM0FMNl/rnSjqYvBHaf8NOymtiWtRl
 Q+Iw==
X-Gm-Message-State: ABy/qLY3GrqnrpBL3LPn6XVCq1wa7mxX3ZYRNYO3ZhamoUGessZ12wLj
 FokjRZOQucFT3YDEJYW+dQEm4MI/QvJpRTvCpc2Yx6i6QTQpxg==
X-Google-Smtp-Source: APBJJlHsOur5aY8Z98G/c80Gg8ZAOSPkhxNsoA/fAD8DhWb8IT0pC1pgnlO6KDkmJJasTwRgwxQ5qisSfO8AuuRqycY=
X-Received: by 2002:a17:90b:3506:b0:263:4157:66de with SMTP id
 ls6-20020a17090b350600b00263415766demr11072887pjb.42.1689082150534; Tue, 11
 Jul 2023 06:29:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230710073703.147351-1-fujita.tomonori@gmail.com>
In-Reply-To: <20230710073703.147351-1-fujita.tomonori@gmail.com>
Date: Tue, 11 Jul 2023 07:28:59 -0600
Message-ID: <CAA93jw6kbwYAi86r=c13xyp468yVynE3G4L0UYWN-RwVsxYRmw@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [PATCH v2 0/5] Rust abstractions for network device
	drivers
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

SSBoYXZlIG9mdGVuIHRob3VnaHQgdGhhdCB0aGUgYmVzdCB3YXkgdG8gaW1wbGVtZW50IGEgbXVs
dGktY29yZQpjYXBhYmxlIGNha2Ugd2FzIHRvIGJ5cGFzcyBicWwsIHFkaXNjLCBhbmQgZXRoZXJu
ZXQgZHJpdmVyIGVudGlyZWx5LAp3cml0aW5nIHNvbWV0aGluZyBsaWtlIHRoZSBjYXJvdXNlbCB2
aXJ0dWFsaXplZCBkcml2ZXIgZGVzY3JpYmVkIGhlcmU6Cmh0dHBzOi8vZGwuYWNtLm9yZy9kb2kv
YWJzLzEwLjExNDUvMzA5ODgyMi4zMDk4ODUyCgotLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdl
IC0tLS0tLS0tLQpGcm9tOiBGVUpJVEEgVG9tb25vcmkgPGZ1aml0YS50b21vbm9yaUBnbWFpbC5j
b20+CkRhdGU6IE1vbiwgSnVsIDEwLCAyMDIzIGF0IDE6MznigK9BTQpTdWJqZWN0OiBbUEFUQ0gg
djIgMC81XSBSdXN0IGFic3RyYWN0aW9ucyBmb3IgbmV0d29yayBkZXZpY2UgZHJpdmVycwpUbzog
PHJ1c3QtZm9yLWxpbnV4QHZnZXIua2VybmVsLm9yZz4sIDxuZXRkZXZAdmdlci5rZXJuZWwub3Jn
PgpDYzogPGt1YmFAa2VybmVsLm9yZz4sIDxhbmRyZXdAbHVubi5jaD4sIDxhbGljZXJ5aGxAZ29v
Z2xlLmNvbT4sCjxtaWd1ZWwub2plZGEuc2FuZG9uaXNAZ21haWwuY29tPiwgPGJlbm5vLmxvc3Np
bkBwcm90b24ubWU+CgoKVGhpcyBwYXRjaHNldCBhZGRzIG1pbmltdW0gUnVzdCBhYnN0cmFjdGlv
bnMgZm9yIG5ldHdvcmsgZGV2aWNlCmRyaXZlcnMgYW5kIGFuIGV4YW1wbGUgb2YgYSBSdXN0IG5l
dHdvcmsgZGV2aWNlIGRyaXZlciwgYSBzaW1wbGVyCnZlcnNpb24gb2YgZHJpdmVycy9uZXQvZHVt
bXkuYy4KClRoZSBtYWpvciBjaGFuZ2UgaXMgYSB3YXkgdG8gZHJvcCBhbiBza2IgKDEvNSBwYXRj
aCk7IGEgZHJpdmVyIG5lZWRzCnRvIGV4cGxpY2l0bHkgY2FsbCBhIGZ1bmN0aW9uIHRvIGRyb3Ag
YSBza2IuIFRoZSBjb2RlIHRvIGxldCBhIHNrYgpnbyBvdXQgb2Ygc2NvcGUgY2FuJ3QgYmUgY29t
cGlsZWQuCgpJIGRyb3BwZWQgZ2V0X3N0YXRzNjQgc3VwcG9ydCBwYXRjaCB0aGF0IHRoZSBjdXJy
ZW50IHNhbXBsZSBkcml2ZXIKZG9lc24ndCB1c2UuIEluc3RlYWQgSSBhZGRlZCBhIHBhdGNoIHRv
IHVwZGF0ZSB0aGUgTkVUV09SS0lORyBEUklWRVJTCmVudHJ5IGluIE1BSU5UQUlORVJTLgoKQ2hh
bmdlcyBzaW5jZSB2MSBbMV06Ci0gYSBkcml2ZXIgbXVzdCBleHBsaWNpdGx5IGNhbGwgYSBmdW5j
dGlvbiB0byBkcm9wIGEgc2tiLgotIHNpbXBsaWZ5IHRoZSBjb2RlICh0aGFua3MgdG8gQmVubm8g
TG9zc2luKS4KLSB1cGRhdGUgTUFJTlRBSU5FUlMgZmlsZS4KClsxXSBodHRwczovL2x3bi5uZXQv
bWwvbmV0ZGV2LzIwMjMwNjEzMDQ1MzI2LjM5MzgyODMtMS1mdWppdGEudG9tb25vcmlAZ21haWwu
Y29tLwoKRlVKSVRBIFRvbW9ub3JpICg1KToKICBydXN0OiBjb3JlIGFic3RyYWN0aW9ucyBmb3Ig
bmV0d29yayBkZXZpY2UgZHJpdmVycwogIHJ1c3Q6IGFkZCBzdXBwb3J0IGZvciBldGhlcm5ldCBv
cGVyYXRpb25zCiAgcnVzdDogYWRkIG1ldGhvZHMgZm9yIGNvbmZpZ3VyZSBuZXRfZGV2aWNlCiAg
c2FtcGxlczogcnVzdDogYWRkIGR1bW15IG5ldHdvcmsgZHJpdmVyCiAgTUFJTlRBSU5FUlM6IGFk
ZCBSdXN0IG5ldHdvcmsgYWJzdHJhY3Rpb25zIGZpbGVzIHRvIHRoZSBORVRXT1JLSU5HCiAgICBE
UklWRVJTIGVudHJ5CgogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICB8ICAgMiArCiBy
dXN0L2JpbmRpbmdzL2JpbmRpbmdzX2hlbHBlci5oIHwgICAzICsKIHJ1c3QvaGVscGVycy5jICAg
ICAgICAgICAgICAgICAgfCAgMjMgKysKIHJ1c3Qva2VybmVsL2xpYi5ycyAgICAgICAgICAgICAg
fCAgIDMgKwogcnVzdC9rZXJuZWwvbmV0LnJzICAgICAgICAgICAgICB8ICAgNSArCiBydXN0L2tl
cm5lbC9uZXQvZGV2LnJzICAgICAgICAgIHwgNTk4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCiBzYW1wbGVzL3J1c3QvS2NvbmZpZyAgICAgICAgICAgIHwgIDEzICsKIHNhbXBsZXMv
cnVzdC9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwogc2FtcGxlcy9ydXN0L3J1c3RfbmV0X2R1
bW15LnJzICB8ICA3NSArKysrCiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxkICAgICAgICAgIHwgICAy
ICstCiAxMCBmaWxlcyBjaGFuZ2VkLCA3MjQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IHJ1c3Qva2VybmVsL25ldC5ycwogY3JlYXRlIG1vZGUgMTAwNjQ0
IHJ1c3Qva2VybmVsL25ldC9kZXYucnMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzYW1wbGVzL3J1c3Qv
cnVzdF9uZXRfZHVtbXkucnMKCgpiYXNlLWNvbW1pdDogZDJlMzExNWQ3MTcxOTdjYjJiYzAyMGRk
MWYwNmIwNjUzODQ3NGFjMwotLQoyLjM0LjEKCgoKCi0tIApQb2RjYXN0OiBodHRwczovL3d3dy5s
aW5rZWRpbi5jb20vZmVlZC91cGRhdGUvdXJuOmxpOmFjdGl2aXR5OjcwNTg3OTM5MTAyMjcxMTE5
MzcvCkRhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
