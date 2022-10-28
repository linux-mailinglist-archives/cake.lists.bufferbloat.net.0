Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F0C611B6F
	for <lists+cake@lfdr.de>; Fri, 28 Oct 2022 22:12:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5ED483CB45;
	Fri, 28 Oct 2022 16:12:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666987949;
	bh=D7LBjaGJFIrJMpR0bWsPwcvzlmtky3kHiMqORJaElzk=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=dvg1DWB6JHNUC30mUQz5ka/fgBFxsf/rVDB9HFfSZ5MJWvGlxZNobSarDr12kF1e8
	 SmdtTIVsI5MpVOXMSWyIHJQZdxtHlHI+ILuk5Uxfmbtoo4OsKeHe1fizJFVXRO/Qj2
	 3/LPzsHXn424a6yrw40qMUTWhYumWBAbjZR0df09Pqxzg/W4kp5NfkhmKJFSXAzKo3
	 KpfFiWVsYPiLVnpdilOeptYMFe109K2TRZRVoH6wXW+/8F1ejIF67/JtrvrRqOPVRY
	 bT60Rng104brcsBlMz+geXPSPc9TA717yi91sZKynq5zMNLvjK6UoUZxEq3vOS2fZT
	 PNLVYf/PbyrgQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 186523CB37;
 Fri, 28 Oct 2022 16:12:28 -0400 (EDT)
Received: by mail-wr1-x42a.google.com with SMTP id a14so7976360wru.5;
 Fri, 28 Oct 2022 13:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KSU8xAz0wr0tAOE/8jiSShStJqn+O1pvqFwOcoybD6o=;
 b=NO/LiBDctWhEICLcXnAReymqAlPGKERrDkKpWXylkj0lpiA/JDTKaciLnIHZ87AOj5
 GAHFmmZyZxf/G175PNbxab+ybF+xLefO3pvbvkDvEbEwpXriJDquRJn6U8np24h6R0jd
 6lGmvisYhERbJaKK3HoEuFt+0SZQUxExBCJfTUOI9/UaEwGsEx/raHkQB2uUc8/DxYjn
 WJk/JdKLRhP9Lzdt9HTyyiYC0TgtvnogWouJ/afyooU2hnH6TY/aQfLtEa1skQtuPyWd
 ri17RrNA/bIrd626qog2HjFiQvIH58bHGJlxUifajZ2fal1EGrZ6/uSipkP9KIV8EwUA
 GPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KSU8xAz0wr0tAOE/8jiSShStJqn+O1pvqFwOcoybD6o=;
 b=2C0nJui+ZMmQHNrsStWUsawhynECnXm0IY4F8Aqv573dH5afe9zGNhWNTd/SiUeUA6
 zNIZCfDOipoTUasufggjjTLlIPijwWLTUxjV7S8ThDcfz1MNtsiI2oV1M8PSUBQM6wBM
 DMUNkxZu6l6//IKutitTSwx6s34gZDOw6/7Gd+rWoqxJtb4dSd2PW4vAPK4VM1G5r+Um
 VQiEx8HyYh3wbZs9qjHff0yHs6ytqJB08LC9PFhfBOv1JYrELtOMgS/fE+/wUW5s+MEC
 oQul6xp6nJ9480IDOahRk+CkUYYHi3Ls6VtOvRUNYpQSD6A+6VS/d93RB20HiCH6hnO3
 Fb4Q==
X-Gm-Message-State: ACrzQf2EjCvan5ugxZbf5qzWXHmJM4KgJ1QUW56dfL/2m47ne0HUzC31
 T6q4+HS0XJ2C2bZhPij/OxX6woTbQ88frICY9/+8B+ztHQ0=
X-Google-Smtp-Source: AMsMyM4kja4SjiNOwAHXKZ135M5C293foL0fKriHaDxf8L/iRX56pYSHUj8uWLSP1Nb8itrEaSSyCdrOyL/XibbB6aw=
X-Received: by 2002:a5d:47a1:0:b0:236:6f4d:1db3 with SMTP id
 1-20020a5d47a1000000b002366f4d1db3mr567235wrb.383.1666987946198; Fri, 28 Oct
 2022 13:12:26 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 28 Oct 2022 13:12:14 -0700
Message-ID: <CAA93jw57yAkTQTTZBhNuk8Ft-iHzNiaaZhuBN-BQ=TFu17dvbg@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] grant funding avail for various open source projects
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

