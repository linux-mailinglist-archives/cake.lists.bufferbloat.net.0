Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E732FB01B0D
	for <lists+cake@lfdr.de>; Fri, 11 Jul 2025 13:49:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3BE683CB41;
	Fri, 11 Jul 2025 07:48:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1752234539;
	bh=sbhA2oP6oX5/fAW61wpf7mw81pFuri/cKDSjT20wxZ0=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=KaQGnU0qHLUo+OiNQm1IPvHMW7g/L920mGhm9s4n8AaY1/wxQWDys15140vThaxOO
	 ADUKgOXghs05OwJOate9Uu/ICGDjQ9Y9A/9gWs5ym30KEbhHucTjxNeU6KKfXM2kty
	 pQKxvUzekiOWA2Avrb8K2HA5e9kcG+Fx59ahAxBZYk5BDIe8AMiLchaBqNdGRfLclJ
	 NEs8Teeqm23eZCISzpeRUthZc0oKvl+4DGiAl+kP0zqP9bXdEWb3MboKrNBKTgHCfQ
	 An5U9UCRuisr1PMCTAf2Gerau14pDcFnjQlmiZesowXoNd4BUCfConSzyDXrP439xU
	 v8mWnI/tL4pgA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com
 [IPv6:2607:f8b0:4864:20::112b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D73B13B2A4
 for <cake@lists.bufferbloat.net>; Sun,  6 Jul 2025 10:30:19 -0400 (EDT)
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-710e344bbf9so18869887b3.2
 for <cake@lists.bufferbloat.net>; Sun, 06 Jul 2025 07:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751812219; x=1752417019; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ILk6V+IjCGdWOhQWfk6SrwBKe81/cN3kOICCBDFtPzw=;
 b=WSv4qF5TL+sPRlHeHfNFqHxvPDCWZo2BNy+TxqF1Kk7XWAcJRO1ckRmzK82W6BvpyQ
 /3zYeRe8rSNLt0gRF2KCCivXAJYnX6li4HpSGdtya0etLRcpHQAdR8GAff6f+/0m40Gn
 So9fZZmKo7gkv/cPIBjSYNYpKz6hLCHCTGx1zq3KWBuexzD9DwTZFGWilZKcweHXt671
 OTJW58+tlkL5u2MPDkKQG6L68t6iRupvYIgTpkj0CZyDIyha5EcuGQFl8M9YWxi0bdVG
 Mwur/EiCexwrQRCubJsZVrQ+NZhomxrwBI4adaaubqH/dB1YjnmA9MMEgdX7J9ikhYSH
 wUGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751812219; x=1752417019;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ILk6V+IjCGdWOhQWfk6SrwBKe81/cN3kOICCBDFtPzw=;
 b=OR37RSw/i2FU5zC74G4OsBQd4HOSFEajnOQA/y1uFok6BARCqEaZZ5sC8c8k1J3JSA
 RgsXV92XBfso+Db+4ES5I+Z93cRmMjn2DaA9KrUwisNSxh3PDkfPEBK9MIEmSOOtMwl6
 sO+ljs4NBr3rGByY1nrbdgF2iM5S0Zy+J4FTqxs/bXfP1VTUoZe3+tuhxsMVInq6TDPu
 YgadJmAahNhBXgCuc4kLkLY+P7R50qS6zPP9OCCHF3IrjDFk8HgKBg+ILmBnY/2mCWs2
 5uCsVgXtEzJMz5XasSMzaVL0s1F1itF35hbgDUfFpVOdoxllOAXmxzWASWbE+mOBfjPe
 x0vA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOE9TG1J5INb2RXnLrGDnv7sLs3yGYBUsWGPFgH2MKKh2vPGwLGsvxdl0eFwCYdSjsWJoM@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzeq40jOrl2kte0X+I/JpbDTyY955JsNzxnzBFj9djQYagTvRbl
 Jj74fz+P46kDm3/sq3q5F3n0mT8gNUpUKY+2V/3bgDa9USXc12rY3VC1
X-Gm-Gg: ASbGncu6IwEBXFfP20ZkfCMyaD8bHccQBYLT104ECTxsvMRixyWejW/s+it4lqCsLa1
 SOjCyr6v54Xbyth7Z+M1wGTjj1vrcbc9zSojYzqUCdDJR0vwkGoGW/5WGCp9wK5tuR1+U2vNQq1
 SEhEWH9TqHlC/brkNtuXSAo58g50Spaxvbk8g2rDIQnCexckz/gDcM/ESsER06FlTxs6CTVJURQ
 2GQsIQLsoUrBn31QGlTJ5ZqTYk0pkT3Boy9gPNygsPHzNsOKOzc3MPDlRAxJ9iLygzdt/Ikq5BZ
 SmRjjf9S8kUoLV9X/6WocD9SYHA59LZ2B9BMIthjB2eKvlWOQSHsKBaw/OUc4w6gI+5MzzT1Cvb
 8rxgysLoitSTU9YEWH2IjWeThDcUa/zFsaZkW4dY=
X-Google-Smtp-Source: AGHT+IEBmKQ51ZAVM2knwYxTBZrzCKTaZIBinugB6wBxG5OAXF22jsYHYXdSZcwqnMwbxhIIzKhdhg==
X-Received: by 2002:a05:690c:38a:b0:712:d946:788e with SMTP id
 00721157ae682-7166b5f6d7emr106376527b3.14.1751812219293; 
 Sun, 06 Jul 2025 07:30:19 -0700 (PDT)
Received: from localhost (234.207.85.34.bc.googleusercontent.com.
 [34.85.207.234]) by smtp.gmail.com with UTF8SMTPSA id
 3f1490d57ef6-e899c440e7bsm2016366276.37.2025.07.06.07.30.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jul 2025 07:30:18 -0700 (PDT)
Date: Sun, 06 Jul 2025 10:30:18 -0400
To: Cong Wang <xiyou.wangcong@gmail.com>, Fengyuan Gong <gfengyuan@google.com>
Message-ID: <686a887a34d5a_3ad0f3294c@willemb.c.googlers.com.notmuch>
In-Reply-To: <aGdZFhGu40UD6UDU@pop-os.localdomain>
References: <20250702160741.1204919-1-gfengyuan@google.com>
 <aGdZFhGu40UD6UDU@pop-os.localdomain>
Mime-Version: 1.0
X-Mailman-Approved-At: Fri, 11 Jul 2025 07:48:57 -0400
Subject: Re: [Cake] [PATCH net-next] net: account for encap headers in qdisc
	pkt len
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
From: Willem de Bruijn via Cake <cake@lists.bufferbloat.net>
Reply-To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Kuniyuki Iwashima <kuniyu@google.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, cake@lists.bufferbloat.net,
 Alexander Lobakin <aleksander.lobakin@intel.com>, edumazet@google.com,
 Stanislav Fomichev <sdf@fomichev.me>, willemb@google.com,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Q29uZyBXYW5nIHdyb3RlOgo+IE9uIFdlZCwgSnVsIDAyLCAyMDI1IGF0IDA0OjA3OjQxUE0gKzAw
MDAsIEZlbmd5dWFuIEdvbmcgd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvbmV0L2NvcmUvZGV2LmMg
Yi9uZXQvY29yZS9kZXYuYwo+ID4gaW5kZXggMTFkYTFlMjcyZWMyMC4uZGZlYzU0MWY2OGUzYSAx
MDA2NDQKPiA+IC0tLSBhL25ldC9jb3JlL2Rldi5jCj4gPiArKysgYi9uZXQvY29yZS9kZXYuYwo+
ID4gQEAgLTM5NDQsNyArMzk0NCwxMCBAQCBzdGF0aWMgdm9pZCBxZGlzY19wa3RfbGVuX2luaXQo
c3RydWN0IHNrX2J1ZmYgKnNrYikKPiA+ICAJCXVuc2lnbmVkIGludCBoZHJfbGVuOwo+ID4gIAo+
ID4gIAkJLyogbWFjIGxheWVyICsgbmV0d29yayBsYXllciAqLwo+ID4gLQkJaGRyX2xlbiA9IHNr
Yl90cmFuc3BvcnRfb2Zmc2V0KHNrYik7Cj4gPiArCQlpZiAoIXNrYi0+ZW5jYXBzdWxhdGlvbikK
PiA+ICsJCQloZHJfbGVuID0gc2tiX3RyYW5zcG9ydF9vZmZzZXQoc2tiKTsKPiA+ICsJCWVsc2UK
PiA+ICsJCQloZHJfbGVuID0gc2tiX2lubmVyX3RyYW5zcG9ydF9vZmZzZXQoc2tiKTsKPiAKPiBU
aGlzIHBhdHRlcm4gc2VlbXMgcmVwZWF0ZWQgaW4gYSBmZXcgcGxhY2VzLCBvdGhlciB0aGFuIHRo
ZSB0d28geW91IGFyZQo+IHBhdGNoaW5nLCBJIHNhdyBhbm90aGVyIG9uZToKPiAKPiAyNDY1IHN0
YXRpYyBuZXRkZXZfZmVhdHVyZXNfdCBobnMzX2ZlYXR1cmVzX2NoZWNrKHN0cnVjdCBza19idWZm
ICpza2IsCj4gMjQ2NiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+IDI0NjcgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbmV0ZGV2X2ZlYXR1cmVzX3QgZmVhdHVyZXMpCj4gMjQ2OCB7
Cj4gMjQ2OSAjZGVmaW5lIEhOUzNfTUFYX0hEUl9MRU4gICAgICAgIDQ4MFUKPiAyNDcwICNkZWZp
bmUgSE5TM19NQVhfTDRfSERSX0xFTiAgICAgNjBVCj4gMjQ3MSAKPiAyNDcyICAgICAgICAgc2l6
ZV90IGxlbjsKPiAyNDczIAo+IDI0NzQgICAgICAgICBpZiAoc2tiLT5pcF9zdW1tZWQgIT0gQ0hF
Q0tTVU1fUEFSVElBTCkKPiAyNDc1ICAgICAgICAgICAgICAgICByZXR1cm4gZmVhdHVyZXM7Cj4g
MjQ3NiAKPiAyNDc3ICAgICAgICAgaWYgKHNrYi0+ZW5jYXBzdWxhdGlvbikKPiAyNDc4ICAgICAg
ICAgICAgICAgICBsZW4gPSBza2JfaW5uZXJfdHJhbnNwb3J0X29mZnNldChza2IpOwo+IDI0Nzkg
ICAgICAgICBlbHNlCj4gMjQ4MCAgICAgICAgICAgICAgICAgbGVuID0gc2tiX3RyYW5zcG9ydF9v
ZmZzZXQoc2tiKTsKCkZyb20gYSBxdWljayBncmVwLCB0aGlzIGlzIHRoZSBvbmx5IG90aGVyIGNh
c2UsIHJpZ2h0PwogCj4gTWF5YmUgd29ydGggYSBoZWxwZXIgbm93PwoKSWYgb25seSBvbmUgbW9y
ZSwgSSB3b3VsZG4ndCByZXNwaW4gZm9yIHRoYXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
