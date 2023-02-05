Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD6168B1FB
	for <lists+cake@lfdr.de>; Sun,  5 Feb 2023 22:44:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 29C533CB40;
	Sun,  5 Feb 2023 16:44:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1675633472;
	bh=NhyJVSphZtp8AbYEmyc8B9I1pRQUQfBB26ySBpZglOI=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Gj80i8onNoG9kNfOtbj31US7K+oHidXSeYTMBGkw5nftEu/w2cwLchx60g2xRqq/L
	 DJ2f8PRXOS1eRyIaR6t9aonx2lDd5dChxMMDIQAuU2YiNNrQb7M9aHjlr3ufv3hM1t
	 b3PLSNh6kZgkqEe7SD32BMNWypU1rBtCEyeC6LdzJw9QKH0RQe1R7ADy2T+V0Z4ZE9
	 1aRSIta7ClZs3Iyw4tIT+oa7B3M+VfhhRbbVkDv1c7u6vLlV+gBD58rKOvM+RCe6YL
	 +/JlacM5Q+4M92f1wfU3XZg0v2i9BzJ5Z8GSe/r2RYAKyPcLCUl3wisL77VMSigEWw
	 hJwn6iuOHR0Kg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BAE723B29E
 for <cake@lists.bufferbloat.net>; Sun,  5 Feb 2023 16:44:30 -0500 (EST)
Received: by mail-wm1-x333.google.com with SMTP id
 n28-20020a05600c3b9c00b003ddca7a2bcbso7471278wms.3
 for <cake@lists.bufferbloat.net>; Sun, 05 Feb 2023 13:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=tLBTWX51Ppp3EXjXUY4F+KgYuJVrauwKqkfIhoMM/jU=;
 b=cQ/7c9Zy/NeIqPfjj5mF3lVmhxQ90P+swn9N2mEvk2FdMMkJXTKeNc0hezwGH3NCPp
 xEPrBt3Ns0obS7NSt86/LPV+gXhXIADKIu4uTet/9q1dXSSpI+K06Uz9oVBfhNa8lKNl
 rtBkZNocUpSP/4nmyDVxRAvPShyIJwagjyEy3adxJZWSkgdd9BqdyiJXvB6xVph7uPCp
 upOBUzVzAaIsJKbn5H3oJEf0bY8GbWCQKjjPHd8h/Vo0dYH4PIMgYrHuS4dKQ2C9YaY7
 M5bFSp8G+ZxLZpsREGxv8mhqZ8d3ZTc7qghjyRwhAQESyl/nyIgh744PdqS7qCtF+zQb
 hAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tLBTWX51Ppp3EXjXUY4F+KgYuJVrauwKqkfIhoMM/jU=;
 b=f3k9VrDJJppwxsNdfMrz5R1o1wUAyaNEehfHHtk+ds0GO1QZXRnZMlnTMOkgLNbpSP
 PbO2ylHrk/CoZIdPbh6mtByhGneBwAUoYs1up0fkJ6uPKuLC3qz7XU0tuOS9ZC+rsXo4
 pFnSe8khmG0uRAzROqPgRzAQ9XUryFYObnqFSkurCZu3+6MGYSi2LkcuMGW8PBUUV+AA
 f43NkJj/E6Npdg0pwkxnpncvk2z2MvnkmEicRjvPmFNiFiYIELLEX3JNp4whfi5aYEX1
 StgPgX5JXJjT2PBpF8INe7UxmEVrW9fAiQEesjI0e0Dp8hmB4QEqlEVGl6cTgY1KSIaF
 1izA==
X-Gm-Message-State: AO0yUKUmW3ngw1LI19TwKBCOE5eNvLKAQuNJiGn6wR5ydChtZYf/Uzbg
 AG5K/2dvzRIA+mFKDP88inKoamlhTnGb1A4UVwUSo6fB0p4=
X-Google-Smtp-Source: AK7set9mpHN0y/VCygO/lcqawX27vNGvMsm9IUqUoyEfl6qxnLbr5qDir4ZQ9cQg8Wc3bGopGcUTJnHcnc6KpTMuP0o=
X-Received: by 2002:a05:600c:310c:b0:3dd:1ca4:9bf4 with SMTP id
 g12-20020a05600c310c00b003dd1ca49bf4mr772980wmo.205.1675633468812; Sun, 05
 Feb 2023 13:44:28 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 5 Feb 2023 13:44:16 -0800
Message-ID: <CAA93jw4+kMLHoOSE9xLhxcHcmoSj4HMBEotW_JgpOkrb046Skw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] flow dissection vs encapsulated traffic?
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

SW4gbG9va2luZyBob3cgdGhlIGNvZGUgaGFzIG1vcnBoZWQgc2luY2UgSSBsYXN0IGxvb2tlZCBh
dCBpdCwgSSBmb3VuZApteXNlbGYgc3RhcmluZyBhdCB0aGlzIGJpdC4uLgoKICAgICAgICBza2Jf
Zmxvd19kaXNzZWN0X2Zsb3dfa2V5cyhza2IsICZrZXlzLAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEZMT1dfRElTU0VDVE9SX0ZfU1RPUF9BVF9GTE9XX0xBQkVMKTsKCi8vIHNv
IHdlIGhhdmUgZGVsdmVkIGRlZXBseSBpbnRvIHRoZSBwYWNrZXQgYXQgdGhpcyBwb2ludC4uLiBm
aW5kaW5nCnZhcmlvdXMgZW5jYXBzdWxhdGlvbnMuLi4KCnRoZW4gd2UgZ2V0IHRvOgoKICAgICAg
ICAvKiBEb24ndCB1c2UgdGhlIFNLQiBoYXNoIGlmIHdlIGNoYW5nZSB0aGUgbG9va3VwIGtleXMg
ZnJvbSBjb25udHJhY2sgKi8KICAgICAgICBpZiAobmF0X2VuYWJsZWQgJiYgY2FrZV91cGRhdGVf
Zmxvd2tleXMoJmtleXMsIHNrYikpCiAgICAgICAgICAgICAgICB1c2Vfc2tiaGFzaCA9IGZhbHNl
OwoKVGhpcyBsZXZlcmFnZXMgc2tiX3Byb3RvY29sKCksIHdoaWNoIGFzIGJlc3QgYXMgSSBjYW4g
dGVsbCBqdXN0IHBlZXJzCmludG8gdGhlICp2bGFuIGhlYWRlcnMqLApub3QgZGVlcGVyIGludG8g
dGhlIHBhY2tldC4uLgoKVGhlbiB3ZSBwcm9jZWVkIG1lcnJpbHkgaW50byB0aGUgdXBkYXRlX2Zs
b3drZXlzIGNvZGUgdGhpbmtpbmcgaXQgaXMKdGhlIG91dGVyIHR5cGUKKGlwdjQpLCBub3QgdGhl
IGlubmVyLCB0aGVuIGRpc3NlY3QgYXdheSwgdXNpbmcgYSB2NCB1bmlvbi4uLgoKQW0gSSByZWFk
aW5nIHRoaXMgd3Jvbmc/IFBsZWFzZSB0ZWxsIG1lIEkgYW0gcmVhZGluZyB0aGlzIHdyb25nLi4u
CgoKCgotLSAKVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9sayB0aGF0IHRob3VnaHQg
U3RhZGlhIHdvdWxkIHdvcms6Cmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9wb3N0cy9kdGFodF90
aGUtbXVzaHJvb20tc29uZy1hY3Rpdml0eS02OTgxMzY2NjY1NjA3MzUyMzIwLUZYdHoKRGF2ZSBU
w6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
