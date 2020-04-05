Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAF219E8F4
	for <lists+cake@lfdr.de>; Sun,  5 Apr 2020 06:17:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 899DA3CB39;
	Sun,  5 Apr 2020 00:17:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586060273;
	bh=xaeko/qVezN94T6saVCCP8mTOR7XxKQgmuhkZXEAWZM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QyTkWAAgmYdKjUkxc/D/3arpC1ov5id4DmT/JJAGrEBhcq/X74Y4VSs7nszWdQOs8
	 yEHRyRuGEyTSvzYkT5aAc+EsVwJxsmE/9hB0NXwlLvbi6xrcYScvoAhPEaxKhGm68R
	 Ffifi9Q8VOK6C4gvIZ2DMTkv1XWwjfWByFAlLJ0php2hHcnus5s3F3SQJJe82MaNEz
	 mp90utS6oYyp14LLkYtf54lkJtlwjSXT4CMsEZD06qSfGW5TRrcC76nS0FT/qrhOlI
	 SAOpvGbdKdj3SX4m/Vpn0/A62tM/cafIyiILMX/7gM/5vGf6Ui7sRlBtyBn2yZSE6u
	 fOL4fomrf9pNA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C98013CB35
 for <cake@lists.bufferbloat.net>; Sun,  5 Apr 2020 00:17:51 -0400 (EDT)
Received: by mail-il1-x135.google.com with SMTP id f16so11469897ilj.9
 for <cake@lists.bufferbloat.net>; Sat, 04 Apr 2020 21:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Erc1suQGIRNl6cZeC038bwPU1uvlefZnwH8UvEt7gVA=;
 b=n+s8QnkJlPbbRMdJ6bJhbhHaTMIn8NycRThiKRKAp0LYx5nRhwnjkWUMJMDLWK8Fdm
 xp1mHsGdTBqS4HsoRerbZdtcB2KFrKGBdShzLtH4gSOvoeHJ3mAd9PRLBXYQdx5E1YBg
 b8jYKvaDt4Jwnl23zhhQef4MWuLxa+K3ttaspOEHdbop/ofOobTaiSAHFx16hYLxrrK+
 5X/Lr9rTK0iPbeIitT0YscSfDnsMUOz66a+Jh75x1+LqfiMeuObWF00ufjoVsEKalSeY
 XNez9lZ4q56BZj5Dr2+H4U+om2B40FEGXZcJhm5rkJNMlZvr1xzGYqT/eFqi9HkObOow
 LU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Erc1suQGIRNl6cZeC038bwPU1uvlefZnwH8UvEt7gVA=;
 b=e7kQzd5IWLYeGIUp1kP9tqpbTXFAnmARd1dIQhSn9r2ZyCQBcBIWR2ELKwWCeSQ7cC
 gs2DmfE57VObPrBfAzSvRUDDhMkKpOCKOpDxf0LKm/jSHgG/ncdH4vSZllirwZvxBGOU
 ssxRTy6uInA6M2iwmNdVW575Win6gPfZEpbzAh+om2zNVFrlQ3spccB/5QiazIoBCwkd
 2SbpGMvKXxnzxAgjVIebMUk9ySH2Nw0g96G8tUZMKb6wXaGA1TbEoucwCO/NuOSf5rXx
 Rlq/un9h+bbtTH0A2dqXH32Of9C2BTpdUnZvugBixCTYGuUwimRTZjUwHYM35WSvqCQ0
 C40Q==
X-Gm-Message-State: AGi0PuaWwhEjZ3YIZB0k1WbSe44/sNCBx3SylN+fRuJkVU/nHg7wmqBe
 B2UUeprrz+Wv5Lq/kxI5eyfEWOrWj9C6UgtkMtTUd2pJ
X-Google-Smtp-Source: APiQypISBXINiUZrbHYQVUNCT4GP2GdH8hk78MMPS22NKtf0oy9kk64k93J7GAs1X+SLW2pc0ndQKBOAJUrPjtPQAas=
X-Received: by 2002:a92:a312:: with SMTP id a18mr15843990ili.249.1586060271037; 
 Sat, 04 Apr 2020 21:17:51 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 4 Apr 2020 21:17:38 -0700
Message-ID: <CAA93jw62J_psLswMnisU4c3j9J=Q-HTDRO5F2q_+YRFqV+MtKw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake and nat in openwrt... on by default?
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

SSBzZWUgY2FrZSBpcyBtb3ZpbmcgdG8gdGhlIHVwc3RyZWFtZWQgdmVyc2lvbi4gQXMgYmVzdCBh
cyBJIHJlY2FsbCwKbmF0IG1vZGUgd2FzIG9uIGJ5IGRlZmF1bHQgaW4gdGhlIG9wZW53cnQgY29k
ZSwgYnV0IG5vdCB0aGUgdXBzdHJlYW1lZApjb2RlLgoKUGVvcGxlIG5vdCBzZXR0aW5nIG5hdCBt
b2RlIG9uIHdvdWxkIGV4cGxhaW4gYSBmZXcgdGhpbmdzIGkndmUgc2Vlbgoncm91bmQgdGhlIGlu
dGVydHViZXMgdGhpcyB3ZWVrLgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQK
Q1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1
LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
