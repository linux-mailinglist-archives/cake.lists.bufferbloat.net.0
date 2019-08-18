Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 8068B917DB
	for <lists+cake@lfdr.de>; Sun, 18 Aug 2019 18:33:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 00BD63CB38;
	Sun, 18 Aug 2019 12:33:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566146033;
	bh=wIXnv6U+55XdZjDdagU1gGcZK2T3qkz91uWq5a1g6qI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=edRWrx1AJJVm+kcbymwURXZaqDqUjdvM59WheXa6lsJrKft0HoJPQYzm5vGr6VZr/
	 jcqq6zM57aQ74tvJKoKU7gC9DSOnKcZ2WhQYo4wLQ6GMLwR6XbpTNNQaCyPsQwYLvs
	 DU4D5L9W57kEbTfhCOSGGhyYD+LXT1Ddj1rY4XADAEgJ0UkKCxC9Dr64guq2P1zxDV
	 Ss9CXY64s4nV1gZp1kMe6I//rYXdV2U5lEfkBUya2wySZpsOS7ioSfjJ9Z3MKcTtJO
	 yyAUrP0s9qPWfDim+r7BNxK7viFDTH/VFHHtvLh1pr6M4yVEbqj2Qjdct4UOUPRPaT
	 rsimpaoNc9AmQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E596D3CB35
 for <cake@lists.bufferbloat.net>; Sun, 18 Aug 2019 12:33:51 -0400 (EDT)
Received: by mail-io1-xd31.google.com with SMTP id e20so15777308iob.9
 for <cake@lists.bufferbloat.net>; Sun, 18 Aug 2019 09:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5tVkksZBXe6e0MSly9YzUpaVO9jP9dcnwi7pcBzf8AM=;
 b=T+nSpfSldBTzo71HsP4u64kmi08KHLxLugklH7ECjg1iOZV5NiYYOMuHh5/Efp7dz+
 R8NMPiX/D5awJZTMN5wQuDgCfISVS17uk0dRyIy1q/WbGBXkLGQl3rLTU99UNsnN3zKB
 k3u7NOQa5C0NFtRXrRDS38ZGt+1sFTXZ7IGdIzhlSm+ZPJPLUW5vmWTD8BTMv/wmUxTQ
 oD3aSHKpMJUdnkwWxBBReIhUwuo4nMG7y51rMk2E4UDnzdea2CRt2OF+dfGgVW7wLW2m
 agupVJ67y1dhEszyHdnZITWAH2AoLNXeSUWC81uSPQrZrt+G8GLSyV3hfprdSpcHaREO
 99lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5tVkksZBXe6e0MSly9YzUpaVO9jP9dcnwi7pcBzf8AM=;
 b=BXHER7h9rDZOZsjdlyUSK5WHwNCbBss7VlfHCRRYvQeoI/EIA/RR6QhUtGQyeKfpmJ
 hiH/ev2xQvXEAl1wIHVWqZProy1qtyr5azqqzFvC2KgSliBwOujIZ0ukuPwGvh9I8y3k
 2/e1HNbRR0dr2RikZVidZRbpLwd2xoY25H9xerGJNwk7aqJSTqfrB1kmNKVYbhN5UIbm
 GuquyxiktBQUGGBrdG50fsowJpyDLCo2cKi7yKNtejQqNstZuCwKELTOP414bAC+x4KQ
 0P4bnlTsitL8cHRM+6kTRHtFw8HeDMB/0wmWl0Y8FN6tihmK1Vkt+GmFzXvKt/kN5mjz
 +OBw==
X-Gm-Message-State: APjAAAVhlF53GanDgn+fQJ2bPbZcMteEDET8CWv3ith2tTSoR4p/sWfu
 SD/IipZZzxlVoeI8Y+Pefu5uSE6yp+xv9obHu3oIAjEY
X-Google-Smtp-Source: APXvYqw/6IZJrTviLfpJmiU4KIUrXkS9ED9WwsONnR+F6Z6yvIiftErGZQjjHrVPVwoD2Zjog4SNUsYl45S46/lGed8=
X-Received: by 2002:a05:6638:45:: with SMTP id
 a5mr19709779jap.61.1566146030959; 
 Sun, 18 Aug 2019 09:33:50 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 18 Aug 2019 09:33:39 -0700
Message-ID: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake in dd-wrt
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

aHR0cHM6Ly9zdm4uZGQtd3J0LmNvbS90aWNrZXQvNTc5NgoKLS0gCgpEYXZlIFTDpGh0CkNUTywg
VGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMxLTIwNS05NzQw
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