VGhlcmUgaXMgYSB0b24gb2YgZ3JhbnQgbW9uZXkgZ29pbmcgYXJvdW5kLCBhbmQgdmFyaW91cyBm
dW5kcyBhcmUKY2xvc2luZyBhdCB0aGUgZW5kIG9mIHRoaXMgbW9udGggb3IgdGhlIG5leHQuIElm
IHlvdSBrbm93IHRhbGVudGVkCnBlb3BsZSB0aGF0IGFyZSBiZWluZyBsYWlkIG9mZiwgb3IganVz
dCB3YW50IHRvIHByYWN0aWNlIHRoZWlyIGNyYWZ0CmluIGFueSB3YXkgdG8gbWFrZSBmb3IgYSBi
ZXR0ZXIgaW50ZXJuZXQsIHBsZWFzZSBwYXNzIHRoZXNlIGxpbmtzCmFsb25nLiBJZiB5b3Uga25v
dyBvZiBhbnkgb3RoZXIgZnVuZGluZyBzb3VyY2VzLCBwbGVhc2UgcG9zdD8gSSdkIGxpa2UKdG8g
Z2V0IGEgc3RhYmxlIGZsb29yIGJhY2sgdW5kZXIgbWFrZS13aWZpLWZhc3QgaW4gcGFydGljdWxh
ciwgYW5kCmZpbmQgZm9sayB3aWxsaW5nIHRvIGZ1bmQgb3IgaGVscCBvdXQgKGFuZCB0ZXN0KSBv
biB0aGUgbGlicmVxb3MuaW8KcHJvamVjdC4KCk5MTkVUIGlzIGV1IG9ubHkgYW5kIGhhcyB0d28g
ZnVuZHMgZm9jdXNlZCBvbiBwcml2YWN5IGFuZCBzZWN1cml0eS4KVGhleSBhcmUgdHlwaWNhbGx5
IGdvb2QgZm9yIDMwLTUwayBldSBhbmQgcnVuIGZvciBhIHllYXIsIGEgdmVyeSBzaG9ydAooMyBw
YWdlcyBvciBsZXNzKSBhcHBsaWNhdGlvbiBmbGllcyB3ZWxsIHdpdGggdGhlbS4gQ2xvc2luZyBk
ZWNlbWJlciAxc3Q6CgpodHRwczovL25sbmV0Lm5sL2Fzc3VyZS8KaHR0cHM6Ly9ubG5ldC5ubC9l
bnRydXN0LwoKTkxORVQgaGFzIGJlZW4gYSBodWdlIHN1cHBvcnRlciBvZiBidWZmZXJibG9hdC5u
ZXQgb3ZlciB0aGUgeWVhcnMsCm1vc3QgcmVjZW50bHkgZnVuZGluZyBteSAiY2Vyb3dydCBpaSIg
cHJvamVjdCwgd2hpY2ggd2FzIGEKY29uc3RydWN0aXZlIGZhaWx1cmUsIGluIHRoYXQgSSBsb3N0
IHdheSB0b28gbXVjaCB0aW1lIHRvIGRlYWxpbmcgd2l0aApyZWdyZXNzaW9ucyBpbiB0aGUgc3Rh
Y2sgdG8gbWFrZSB0aGUgc2xpZ2h0ZXN0IGJpdCBvZiBmb3J3YXJkCnByb2dyZXNzLgoKSW4gZ2Vy
bWFueSB0aGVyZScgcyB0aGlzOgoKaHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L2dlcm1hbnlz
LXNvdmVyZWlnbi10ZWNoLWZ1bmQvMTQxMDg5CgpBbmQgaW4gYW1lcmljYSwgQVJEQyBpcyB2ZXJ5
IGZvY3VzZWQgb24gd2lyZWxlc3MgYXBwbGljYXRpb25zLgoKaHR0cHM6Ly93d3cuYW1wci5vcmcv
Z3JhbnRzLwoKVGhlIE5TRiBQT1NFIGdyYW50cyBwcm9ncmFtIGp1c3QgY2xvc2VkICh3ZSBkaWRu
J3QgcXVhbGlmeSksIHBvdXJpbmcKMjFtIGludG8gdmFyaW91cyBvcGVuIHNvdXJjZSBvcmdzLCBv
ciBzbyBJIGhvcGUuCgotLSAKVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9sayB0aGF0
IHRob3VnaHQgU3RhZGlhIHdvdWxkIHdvcms6Cmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9wb3N0
cy9kdGFodF90aGUtbXVzaHJvb20tc29uZy1hY3Rpdml0eS02OTgxMzY2NjY1NjA3MzUyMzIwLUZY
dHoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
