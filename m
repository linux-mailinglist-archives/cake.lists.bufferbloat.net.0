Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B861323346
	for <lists+cake@lfdr.de>; Tue, 23 Feb 2021 22:31:01 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C5C323CB42;
	Tue, 23 Feb 2021 16:30:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614115855;
	bh=oF3m5wjtIAelu+ZbSNqMhn+KJFxhZkUIVAT/xzp50hI=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fa/pbAIgWdNppt7DoEo0hNRcpICbkTwnWhnlf9zujSwhXXK1+gylaOuGA7DW3vYQL
	 KFHMDKunZPoZA2KHfdGgLr/zS1zrd9o+1er5JNMgfMpGVpmMPF3PTNnoFvqjndXbqB
	 /x/UbUGHxXHJgjBYEfzJsMZBn4ZAkCEt8CbH8h4WRF674TdWgSQyc3ZN3+tTT9LsSn
	 eS5S/0wBwrz0s3Yc8GnZu+avpDlXtJno+JXMnGw/BlsrVZwMDUAnjgjqPbwaX+MlX6
	 NCzv1R35Va7LaEJC56964yQtj5TJd9d88x7AuQkdmGTNWokxLsWuWLB3Wvt+0L2wne
	 f6oxWNW12BBNw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7249F3B29E;
 Tue, 23 Feb 2021 16:30:54 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 461B15C012B;
 Tue, 23 Feb 2021 16:30:54 -0500 (EST)
Received: from imap38 ([10.202.2.88])
 by compute4.internal (MEProxy); Tue, 23 Feb 2021 16:30:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm2; bh=nGJNJdDDu2PfEbBjd3r+rnstTsdVexX
 5gWhXFS74IXM=; b=mmMVtz32Gtl6WxNPIJWZm3kdnFoYzs8ujDXUmD9QQCDKH9G
 vzd+Di97+KOIA/nHxItICYq669z8ehAzll50xWlJvdcASoL8zEmIeojUhYDNdXh1
 tfHLc276F9hEtfti2FteGoKmp9f3sxGxT52oa9RFWOyMZt8R0pp4H1XBBzRvqMt/
 97sZ1Z4Y4BUcwsQFbfT7lxHyS38iLfLigcvdrkxwnLy8zQiyOdTEavS2NXofYP78
 wSN4mEBFUj6W+JutFz4UypjPcNEJn1TB3JV7AsNN6IQUmjc9zaQF2FgmMcdWacFX
 CkAfHV196Mjr7coVZ+20WA4ibiCmx+H0Vxwot7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=nGJNJd
 DDu2PfEbBjd3r+rnstTsdVexX5gWhXFS74IXM=; b=pJN0jH3dk2JAuCzE6k9/vB
 S8V2Uko0qjpo0viK7fC2Z79isfEj86+dzRwU90K8OwYIROPYqppgQM0GrmkvRYhI
 8NRTw+Z9r2YaY0XRhzpVzTUDO93fFJjyI2e5o3R8lIMsCo7lgkpu4mf4S08ODAn6
 rbCFcqurVyilQN6FDEfuPGCQgQ3jMc7p6Cl524qGEc/NgJT555AoI9+MC2ty5lL8
 5A+lx9G2Onufe8jhLC2qAIUEky8kg07A4/svMGs4PYgnDEqXPo2BVTBVbLHSLw8V
 fpTefqjx2UZztI7zv+/Jf4h4bTTVOiDsCA/pjFX8Qx1L1oRfgy2byUjFmhZLCnJg
 ==
