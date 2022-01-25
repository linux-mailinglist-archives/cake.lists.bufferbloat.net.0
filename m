Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A629749B2DB
	for <lists+cake@lfdr.de>; Tue, 25 Jan 2022 12:24:44 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4C0763CB39;
	Tue, 25 Jan 2022 06:24:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643109883;
	bh=oxd3LHqOiL2+bRpD1YzWCbOzad6siDPeQKnNUi+FFMs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jXj0g4sgT9hFJPiBfVrk6oH2wDTu6opOiWHhNt1kFz3R3OvYKAb3DTNsyG2arJMNy
	 /57B8MQxKauthJcGg2B8H5Z1QEmNnJJlgMsvxlygaXnxBxSMVZWz2o8GgyPt849Odg
	 IjqngZHBlshErAiIpnOg4nieQXXuvfYdwY/w9h6pQfAhCGR3aNlqKCuMYcZEybb6ZU
	 0sc6/fdhDs8FCt+rcrnrcp7LYcvkSOL1ouPnwtNjqOFS1KwamXYa/bHN/7UL04x0k6
	 ka5/hZAG1UYi4hdztw+3+mpDWwwpak7f8FCKwYc/cc7ffrnAUTrMZ6zUsSzqx+at7A
	 yM11jrX+MAvfg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EF4313CB35
 for <cake@lists.bufferbloat.net>; Tue, 25 Jan 2022 01:04:22 -0500 (EST)
Received: by codeconstruct.com.au (Postfix, from userid 10001)
 id 9C7F0202F7; Tue, 25 Jan 2022 14:04:16 +0800 (AWST)
From: Matt Johnston <matt@codeconstruct.com.au>
To: 
Date: Tue, 25 Jan 2022 14:04:10 +0800
Message-Id: <20220125060410.2691029-1-matt@codeconstruct.com.au>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 25 Jan 2022 06:24:42 -0500
Subject: [Cake] [PATCH net] sch_cake: diffserv8 CS1 should be bulk
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
Cc: netdev@vger.kernel.org,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIENTMSBwcmlvcml0eSAoaW5kZXggMHgwOCkgd2FzIGNoYW5nZWQgZnJvbSAwIHRvIDEgd2hl
biBMRSAoaW5kZXgKMHgwMSkgd2FzIGFkZGVkLiBUaGlzIGxvb2tzIHVuaW50ZW50aW9uYWwsIGl0
IGRvZXNuJ3QgbWF0Y2ggdGhlCmRvY3MgYW5kIENTMSBzaG91bGRuJ3QgYmUgdGhlIHNhbWUgdGlu
IGFzIEFGMXgKClNpZ25lZC1vZmYtYnk6IE1hdHQgSm9obnN0b24gPG1hdHRAY29kZWNvbnN0cnVj
dC5jb20uYXU+CkZpeGVzOiBiODM5MjgwOGViM2YgKCJzY2hfY2FrZTogYWRkIFJGQyA4NjIyIExF
IFBIQiBzdXBwb3J0IHRvIENBS0UgZGlmZnNlcnYgaGFuZGxpbmciKQotLS0KIG5ldC9zY2hlZC9z
Y2hfY2FrZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2No
X2Nha2UuYwppbmRleCA4NTdhYWViZDQ5ZjQuLjZmZjJkZGM1YjgxMiAxMDA2NDQKLS0tIGEvbmV0
L3NjaGVkL3NjaF9jYWtlLmMKKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKQEAgLTMxMyw3ICsz
MTMsNyBAQCBzdGF0aWMgY29uc3QgdTggcHJlY2VkZW5jZVtdID0gewogCiBzdGF0aWMgY29uc3Qg
dTggZGlmZnNlcnY4W10gPSB7CiAJMiwgMCwgMSwgMiwgNCwgMiwgMiwgMiwKLQkxLCAyLCAxLCAy
LCAxLCAyLCAxLCAyLAorCTAsIDIsIDEsIDIsIDEsIDIsIDEsIDIsCiAJNSwgMiwgNCwgMiwgNCwg
MiwgNCwgMiwKIAkzLCAyLCAzLCAyLCAzLCAyLCAzLCAyLAogCTYsIDIsIDMsIDIsIDMsIDIsIDMs
IDIsCi0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
