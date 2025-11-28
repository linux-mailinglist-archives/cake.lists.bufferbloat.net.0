Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A25C92D66
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 18:50:53 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9DE079DB2E3;
	Fri, 28 Nov 2025 18:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764352252;
	bh=vf3Yjl5BBBCyfaogv9BdvQnPiNvxQvQpv5U8MV0YozQ=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=HscDyiK0c5bxH/xSOMQvPvOH/a6uYADMt8P6LkWbBBDlO3pCn7nRP80BB7+g12OEl
	 kpxu3bUdvL7MyLGN67aNnaqZyAoWdZp3ac+BpAOhYLWHLd8OG1iEFRUwaq+0icEyb0
	 RS77uqMHCLHErJApdqUHQbZtW4z1GrNAsyCT4hEISyCUWQNvrn3HaBiCKE3/t8M+9d
	 tY31d5FJVIFMLbxAjjqLQFK9TMjniGgxXTaU8apS7RpMp7ftX9JHdPtl/YHCND1Uta
	 0VRZvBa2sTyplFfLwo4alAFNuaDBb5fZcpcuR49hk2lO5aLII3wYics+du0omXDCGZ
	 5cmsYTWFSd+gQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764352252;
 b=qcvQCAZlbBzglcsvUenH2VnqsgZjQPf90tNUqvwDTn8dPti6BSHlzzFlLiT7hjvmJVHvM
 Mv4TAoz/RBTXJDg536NkKb2nXOHi6c8ByLUG3inHnZi7+tOH4YE7HnHw5w72xwaemHUEmP3
 mVDlNqaWgvCyabk3xHnqA9AJt6HkWag=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764352252; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=vf3Yjl5BBBCyfaogv9BdvQnPiNvxQvQpv5U8MV0YozQ=;
 b=Pn0opFOWGD8kvSi7/P1gAk492Wqap0GZ6jhBz3Cvib0Ix/zwZ3gqMVEFMyEpR8viu2c5y
 iGlAxCWjnHuSShxx7CygVwhCuxiPb9PzxcduvkL+SNmIloofcDLOmNG5cbvdRwgJO3+xdK9
 JQsWo1iSGHwzN5bU5/QJwjdFHXykyWA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by mail.toke.dk (Postfix) with ESMTPS id 7A8759DB2CA
	for <cake@lists.bufferbloat.net>; Fri, 28 Nov 2025 18:50:45 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7F60841720;
	Fri, 28 Nov 2025 17:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF0BCC4CEF1;
	Fri, 28 Nov 2025 17:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764352243;
	bh=KsUUaEtkI8a/3CrRZsfe/EA0o66YF5q2GX/qJ78sX5s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jQz6++mYQKaG+wl17G4Y9AHp8LzBwpVpK1jk1+/lDd5wUTM5ij9r4LtCp1dl3nSig
	 jjo2KMzfEU2h4h59tofFd7RznsoQkcLifTAd1Wz5TfO+aku/9WuoF+SU9/jCAra/oU
	 NZwNYfTop3RaKHS4GdrvBlnVamRxr2Xir1Q0VwHHbo0cQ4nR6+GY7QpCvAafUzmJVs
	 lLTRdRE4idCuJ4dAbzg3SUQNhQCiCdQ6y8q62YJ6xkbnSiej27y2zVg8kks8KZObPX
	 87kMjG9LatX+Q+zhTwN6/qcmgAhYgi9hiRMybt0fdjR3CWhzF0YvihTMuzVDa7z6EP
	 NBYFUkNLHckEQ==
Date: Fri, 28 Nov 2025 09:50:41 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>
Cc: Cong Wang <xiyou.wangcong@gmail.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Jiri Pirko <jiri@resnulli.us>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas
 =?UTF-8?B?S8O2cHBlbGVy?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org
Message-ID: <20251128095041.29df1d22@kernel.org>
In-Reply-To: <87o6onb7ii.fsf@toke.dk>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
	<aSiYGOyPk+KeXAhn@pop-os.localdomain>
	<87o6onb7ii.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: ZX5N2DR2W4LDUMT2VNPAZZLF2MRE7CU3
X-Message-ID-Hash: ZX5N2DR2W4LDUMT2VNPAZZLF2MRE7CU3
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251128095041.29df1d22@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyNyBOb3YgMjAyNSAyMDoyNzo0OSArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6DQo+ID4gSXMgdGhlcmUgYW55IGNoYW5jZSB5b3UgY291bGQgcHJvdmlkZSBzZWxm
dGVzdHMgZm9yIHRoaXMgbmV3IHFkaXNjDQo+ID4gdG9nZXRoZXIgd2l0aCB0aGlzIHBhdGNoc2V0
Pw0KPiA+DQo+ID4gSSBndWVzcyBpcHJvdXRlMiBpcyB0aGUgbWFpbiBibG9ja2VyPyAgDQo+IA0K
PiBZZWFoOyBob3cgYWJvdXQgSSBmb2xsb3cgdXAgd2l0aCBhIHNlbGZ0ZXN0IGFmdGVyIHRoaXMg
aGFzIGJlZW4gbWVyZ2VkDQo+IGludG8gYm90aCB0aGUga2VybmVsIGFuZCBpcHJvdXRlMj8NCg0K
V2h5IGlzIGlwcm91dGUyIGEgYmxvY2tlcj8gQmVjYXVzZSB5b3UncmUgbm90IHN1cmUgaWYgdGhl
ICJBUEkiIHdvbid0DQpjaGFuZ2Ugb3IgYmVjYXVzZSB5b3UncmUgd29ycmllZCBhYm91dCBOSVBB
IG9yLi4gPw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
