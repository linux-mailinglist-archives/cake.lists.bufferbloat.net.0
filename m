Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2569C46DD3B
	for <lists+cake@lfdr.de>; Wed,  8 Dec 2021 21:41:52 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 539143CB42;
	Wed,  8 Dec 2021 15:41:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638996106;
	bh=LpY4l/n3kHYmjscP5H//tVzgzc9tgR4EvGhEyiV7SKM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n+JxZqWiJQCSVeqY2GS/9CUr/qD7+bUojCTMvJRtNf4Ckj33W+Vbyl1T8SAiQQJsZ
	 BhLrIvUp96lt88ZquACJel4pUFlTX1PSf9s2bUvx2mVDF58BEJTdOtMbr+wh3Pr2ov
	 GRwtPL+OoLVT+22YP3Z3leGiSv76dAwj8O27ws92Dptyn/tO2lXA45wnppec1mJa+w
	 484sePAckMh+kPrIGTOj7HfBS/FVZCPg4VyRBTxkcQSqjXf137eZCKm5+9KyJPJgey
	 nTk3JJCi2f6+zsZSj8omXMdZphTJLa3LWEMenmX2JLRBC/dCLtgA7idAImhRyP5pNQ
	 b0FiZwmB0JaHw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4F8373B29D;
 Wed,  8 Dec 2021 15:41:44 -0500 (EST)
Received: by mail-il1-x12b.google.com with SMTP id w4so3330812ilv.12;
 Wed, 08 Dec 2021 12:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=wmIIdSvkLg+Fk+fxK/x2byKi7QWmoUGeJaVpAOVD/ss=;
 b=i+StspoZSvvwxTVMzY9+oq7wa8xL2SBwznZ/f20iQQg63eVMhFmeL4ljY2w3iob4JN
 XUOcVd+xaQ4mHW3ygYs4jm6eRbejtRSs1PE1YqTePUcAC2hqecNaf1oScI8E6Ro565o+
 iAYDOjQUqx/85DJq9AmPAjhV8XHUC6TaqOFeUngaDDdEIdWuLIEgj7cbu/JDJ4QHrF1i
 8GmAph78zr2Ep5wDhUZYRMSDxHAEC/Lp8XY3rDm4qRGl4pHjNMTNPLNn+GE8RUFHOnc6
 7fA3ZIYLy+TnetX3vBQAaLjZYyz1nGTJs6b8OM8u1KLVy/xoyJxmVKay1MJFTTIBcwdf
 wG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=wmIIdSvkLg+Fk+fxK/x2byKi7QWmoUGeJaVpAOVD/ss=;
 b=ZelEj9EEnY52Ss+JFYtCgNiXcIhjoyIgXZssX6MbED+0TD8QGUcZPah2dAAh73l5L5
 fk8NtW7DchykuLiy14zTVqjW3SODf+qDK1WWT6HMadc77ZCmpsdag4PtZ7N//LB7pLGc
 ii1HibMyAnxtQ693R5w6h8eDarcTXzdwrH6N60WNbhE+VSdeF7RCcGkCR4Sd5O1LWpO7
 RqUXpYb66+9AD2eY0NZ6CgFQcgUnuiacCZ5qjPAfhz5lQjXbBlLgM3L6lPafnyVsjKSZ
 SEeEzxbUZNsTvnvC622+Nb10MjPzKvRjw2lfPlvy9Bo0A85ykQGDJGNfPrDQC8yeIeue
 qeqg==
X-Gm-Message-State: AOAM533x2hJZP3PMxgw/GaYlSeQqE8ridl3zUDBr5B2fOdtiDGZE7cIJ
 qa/jtCS9aFPzL/LrabgaSuC45CfyFCFHfVo89525fRVex1k=
X-Google-Smtp-Source: ABdhPJwa3TyPBC+u8iBc5JeJpWeI6LawBJ5wQUSgr7ogjMZU/d4nn1S3n6fCPtHeaLIRh8K9vALGW8IUrHuvHLzrLzA=
X-Received: by 2002:a05:6e02:16ca:: with SMTP id
 10mr8433520ilx.274.1638996103218; 
 Wed, 08 Dec 2021 12:41:43 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 8 Dec 2021 12:41:29 -0800
Message-ID: <CAA93jw4qE+aLdNQ9O8AQoxC2u-Kk8jhF_uX3QeJumKJjQAC05g@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 network-quality-workshop@iab.org
Subject: [Cake] dec 22: mikrotik talk about fq-codel and cake in russian
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

c2VlIGh0dHBzOi8vbWlrcm90aWsudGVhbS8gZm9yIHNpZ251cCBkZXRhaWxzLgoKVGhlIHRhbGsg
dGl0bGUgaXMuLi4gdmVyeSBydXNzaWFuLiBJJ20gbm90IHN1cmUgaWYgaWYgZ29vZ2xlCnRyYW5z
bGF0ZSdzIHRyYW5zbGF0aW9uIGlzIHN1aXRhYmxlIGZvciBhIGZhbWlseSBvcmllbnRlZCBtYWls
aW5nCmxpc3QsIG9yIGlzIGNvcnJlY3QuCgpBbnl3YXksIGlmIHRoZXJlJ3MgYSBydXNzaWFuIHNw
ZWFrZXIgb3V0IHRoZXJlIHRoYXQgY2FuIGtpYml0ej8sIEkgZG8Kd29ycnkgYWJvdXQgaG93IG91
ciBhbGdvcml0aG1zIGZhcmUgaW4gdHJhbnNsYXRpb24sIGFuZCBpJ20gdmVyeQpwbGVhc2VkIHRv
IHNlZSBmcS1jb2RlbCBhbmQgY2FrZSBtYWtlIHRoZSBtaWtyb3RpayA3LjAgcmVsZWFzZS4KCi0t
IApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8v
d2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoK
RGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
