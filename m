Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 770CB9FDAA9
	for <lists+cake@lfdr.de>; Sat, 28 Dec 2024 14:25:51 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E2F283CB5D;
	Sat, 28 Dec 2024 08:25:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1735392346;
	bh=/CC1XCpam/LhchLthcfWZYVOVc9ISrb4QZjaLUvfkdg=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=WqmuMXjI65PRVpJrbwo1SFl0kNge2OXZn6HEubCxLgXqJCblMyDSYHaVEiaPNss5Q
	 gx+jEwZ9bpFwIKuurFDKoZ9O7y/3o6Yu1nMW8Yw0cibDIYeWYv4H7ZBX49AmYazwfu
	 0y/YViILBX5gc3eZtSkYFvRbhkuJ5DhJ3ftPz5ipgGCCd3p32yNDDZq4DOIR3HZ8h5
	 SSKs76hyA0EhD3yaBTxvujTPs9rAmGzuy5TK4Jnw+7NAhHpy50aksICqPiffg8ZHA2
	 pcmOeJHlg4Zt1T4+bkZ4VTTzTyUOUZh8Wm6yyG4HAD5V6ivTzrc4SGfXRRSXabKI1+
	 haT3Lu7rETO8Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AC2B93CB37
 for <cake@lists.bufferbloat.net>; Wed, 11 Dec 2024 13:53:36 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6E2A95C57C2;
 Wed, 11 Dec 2024 18:52:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 016F9C4CED2;
 Wed, 11 Dec 2024 18:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1733943215;
 bh=j2wMNToJjGdHIBwnzb8JzZ+mgkI1yv35iQ/gPJEuKM0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lqnoNAVCLkc0F6AxPB2DXwiLtjZ2GvCQQoStVMhdDXy3Xu6KA5/5BU9AFZbhj9pIf
 7sOgnWr912Uft7WMe0sMnrInYCuWbs+Icr2p/v+oyam4NW5LXndEcJE5Jjfs4Wod5F
 oKrvn3bNtYtwhvWMC/Oquxbuzt6gUcIuBQ00mwK1fmrSeaAwGyy+z2QFKuMxUZ+Pzh
 T5vwDBc8c6Eph3vN8csMjaXulNcAL7G3CTK36fMx4OGoe3N1s/kEKi7KFdSNtehZh1
 SMUr0RIG6WZKjyxehB7cjfR5aYDqpmzM7U053OU6iNtmeoA04JLApOakNH7D2L4a1a
 2qBylK/Zkx9JQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 11 Dec 2024 13:53:01 -0500
Message-ID: <20241211185316.3842543-9-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241211185316.3842543-1-sashal@kernel.org>
References: <20241211185316.3842543-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.119
X-Mailman-Approved-At: Sat, 28 Dec 2024 08:25:46 -0500
Subject: [Cake] [PATCH AUTOSEL 6.1 09/15] net: sched: fix ordering of qlen
	adjustment
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
From: Sasha Levin via Cake <cake@lists.bufferbloat.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, jiri@resnulli.us, netdev@vger.kernel.org,
 jhs@mojatatu.com, Lion Ackermann <nnamrec@gmail.com>,
 cake@lists.bufferbloat.net, edumazet@google.com, kuba@kernel.org,
 xiyou.wangcong@gmail.com, pabeni@redhat.com,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogTGlvbiBBY2tlcm1hbm4gPG5uYW1yZWNAZ21haWwuY29tPgoKWyBVcHN0cmVhbSBjb21t
