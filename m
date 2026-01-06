Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 08933CF7CBA
	for <lists+cake@lfdr.de>; Tue, 06 Jan 2026 11:30:28 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 498A2B5C933;
	Tue, 06 Jan 2026 11:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767695426;
	bh=uxhhjK7cciYFkm2ZWNiExZehTohgw0RE6jzTvgG4EbY=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=KeX6tomZGCblSvc2PG9+5+WEVaA0VD00ZjdbK1yADQ0ZLgb/OG2Q/vGGcJMLyupoA
	 8O/lYmyRaxxeUSM1hfBsSgZ3P++0sul2Lu1Kn6NdhCg+SGo2JB4fbA9Uh+amoN9W9J
	 aCBDkrKTLXG44EscSqcAOjyvZag9gYYZQuBE2fGsg2chAE0heZlnnMCOOPDrN09OAM
	 n9dGMFEIM1rjGyX8G1xp43YTJRaM7HFxGC/0dPNqnsx/f2rZuJe1bEmwxw3icAbIQS
	 Y69MrV0orBc3YUgcVtZ4qm3ZObdpOojHY2y16MPw2fVO14hgtZppWMrAOppP/eDHo/
	 TU018MpYzdX4w==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767695426;
 b=ax34oW6tAJr2WUAd5T2wa79dM++r54D+85nAQBqEHCSdXtnyOUMiotGjfXnOsgYD9iIwA
 tC0uqus6mUNK1//k0GVsNZoaVTTJ3fc2HMZfaL2qHNlxuyl2h8E7tWbt25rqmVVB11zTVFz
 JaV4vC4IraojcmnrCVgGU+cwa0wqOUU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767695426; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uxhhjK7cciYFkm2ZWNiExZehTohgw0RE6jzTvgG4EbY=;
 b=J1Os2lDLB9nyGgkgHgaer2/qHoUO1j4CJ9JDh80r/JrbRop82gAWYWx4C98escVfwZt15
 OE+qa8ZJwjl3wTz7FzG3VMEJT9N9gn8Qq68gb/PU6hGXV6VBd4zwLWyumVwdghoY4DLcrrH
 QyQ6wrd817XQhwJDeMS0DshqRwuUKq8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1767695424; bh=uqx4UNio5IZHh0domM8JuvlnEo/PhdnFDKl+/fCu09A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=smQWWFRkFDf0Yzu3ZSqtvimCM8d5274H0RdCyWUTgtRYG3s7HC60EziqBPvGRILfo
	 tmSP3ZqsPqrNeBQj9jRLdparj6mUkD66dmNE0CsRM8ylbOYWtxhLT+n7f/eTMoHJgT
	 DduSqs4LG02I8/ZV+ctmKj8vJZ4hG/AE551e44VyHaK/A4nudxX/ikjQMxNOrzuFMX
	 J385VqHdTUFoL6Cz9EjbQKcsZlbMwXp4la/2ESaljJ1SPYN/K1KW2omV4gPDo82GWC
	 u7oMVzCC/M42w1BGzG0Ri1yDqOEAftkGmxquO+bnvsb3KupWXUvrH2qJ+aQUdaMAZr
	 qpGbi7+lSxLuQ==
To: Victor Nogueira <victor@mojatatu.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: Jonas =?utf-8?Q?K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <04a4cfc3-ca15-49cf-89c1-17a4bc374caa@mojatatu.com>
References: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
 <20260105-mq-cake-sub-qdisc-v5-6-8a99b9db05e6@redhat.com>
 <04a4cfc3-ca15-49cf-89c1-17a4bc374caa@mojatatu.com>
Date: Tue, 06 Jan 2026 11:30:23 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <875x9f58zk.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: 5LLJSAP4RZDAR3NMUQXJUHQOSNFFQKTM
X-Message-ID-Hash: 5LLJSAP4RZDAR3NMUQXJUHQOSNFFQKTM
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v5 6/6] selftests/tc-testing: add selftests for
 cake_mq qdisc
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/875x9f58zk.fsf@toke.dk/>
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

