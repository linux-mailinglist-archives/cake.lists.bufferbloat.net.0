Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AE3A69884
	for <lists+cake@lfdr.de>; Wed, 19 Mar 2025 20:00:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9409A3CB43;
	Wed, 19 Mar 2025 15:00:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1742410825;
	bh=+eqz2R43E9XgZcNeR5nOS/n0HpwYWyu4BFnQA/umM0U=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=hN0uGX3fqKUoKEETnHeu+1P4fuElgY/4A6F0advbYK9qSYrmGDg7DXi7neBODnwiJ
	 draq0np5afOAKZIoYByD5LSt+IlY8t/kItCgX+jJORa9LqJII9RT74Urekp7J2ox2R
	 SYTr7mBIS+35HXN7mK3Zwke1SST3Xt91EAOotCC2wz8UrTaoXGF0dFAm36XpzmqzZ+
	 fkVkBxBHHCwfCaxE8E/biFX8xdpX8qWCV8LI8QZZJwXxmSMF3Qyx1NvvOqdbDb3XN5
	 A3n6NiE68Jmiot8Nxcd8vmS2fdz9e7UBbt+o9fdTHP8hbc8x9SXawfQ3+FZzCPdIkX
	 d3bvreHQrhHsQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from resdmta-a2p-658371.sys.comcast.net
 (resdmta-a2p-658371.sys.comcast.net [IPv6:2001:558:fd01:2bb4::d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0CF773B29E
 for <cake@lists.bufferbloat.net>; Wed, 19 Mar 2025 15:00:24 -0400 (EDT)
Received: from resomta-a2p-646965.sys.comcast.net ([96.103.145.237])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
 (Client did not present a certificate)
 by resdmta-a2p-658371.sys.comcast.net with ESMTPS
 id uxjYtCZpTSOV4uyeNt6xz2; Wed, 19 Mar 2025 19:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastmailservice.net; s=20211018a; t=1742410823;
 bh=z21Vup6HWFGS90meq7H93k/0NvtO+MFq+oQXQKF+jfg=;
 h=Received:Received:Received:Message-ID:Date:MIME-Version:To:From:
 Subject:Content-Type:Xfinity-Spam-Result;
 b=Q4CW256jjPEgFO+E/agBaWzwPaBKEoCd0QruUz/8ZyX+/o+zpZY3bvhTPCQeeUi/V
 Gnd6LbOkFjieRyLSz16rUe6nuk5YCJY18++pe19r/bR39ka4/dCAkeauyNEJBf6vvg
 ntUPGPc0j0Q/ZIQgJyxjydIz9bBjGlh85f4vhlucy3ynqRILdi3+xBjiKTIYisIuWs
 UKLcQmTiYO8tUaaEtC/u6euz9NvoUX2rbUY5Chg2Rb2K5jtro1VxUdQcLrAxtJ2lJ3
 p6aCks1UsfwMZV4xoMtgK1aQq7t+6F03EED8IRwzXYeqdUobEkCarIagdTq+htUR00
 QKBoY4wD9hbUw==
Received: from home.sewingwitch.com
 ([IPv6:2001:5a8:458c:ae00:2e0:81ff:feb5:9463])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
 (Client did not present a certificate)
 by resomta-a2p-646965.sys.comcast.net with ESMTPSA
 id uycDt7orvWiI1uycJtC7K9; Wed, 19 Mar 2025 18:58:20 +0000
Received: from [10.96.7.39] ([10.96.7.39]) (authenticated bits=0)
 by home.sewingwitch.com (8.14.7/8.14.7) with ESMTP id 52JIw6Dm022980
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <cake@lists.bufferbloat.net>; Wed, 19 Mar 2025 11:58:07 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 home.sewingwitch.com 52JIw6Dm022980
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sewingwitch.com;
 s=default; t=1742410688;
 bh=z21Vup6HWFGS90meq7H93k/0NvtO+MFq+oQXQKF+jfg=;
 h=Date:To:From:Subject:From;
 b=xMIdUUFSXf6IBRn7yKMhQo+HVxo0LiNgVdTcm3Ognjdc7m9IdrOcGKQgRVuMRKXsG
 NAfcW1VGQApRC5qVulxbxbZZ9dC9rvOuPtftsF0s4tGUWxueoxGapmu8iPZbadCmNn
 tsPMkBx9Sp6AtZ0aoIW4T5xKsArZwPrwtfsFlr9Y=
Message-ID: <364cc0bc-054d-480f-92a0-d38a251ded24@sewingwitch.com>
Date: Wed, 19 Mar 2025 11:58:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Cake List <cake@lists.bufferbloat.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 3.4.1 on 10.96.0.132
X-CMAE-Envelope: MS4xfC16GG6YGq07KEO6LgBVp/LxmczWRnv+7u4jgQ1uC28FAXtJ0NpLWwEFs4DONnboMRnSfW69udTIIGBLcg+CHbWp34v37Tiv9GcKfMhGOybkWC/VwI3g
 L+JWgLkXxd+CTqK1FuhiZT7YlT9S89U0zwsdw+AWicGi9YTbaT2QLEzBhzAIXhx2dHalRN/K4zEcf9S5zu8VLPkK7NvJVuoC6Twn3rZLtxOYcMAXuFR/exEC
 IPx//KidHnd8CB3HRPIjnjRqAwHiTFeM5VkHC11MPPc=
Subject: [Cake] List web server down?
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
From: Kenneth Porter via Cake <cake@lists.bufferbloat.net>
Reply-To: Kenneth Porter <shiva@sewingwitch.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBjbGlja2VkIG9uIHRoZSBsaW5rIGF0IHRoZSBib3R0b20gb2YgdGhlIGxhdGVzdCBtZXNzYWdl
IGFuZCBjYW4ndCAKY29ubmVjdCB0byB0aGUgd2ViIHNlcnZlci4gKHRlbG5ldCB0byBwb3J0IDQ0
MyByZXR1cm5zIGNvbm5lY3QgZmFpbGVkLikgCkkgY2FuIHBpbmcgaXQsIHRob3VnaCwgd2l0aCBi
b3RoIElQdjQgYW5kIElQdjYuIEknZCBpbnRlbmRlZCB0byBsaW5rIGEgCm1lc3NhZ2UgZnJvbSB0
aGUgU3RhcmxpbmsgbGlzdCB0byBhIGZyaWVuZCB1c2luZ8KgIHRoZSBhcmNoaXZlIHllc3RlcmRh
eSAKYW5kIGNvdWxkbid0IGNvbm5lY3QsIGFuZCBpdCBzZWVtcyB0byBzdGlsbCBiZSBkb3duIHRv
ZGF5LgoKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
