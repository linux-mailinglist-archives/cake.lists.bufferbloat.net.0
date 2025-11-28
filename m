Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 16132C91633
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 10:16:04 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id DF6B69D8CB4;
	Fri, 28 Nov 2025 10:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764321363;
	bh=usipuPYn5ld5rJeiXMqKZ2nQKPsQzBJK4oqES9h1OKk=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Wx6tz+SZ8i2ayILpfZQRL94uZqH7IseUG4NmziXKeqxyeQTm1+os/c6xK5ZjbSjDu
	 Vi6LCfeQkUWpvL13WE1vPLUcb+/HxeITDHw3+TTRCNurVH9yx9ICLjwA9JltLwIqMx
	 Rqs/5bChvv3enF5dJXWFI4xyDlhMF2niXRXWI4mHfDCLqNEChlhkcJhM1qI4CHfYEf
	 C7iS8apsjS2GMlJZ6yaZL9RnwthVxD2ROyAxJKmMYoKEl8B172yJoE1iKGRbiiqYkI
	 ynZd+1ZDtctBbqT9IH5QDEhDkiklW/T7dsWZmrZBnHpCw5oSUfZYfdbGHs+stLREkB
	 psYukzVw2ASPA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764321363;
 b=KKaKZ8i1xp2ZiWZOxuPaRnXBDW3eCdJkBCWU8Pan3d4qfcc3wcjX2NUNh/WkFq+gx9jVy
 eIedZVcUhBRaQwF6DxeUSlXbua/4/FdENAo1M9dAhf3ZWJ+PlYcNLD8I1JppdVXkIKjeKrj
 B2sAkFBHKEMYq0pSoZ26lTrCbg6bLlI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764321363; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=usipuPYn5ld5rJeiXMqKZ2nQKPsQzBJK4oqES9h1OKk=;
 b=GKPDv7mM40rAfOJvs6b84oBoAkEUdU5lleICFCiGW255aFwV6q7cS6JYLZDa807AyZZ8x
 VWv3ryBgJaNmL07ObNwILUpDTBJdjTghgdl8kB4bNQBZAfT+KDxiCR4ufb8gNb5rWb5Px89
 C8RoDCDkat8izogzkFdUk383lgq6wNE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764321362; bh=bme314r0R4rZn3g7Bo/m6PyuaJzoMliuBMysZpO/g6A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=XED1E763B/lj4snXCfMX/DZBsZpstzVlrEkYxyPIf9Wp+WG7MDF83RO66R7fOXga8
	 /RvsgI6ZfQdDY49mCGtnX9P1HhezWj2P8dmCmvZ8jsZTkllfEsfIK6Qpf9qNR9LRPx
	 XLfgh+z6Qv1XVJyjHOi4Y0GrraNfGoD66wO3g7iV3sXQ+hnu/BYCVdbe5uFW3rWlQ6
	 O21N0l9/S5kymjPLuzm6bV0lBzX3sRCILbYwWUMLr7EBGiSnT1/RgRF+yjai8JYAg/
	 3yNnNroXzqTbABRy8rT5dQwWSjrf1TAYydlR/tWedBD8XON9PHeEJl0mijCkTgWw1s
	 tuspce6GZhxkw==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
 cake@lists.bufferbloat.net, bestswngs@gmail.com, Xiang Mei <xmei5@asu.edu>
In-Reply-To: <20251128001415.377823-3-xmei5@asu.edu>
References: <20251128001415.377823-1-xmei5@asu.edu>
 <20251128001415.377823-3-xmei5@asu.edu>
Date: Fri, 28 Nov 2025 10:16:02 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87fr9ybjql.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: Y72TUP6KXMUNHNF7I2MG7QU3UCOBQT2C
X-Message-ID-Hash: Y72TUP6KXMUNHNF7I2MG7QU3UCOBQT2C
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v8 2/2] selftests/tc-testing: Test CAKE scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87fr9ybjql.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WGlhbmcgTWVpIDx4bWVpNUBhc3UuZWR1PiB3cml0ZXM6DQoNCj4gQWRkIHRlc3RzIHRoYXQgdHJp
Z2dlciBwYWNrZXQgZHJvcHMgaW4gY2FrZV9lbnF1ZXVlKCk6ICJDQUtFIHdpdGggUUZRDQo+IFBh
cmVudCAtIENBS0UgZW5xdWV1ZSB3aXRoIHBhY2tldHMgZHJvcHBpbmciLiBJdCBmb3JjZXMgQ0FL
RV9lbnF1ZXVlIHRvDQo+IHJldHVybiBORVRfWE1JVF9DTiBhZnRlciBkcm9wcGluZyB0aGUgcGFj
a2V0cyB3aGVuIGl0IGhhcyBhIFFGUSBwYXJlbnQuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFhpYW5n
IE1laSA8eG1laTVAYXN1LmVkdT4NCg0KUmV2aWV3ZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbiA8dG9rZUB0b2tlLmRrPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldAo=
