Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A88AC8D75D
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:14:41 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id E63C79D3DB8;
	Thu, 27 Nov 2025 10:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764234880;
	bh=usipuPYn5ld5rJeiXMqKZ2nQKPsQzBJK4oqES9h1OKk=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=QfErzj4aYDfv/7WiqE1UNDc6v/WeKqtOYl4fpl8tm0Z+Dpun/HvSyWjCioZW9K9+v
	 u69KLhiJci5z4G9vYAvLsuHi0AHWZerX8MDjNHNqgZOBCb8dTNIiSCBPq+6Y1yWQwK
	 yfjS69Rc937jlbw5RUM0ObR7hREwczKBR0fAF5CREpq5Kf6DtVxTn2SWPuNBcdiPDH
	 lF5TwdY3UCYu2vsnXrU8z/q5T/TRMrtrvAB2udFsoQvJAOg1XUUzfo+YaicsjLqkAK
	 eC7hKSC0w5udxrpzesWxuYpZny1GexJa0k7ACLzBAMBch3WeQY1uCODHNZiy8xXvP2
	 V/dtzfV+GKevA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764234880;
 b=0RCYvLIQO4ceRCPQJGfjujOe2rQg2fS5nN5KptOlx1EZd8dDVBri6rBNVhfM/8iOGDNLN
 1LVtKKM9oNN1liUkKge0d6OuO5ceZaDerpj8zC+A6XZb6wIfab18W0UYaJmQU/7h9akY9Qe
 Ev/WNdwL4qjqnCIE9HECUqHfthYEHTg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764234880; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=usipuPYn5ld5rJeiXMqKZ2nQKPsQzBJK4oqES9h1OKk=;
 b=tETRvTbDqw63UAwN4JHT7QQZLmoiPv5dNJZX4HhbiGr3Ypu0X+AH5ac+ELkvo5+oNMAWX
 82kPptzsIjGEBDpNK3ZaXVLe0Vr11m8M6aXm8ta5ki/7SBtoYdBbqEBRehlLNo5uqiKntf6
 ldeSY4r8ixDVtpyUatXffqcG6sy988A=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764234879; bh=bme314r0R4rZn3g7Bo/m6PyuaJzoMliuBMysZpO/g6A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=IfgwrT817R/ZULL6EwtEhIypNNMWBpEQ6TQ6OukOL2fB+I2CqVGA0dstrRGyMMUXI
	 /Iq5AXcYYgSYVVwHj44je3WIFFX61LcRkB37IqnFSgW8OijjF0lTGh4XL2PwA5EfH6
	 3tWWv1whP0OE5s3K50QjdGGM8HsF+eppRa0UeIq22EImjNsPVSKL1fSr4lkV8VeyYP
	 T7uelm8si9Kq8u98a/brh2K81z6VsMSdw6+k39WqaVVIt6kvBQ/6nVW4kSdc0vBsyd
	 5FOCatXNdbExQC83deo0HLu75DLpuPb+OOKKPRk0Mz3JUIeRHGFBLLn9iblWKa3nOl
	 sg8GobJUty4bg==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
 cake@lists.bufferbloat.net, bestswngs@gmail.com, Xiang Mei <xmei5@asu.edu>
In-Reply-To: <20251126194513.3984722-2-xmei5@asu.edu>
References: <20251126194513.3984722-1-xmei5@asu.edu>
 <20251126194513.3984722-2-xmei5@asu.edu>
Date: Thu, 27 Nov 2025 10:14:39 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87tsyfbzwg.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: ENAG7X6JLNQ5OCS7LTINHSL7W5USGHMB
X-Message-ID-Hash: ENAG7X6JLNQ5OCS7LTINHSL7W5USGHMB
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v7 2/2] selftests/tc-testing: Test CAKE scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87tsyfbzwg.fsf@toke.dk/>
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