X-ME-Sender: <xms:DnQ1YFRXLORA_CWi0HcgWhaofTIIHa7m1YdSpzEUD_leC8wntmuC1w>
 <xme:DnQ1YOzCvJ54f7QDeOoFjXxfkJobZyVvAQ5xEtWB7sE3Plk4OMqC1_Glf2HbTPuYO
 NvrtTBp7A9e8Z1tcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdfpihhl
 shcutehnughrvggrshcuufhvvggvfdcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenuc
 ggtffrrghtthgvrhhnpedtgeehuedvheffueehheektdegffevtdetgfehleejkeeugfdu
 udeiieffteeuheenucffohhmrghinheplhhotghhnhgrihhrrdhnvghtnecuvehluhhsth
 gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehlohgthhhnrghi
 rhdrnhgvth
X-ME-Proxy: <xmx:DnQ1YK1eb3565XR30vd4Rfq-Emik0muc0cw98lsL3XJe-RyQzHMAuQ>
 <xmx:DnQ1YNAp2nZ3WzW_1F6PAM8GKE2CMZVu-mOB7Gf5jR9W8hn4USw_Zw>
 <xmx:DnQ1YOhxeMSCRemCoMqDrbwdbvLIV_Aqt4sBcM986qyALjK6pAh-pw>
 <xmx:DnQ1YBvUmG3sqhPg0WvKXx_zwTOk_FqNLx8vSS560d9BjsVYjC5PsA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E1F9DCA005D; Tue, 23 Feb 2021 16:30:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
In-Reply-To: <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
Date: Tue, 23 Feb 2021 22:30:33 +0100
From: "Nils Andreas Svee" <me@lochnair.net>
To: "Dave Taht" <dave.taht@gmail.com>, bloat <bloat@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Subject: Re: [Cake]
 =?utf-8?q?Fwd=3A_=5BGalene=5D_Dave_on_bufferbloat_and_jitt?=
 =?utf-8?q?er_at_8pm_CET=09Tuesday_23?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhhbmtzIGZvciB0aGUgdGFsayBEYXZlIGFuZCBpdCB3YXMgbmljZSBtZWV0aW5nIHlvdSBhbGwh
CgpOZXZlciByZWFsbHkgZGlkIG11Y2ggaW4gdGhlIHdheSBvZiBGbGVudCB0ZXN0cyBhZnRlciBt
b3ZpbmcgZnJvbSBBRFNMIHRvIFRlbGVub3IncyAid2lyZWxlc3MgYnJvYWRiYW5kIiBha2EuIDRH
LiBTbyBJIHJhbiBzb21lIGFmdGVyIGxlYXZpbmcgdGhlIG1lZXRpbmcsIHdpdGggQ0FLRSBvbiBv
ciBvZmYsIGFuZCBsZXQgbWUgdGVsbCB5b3UgLSBpdCdzIHRlcnJpZnlpbmcsIDRHIHN1Y2tzIGlu
ZGVlZC4sIG5vdCBhcyBiYWQgYXMgRFNMIHdpdGhvdXQgU1FNIG1pbmQsIGJ1dCBzdGlsbAoKQXZn
LiBsYXRlbmN5IHdpdGhvdXQgU1FNIGF0IHNvbWUgcG9pbnRzIGNsb3NlIHRvIDgwMCBtcyBvciBh
Ym92ZS4gSGFkIHRvIHNhY3JpZmljZSBhIGxvdCBvZiBiYW5kd2lkdGggdG8gZ2V0IGl0IHRvIHNh
bmUgbGV2ZWxzIHdoZW4gZG9pbmcgUlJVTCB0ZXN0cy4KCkR1bXBlZCBhbGwgdGhlIGZpbGVzIG92
ZXIgaGVyZTogaHR0cHM6Ly9kbC5sb2NobmFpci5uZXQvQnVmZmVyYmxvYXQvVGVzdHMvCk9oIGJ0
dyBJIHByb21pc2UgSSdsbCB0cnkgdG8gbm90IGJyZWFrIHRoaW5ncyB3aGVuIHlvdSBuZWVkIHRv
IGFjY2VzcyBzb21ldGhpbmcgb24gdGhhdCBib3ggYWdhaW4gRGF2ZS4uLgoKQmVzdCBSZWdhcmRz
Ck5pbHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