VmljdG9yIE5vZ3VlaXJhIDx2aWN0b3JAbW9qYXRhdHUuY29tPiB3cml0ZXM6DQoNCj4gT24gMDUv
MDEvMjAyNiAwOTo1MCwgVG9rZSBIw4PCuGlsYW5kLUrDg8K4cmdlbnNlbiB3cm90ZToNCj4+IEZy
b206IEpvbmFzIEvDtnBwZWxlciA8ai5rb2VwcGVsZXJAdHUtYmVybGluLmRlPg0KPj4gWy4uLl0N
Cj4+IFRlc3QgMThlMDogRmFpbCB0byBpbnN0YWxsIENBS0VfTVEgb24gc2luZ2xlIHF1ZXVlIGRl
dmljZQ0KPj4gIFsuLi5dDQo+PiArICAgIHsNCj4+ICsgICAgICAgICJpZCI6ICIxOGUwIiwNCj4+
ICsgICAgICAgICJuYW1lIjogIkZhaWwgdG8gaW5zdGFsbCBDQUtFX01RIG9uIHNpbmdsZSBxdWV1
ZSBkZXZpY2UiLA0KPj4gKyAgICAgICAgImNhdGVnb3J5IjogWw0KPj4gKyAgICAgICAgICAgICJx
ZGlzYyIsDQo+PiArICAgICAgICAgICAgImNha2VfbXEiDQo+PiArICAgICAgICBdLA0KPj4gKyAg
ICAgICAgInBsdWdpbnMiOiB7DQo+PiArICAgICAgICAgICAgInJlcXVpcmVzIjogIm5zUGx1Z2lu
Ig0KPj4gKyAgICAgICAgfSwNCj4+ICsgICAgICAgICJzZXR1cCI6IFsNCj4+ICsgICAgICAgICAg
ICAiZWNobyBcIjEgMSAxXCIgPiAvc3lzL2J1cy9uZXRkZXZzaW0vbmV3X2RldmljZSINCj4+ICsg
ICAgICAgIF0sDQo+PiArICAgICAgICAiY21kVW5kZXJUZXN0IjogIiRUQyBxZGlzYyBhZGQgZGV2
ICRFVEggaGFuZGxlIDE6IHJvb3QgY2FrZV9tcSIsDQo+PiArICAgICAgICAiZXhwRXhpdENvZGUi
OiAiMiIsDQo+PiArICAgICAgICAidmVyaWZ5Q21kIjogIiRUQyBxZGlzYyBzaG93IGRldiAkRVRI
IiwNCj4+ICsgICAgICAgICJtYXRjaFBhdHRlcm4iOiAicWRpc2MgKGNha2VfbXEgMTogcm9vdHxj
YWtlIDA6IHBhcmVudCAxOlsxLTRdKSBiYW5kd2lkdGggdW5saW1pdGVkIGRpZmZzZXJ2MyB0cmlw
bGUtaXNvbGF0ZSBub25hdCBub3dhc2ggbm8tYWNrLWZpbHRlciBzcGxpdC1nc28gcnR0IDEwMG1z
IHJhdyBvdmVyaGVhZCAwICIsDQo+PiArICAgICAgICAibWF0Y2hDb3VudCI6ICIwIiwNCj4+ICsg
ICAgICAgICJ0ZWFyZG93biI6IFtdDQo+DQo+IEhpIQ0KPg0KPiBUaGlzIHRlc3QgaXMgbWlzc2lu
ZyB0aGUgZGV2aWNlIGRlbGV0aW9uIG9uIHRoZSB0ZWFyZG93biBzdGFnZS4NCg0KQWgsIG9vcHM7
IHdpbGwgZml4IGFuZCByZXNwaW4sIHRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcyENCg0KLVRva2UN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