aXQgNWViN2RlOGNkNThlNzM4NTFjZDM3ZmY4ZDA2NjY1MTdkOTkyNjk0OCBdCgpDaGFuZ2VzIHRv
IHNjaC0+cS5xbGVuIGFyb3VuZCBxZGlzY190cmVlX3JlZHVjZV9iYWNrbG9nKCkgbmVlZCB0byBo
YXBwZW4KX2JlZm9yZV8gYSBjYWxsIHRvIHNhaWQgZnVuY3Rpb24gYmVjYXVzZSBvdGhlcndpc2Ug
aXQgbWF5IGZhaWwgdG8gbm90aWZ5CnBhcmVudCBxZGlzY3Mgd2hlbiB0aGUgY2hpbGQgaXMgYWJv
dXQgdG8gYmVjb21lIGVtcHR5LgoKU2lnbmVkLW9mZi1ieTogTGlvbiBBY2tlcm1hbm4gPG5uYW1y
ZWNAZ21haWwuY29tPgpBY2tlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRv
a2UuZGs+ClNpZ25lZC1vZmYtYnk6IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5l
dD4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIG5l
dC9zY2hlZC9zY2hfY2FrZS5jICB8IDIgKy0KIG5ldC9zY2hlZC9zY2hfY2hva2UuYyB8IDIgKy0K
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5kZXgg
NzNlOGNhZWZmZDQ3ZS4uZWVlOWViYWQzNWE1YyAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL3NjaF9j
YWtlLmMKKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKQEAgLTE1NDEsNyArMTU0MSw2IEBAIHN0
YXRpYyB1bnNpZ25lZCBpbnQgY2FrZV9kcm9wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tf
YnVmZiAqKnRvX2ZyZWUpCiAJYi0+YmFja2xvZ3NbaWR4XSAgICAtPSBsZW47CiAJYi0+dGluX2Jh
Y2tsb2cgICAgICAtPSBsZW47CiAJc2NoLT5xc3RhdHMuYmFja2xvZyAtPSBsZW47Ci0JcWRpc2Nf
dHJlZV9yZWR1Y2VfYmFja2xvZyhzY2gsIDEsIGxlbik7CiAKIAlmbG93LT5kcm9wcGVkKys7CiAJ
Yi0+dGluX2Ryb3BwZWQrKzsKQEAgLTE1NTIsNiArMTU1MSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBp
bnQgY2FrZV9kcm9wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqKnRvX2ZyZWUp
CiAKIAlfX3FkaXNjX2Ryb3Aoc2tiLCB0b19mcmVlKTsKIAlzY2gtPnEucWxlbi0tOworCXFkaXNj
X3RyZWVfcmVkdWNlX2JhY2tsb2coc2NoLCAxLCBsZW4pOwogCiAJY2FrZV9oZWFwaWZ5KHEsIDAp
OwogCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nob2tlLmMgYi9uZXQvc2NoZWQvc2NoX2No
b2tlLmMKaW5kZXggM2FjM2U1YzgwYjZmZi4uZTM4Y2YzNDI4NzAxOCAxMDA2NDQKLS0tIGEvbmV0
L3NjaGVkL3NjaF9jaG9rZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2hva2UuYwpAQCAtMTIzLDEw
ICsxMjMsMTAgQEAgc3RhdGljIHZvaWQgY2hva2VfZHJvcF9ieV9pZHgoc3RydWN0IFFkaXNjICpz
Y2gsIHVuc2lnbmVkIGludCBpZHgsCiAJaWYgKGlkeCA9PSBxLT50YWlsKQogCQljaG9rZV96YXBf
dGFpbF9ob2xlcyhxKTsKIAorCS0tc2NoLT5xLnFsZW47CiAJcWRpc2NfcXN0YXRzX2JhY2tsb2df
ZGVjKHNjaCwgc2tiKTsKIAlxZGlzY190cmVlX3JlZHVjZV9iYWNrbG9nKHNjaCwgMSwgcWRpc2Nf
cGt0X2xlbihza2IpKTsKIAlxZGlzY19kcm9wKHNrYiwgc2NoLCB0b19mcmVlKTsKLQktLXNjaC0+
cS5xbGVuOwogfQogCiBzdHJ1Y3QgY2hva2Vfc2tiX2NiIHsKLS0gCjIuNDMuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=
