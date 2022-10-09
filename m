Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 694745F8B8B
	for <lists+cake@lfdr.de>; Sun,  9 Oct 2022 15:15:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 976AD3CB43;
	Sun,  9 Oct 2022 09:15:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665321305;
	bh=4zLSRbsb7hQp1SlRjCIdBuCdrPEsvoXVif1ZdGVY64I=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=k9Mm+f9ttoXoyv6D1nm44FiPPgJPc1VAbpSafwHQkgsVMfjrLacanlDHyeZ4VexfC
	 usiRgpyt611xlkEo/86H9DPn/iEYSed38ItVOkKCEMKhAgsD55kfOE8uMiuADTF3yQ
	 BnJ4OXX9z6RiWMXcIHHHjsvTDIUz9kHDH+q6Vf1vgz3x1B5iA6aDGOep4GPOm1ZdRJ
	 6bOfZnkMmGfN6U9BgsEpMqU4RRxp01+m12sDMGx4CdeSrZZdGqUePlebm4j0BTaQ+M
	 ltjnTLmNzy7i/gSYwXQO0Hb7YdyZ/+X0zIfJcwHmW8NTfFzRH/pqmWdEOf4gCiFKV4
	 pyNJ2/THVOX2A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7CF553B29E;
 Sun,  9 Oct 2022 09:15:03 -0400 (EDT)
Received: by mail-wr1-x430.google.com with SMTP id f11so13503859wrm.6;
 Sun, 09 Oct 2022 06:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4YuxJDQiCVj1KI/RW5SPFiF9Et5Z3mTYNOJZLNz6cyk=;
 b=PCafBjkCAk1v3Hk2o9Rr5rhzRf/Whk5KoorC5bU8p4O6MDuOJqacmKKCCWHPLwxkdz
 GovJyHX8w1iYudYyaiT3iT4UYuNHoRwvmsJPfw3l9YsHs+QDT4I2uJPiVw95fAzVxIHe
 CATIj3rNaXG4d+liEjW9CqR0r4z+BRLZKRsXR6fOdFt9W21iYmU3XVbLd9I0VgnY1mCR
 qu9L+bk3JLPIw1cWkmI4fxUFp0yV2JH8WL1DHxqOSToqOMMatH6+8nUy7MDcP8YjR6z0
 8864R0xG3Dw/nerb34783ciQ8wOlpUsRZVvK7NZOfhz5qPN4z3aUDf0Pl4QeKIdPTliw
 /jeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4YuxJDQiCVj1KI/RW5SPFiF9Et5Z3mTYNOJZLNz6cyk=;
 b=zW89+u7WEXBUiRLOSI7ayycpAte78UF+/ykr4D7K8CQ9xcXduLVDdg04b2IaDVWByq
 qdB3N5bQNqyYguKxlr2Et3BdWI9X1jnWfGU41Ekw6FCsMUTlrAM8tIZ/iM2AMRtMbPIU
 Aqfd3wmad9DZMOx+sk4Ng0jWmATO42e9zvyor27ZFGZxvXKqB2RZfBTR3uGNBb1P+4Nz
 3JGlfxLyNcD82OEZZq7aLt6BFFo1EhdUO0IybpKQ4XJaCtI98algatAPVSFma/QJsuny
 ihIHUXshnYhr1M3AeArJIPOw2iR5bqS21A/fu6yFeVd7UjmTCyY3QQLMY4SwpRKcux8D
 f3Ag==
X-Gm-Message-State: ACrzQf3iTveYK+/fvEpsdnchTvJve4aiwBwRRzGg/hTfERYdhkanqHVt
 N6/VODdww6iftsuNtdGCkKqbAjp9zwIZvhteD3z82Uh62u8=
X-Google-Smtp-Source: AMsMyM5ATGTigSZHl6vUTUD5oMSYPDw71I5tP2QQOUMcWjkLSEYzoSeI021LP1Umzta+BN5waQq3T3AsianEjpD2Yj0=
X-Received: by 2002:a5d:64c3:0:b0:22e:57e7:6230 with SMTP id
 f3-20020a5d64c3000000b0022e57e76230mr8898617wri.482.1665321301741; Sun, 09
 Oct 2022 06:15:01 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 9 Oct 2022 06:14:50 -0700
Message-ID: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
To: Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] The most wonderful video ever about bufferbloat
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

VGhpcyB3YXMgc28gbWFzc2l2ZWx5IHdlbGwgZG9uZSwgSSBjcmllZC4gRG9lcyBhbnlvbmUga25v
dyBob3cgdG8gZ2V0CmluIHRvdWNoIHdpdGggdGhlIGlmeGl0IGZvbGs/CgpodHRwczovL3d3dy55
b3V0dWJlLmNvbS93YXRjaD92PVVJQ2gzU2NmTldJCgotLSAKVGhpcyBzb25nIGdvZXMgb3V0IHRv
IGFsbCB0aGUgZm9sayB0aGF0IHRob3VnaHQgU3RhZGlhIHdvdWxkIHdvcms6Cmh0dHBzOi8vd3d3
LmxpbmtlZGluLmNvbS9wb3N0cy9kdGFodF90aGUtbXVzaHJvb20tc29uZy1hY3Rpdml0eS02OTgx
MzY2NjY1NjA3MzUyMzIwLUZYdHoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=
