Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DED65AC500
	for <lists+cake@lfdr.de>; Sun,  4 Sep 2022 17:28:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 581783CB40;
	Sun,  4 Sep 2022 11:28:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1662305326;
	bh=hl3Yzjf90QcrmxmN46TSZ94Z2er75t9k4cf3tEF9vEQ=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=nxEUgnzRVCcs8wRnHWh39g1bR13tN0WP0qSA/wMhnRxeRlsScQ8saCGRUzX3lv0Ha
	 R8k0VIprZR+Gt+XEM+HVHWzn8oQ1gisbQy965Yvd99be6QP9oE5tqKvMTcmSalpnP8
	 8TwfFXNS4z2FXyO91RoeNwkW3U2wqhMcraMZ+FQc56i+4M+AbVNtFNyqLQSfXHgO//
	 SNNd1IAD/sm2ykmbfHB2TbLEPVIqa5djYT5QlPUR7FAiEkyHh5lQW2uRfqhEINq0f8
	 oWXRdcpnfQwAAZ0d0xeozh9+VBeOZjIE9dOLg8UWSdPV8/0rMwAW5/NcC4I/XF+9Pc
	 Hz1RMv+Lxslew==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2668F3B29D
 for <cake@lists.bufferbloat.net>; Sun,  4 Sep 2022 11:28:45 -0400 (EDT)
Received: by mail-wr1-x42e.google.com with SMTP id t7so3293176wrm.10
 for <cake@lists.bufferbloat.net>; Sun, 04 Sep 2022 08:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date;
 bh=L9zjMw1xzHzHNGiBYXa5Kv/yd+tYhOaVFQYR3I0OXG0=;
 b=T+aygU+BP3OhbKBlJgSLS8Vtz4umU8sh+/P/Rw9UMVQ+jdqeXTK81H6JEgPPzvqN7A
 d83iinJ2gnWVuLNDj7QjICh/QOEl/ORu1gVEYj5k75RayD/eFn8twmMDQxTkaVr4MKXt
 TGgm39nff0NH44z8shNbWkFKCekT/IrQ61xWPUboluo83Fj8UaLJi1ID1JF7CuMjMZWq
 VMqTVYyQplh6jsEeWOVUh2IxmsbGUVep2/76PxF4EYS8Ah7Ii8klMVYxzq8+nny+IUxE
 zOcPgk0loJjforrDM4hLVbwKbyjhAnc0VuotTtwHPpa9ut8b6D8gTo0HXtA29QKeaHT3
 KN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=L9zjMw1xzHzHNGiBYXa5Kv/yd+tYhOaVFQYR3I0OXG0=;
 b=BgZfyIONJlunHDel9O68Ttl9kFcnV8j/d2zdMIt4cutPeAMTHOwNxW1oZtVSNrOM2y
 CA4bz3ERwIsLynj2pWtkH06KOeG0/4ycxFWSWenBmjQFvv8WhDf9wcGWEt9paDdGeSIf
 rMQX6/IIEH01Dt7yBYxqWpS1buFo+tHp6Y1qUU55ThjirRn3Ss6aZyXz/IbYb3g8n3wP
 KlM3ajr18dvvOgFXhUMg22X4MU2Fapgr+7hRpiJST72pGAIibKgtiYuuARAtrQDPdfJZ
 hYmo0FA/lj5SZlQ5t3WHZbsqURVm7xAEU9DTwh3fhomc4y6AfVsMIF4e7sS2PgE/ACmB
 dUKg==
X-Gm-Message-State: ACgBeo1i2+VSXX480snPcauwjaLjXauTeuOEsVJ1hmjLn54w5BTdVstG
 /kz8ALTY0g3x5+xD+ZaaoAQhb/N2E2brtoYKFs2pxNY1eY0=
X-Google-Smtp-Source: AA6agR5pTPeF4AvImYtEsN9MSwMtHwWD+REvImMWh0FkVbI0gvQLumOvESgXhQulZ2inCCXqRBd0XMhggOFhdus8yq8=
X-Received: by 2002:a5d:5942:0:b0:225:7425:4e39 with SMTP id
 e2-20020a5d5942000000b0022574254e39mr21618375wri.566.1662305323670; Sun, 04
 Sep 2022 08:28:43 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 4 Sep 2022 08:28:32 -0700
Message-ID: <CAA93jw4Ru5gg8OPdrgH0vce_LAmTeBONRjCWFuRc=2EqdDk3Yg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] ack-monitor?
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

R2l2ZW4gdGhlIHN1Y2Nlc3Mgb2YgYWNrIGZpbHRlcmluZywgYW5kIGNha2UgaW4gdGhlIGxpYnJl
cW9zIHN5c3RlbQoobm93IHNjYWxpbmcgcGFzdCAxMEdiaXQpIGFuZCBwcGluZyBhbmQgZWJwZiBw
cGluZyB0dXJuaW5nIG91dCB0byBiZQpwcmV0dHkgaGlnaCBvdmVyaGVhZC4uLiBJIHN0YXJ0ZWQg
dG8gbXVzZSBvdmVyIGhlcmUgYWJvdXQgdGhlIGlkZWEgb2YKZXZlbiBtb3JlIGRldGFpbGVkIHN0
YXRzIHRoYW4Kd2hhdCB3ZSBnZXQ6CgpodHRwczovL2dpdGh1Yi5jb20vcmNoYWMvTGlicmVRb1Mv
aXNzdWVzLzU4CgpJIGRvbid0IGtub3cgaG93IHRoZSBxdWljICJzcGluIGJpdCIgaXMgc3VwcG9z
ZWQgdG8gd29yaywgYnV0IHRoYXQgdG9vLCBwZXJoYXBzLgoKLS0gCkZRIFdvcmxkIERvbWluYXRp
b24gcGVuZGluZzogaHR0cHM6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29k
ZWwvCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
