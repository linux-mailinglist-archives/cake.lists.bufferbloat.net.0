Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D43AC9B9
	for <lists+cake@lfdr.de>; Sun,  8 Sep 2019 00:43:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0096B3CB67;
	Sat,  7 Sep 2019 18:43:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1567896220;
	bh=E3BbhnY6O3F/kMSpQBdms5sXyXzpE3/ZWG3Jy0ZMDGU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bCt1eyAMjrc16JUzIeUpbei+s61BiVyPf98CMcyFlcSrHdCfokcc6QyiQHExq4RgY
	 deecQerBFi+02HBmfzSMFsvnI+KeJu/i1zAqKRnxeIC28ASD4m7ZPpKT5hL731MeMu
	 1qiyUO0M0pwcCx3BGn3N+kekYTVq0OpO8T5AvKahTSh48rphf2YilQhejYa7pCeNhG
	 94dyjyR+gwExB1ZMsVjVQ0QKwiQHa+gadTczVjtBdwMj35mLwqM1UpZugHfLsEx/Ln
	 xchBZCHSAZgU6o2cLH7URgmI1gP1B7PtgqCahjPZBMU2TfnCHei4EOwmC025ZkxKB2
	 LwDjYesfdbZ8A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3038E3B2A4
 for <cake@lists.bufferbloat.net>; Sat,  7 Sep 2019 18:43:38 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 39B7A321
 for <cake@lists.bufferbloat.net>; Sat,  7 Sep 2019 18:43:37 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sat, 07 Sep 2019 18:43:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=althea.net; h=
 mime-version:message-id:date:from:to:subject:content-type; s=
 fm1; bh=gDwhozsak50E4sRdf5vkENblPKYK7LzOuFJ2gZU20Jc=; b=hzuuW8Uo
 dWzlWBHDqNp4NrIlXk64Bv6YgjKOfPsbV0XHNXfGjIG8w7jVijpUmy0KYlWf2SIe
 dmnhYFArJx9IpAX9fKAcONtGHwOsgNnW8E0d5+uJvDwxpdtCKiaXSUbTgIYQEDB/
 bKmTYWByUHagwzLESo/EG5LPwvgdWIfPxUxxXdpdEaWVOxBlNmRvVQAZeB5oYiEm
 Rh1yQqtmEl39tCODSX5QKEBkRnDFwtSXM6ygFsPDTx0ImpE+oQHVpein3BMViKjV
 C9TUBO2S/+bUc61ChoyXI+Rq77tmfy4UVkSS/+5mcMdLzm8l4ztuNROVaN8hIo1T
 /W+BKatDWx8uBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=gDwhozsak50E4sRdf5vkENblPKYK7
 LzOuFJ2gZU20Jc=; b=WoAecH4IQiPOiQcHxq9i0zHY2AjwguBmHlxoxKpasEx/+
 7D8xcIn4uMaGC2+b65VB8UQDNpC3Z7nkcgFMs8fVtjxMxqIJOtqgqsq616VFj2cH
 dpzjVIj8uy4873Z/Oau2chuT1s110EpmAgknsjuqOwfLNvS5439PGFeeVF1UQGfE
 rcVK8BUbnZDVcqucOAr3GxB0atwUCe6X/PEUpVp9na3ryrDfTNmIwhYSNmC+MoQA
 TRbyGKUv5ezgUJz0nCYTUxT7BjMeRbfQntThh9k6elGHsmU5yvOU8r/o/okKt5y2
 gGu8shdk0snzHTSCcTu+6F8bobqbsoxZfzPZ9qlhQ==
X-ME-Sender: <xms:mDJ0Xa6TQzL97PX1XRw36qihdy3q8VDtneGH5XXH73iFjozKt_GIBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekvddguddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
 erredtnecuhfhrohhmpedflfhushhtihhnucfmihhlphgrthhrihgtkhdfuceojhhushht
 ihhnsegrlhhthhgvrgdrnhgvtheqnecuffhomhgrihhnpeihohhuthhusggvrdgtohhmne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehjuhhsthhinhesrghlthhhvggrrdhnvghtnecu
 vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:mDJ0XRFqjPmwqtw6laPYiZD1hp5Mo5sjfc_ZGSk_nNWvyAAa7fWU_w>
 <xmx:mDJ0XSC9w4KPkrpjZ5hI7Fwp2JuG_D4R8UXFuQCOZ2dEYgP09f5e5A>
 <xmx:mDJ0XWzk_Vz7R5ZOPSrTpHtYGFl_OUjqjY0GHqArCHHyJOHbDPp0zw>
 <xmx:mDJ0XZhKvz7yh-nqTnRQIl7wPxX-BRmTh4wFpjZZ5p3lVIPBlfGRiw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 903B5E00A4; Sat,  7 Sep 2019 18:43:36 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-188-g385deb1-fmstable-20190905v2
Mime-Version: 1.0
Message-Id: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
Date: Sat, 07 Sep 2019 18:42:55 -0400
From: "Justin Kilpatrick" <justin@althea.net>
To: cake@lists.bufferbloat.net
Subject: [Cake] Fighting bloat in the face of uncertinty
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

SSdtIHVzaW5nIENha2Ugb24gZW1iZWRkZWQgT3BlbldSVCBkZXZpY2VzLiBZb3UgcHJvYmFibHkg
c2F3IHRoaXMgdmlkZW8gb24gdGhlIGxpc3QgYSBtb250aCBvciB0d28gYWdvLiAKCmh0dHBzOi8v
d3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9RzRFS2JnU2h5THcKCkFueXdheXMgdXAgdW50aWwgbm93
IEkndmUgbGVmdCBjYWtlIHRvdGFsbHkgdW50dW5lZCBhbmQgaGFkIHByZXR0eSBncmVhdCByZXN1
bHRzLiBCdXQgd2UndmUgZmluYWxseSBlbmNvdW50ZXJlZCBhIHNjZW5hcmlvIHdoZXJlIHVudHVu
ZWQgQ2FrZSBhbGxvd2VkIGZvciB1bmFjY2VwdGFibGUgYnVmZmVyYmxvYXQgb24gYSBsaW5rLgoK
SGFuZCBjb25maWd1cmF0aW9uIGluIGFjY29yZGFuY2Ugd2l0aCB0aGUgYmVzdCBwcmFjdGljZXMg
cHJvdmlkZWQgaW4gdGhlIFJGQyB3b3JrcyBvdXQgcGVyZmVjdGx5LCBidXQgSSBuZWVkIGEgc2V0
IG9mIHNldHRpbmdzIEkgY2FuIHNoaXAgd2l0aCBhbnkgZGV2aWNlIHdpdGggdGhlIGV4cGVjdGF0
aW9uIHRoYXQgaXQgd2lsbCBiZSB1c2VkIGFuZCBhYnVzZWQgaW4gbWFueSBub24tc3RhbmRhcmQg
c2l0dWF0aW9ucy4gUHJvZHVjaW5nIG5vbi1vcHRpbWFsIG91dGNvbWVzIGlzIGZpbmUsIHByb2R1
Y2luZyBkcmFtYXRpY2FsbHkgZGVncmFkZWQgb3V0Y29tZXMgaXMgdW5hY2NlcHRhYmxlLiAKCldo
aWNoIGxlYWRzIHRvIGEgZmV3IHF1ZXN0aW9ucwoKMSkgV2hhdCBoYXBwZW5zIGlmIHRoZSB0YXJn
ZXQgaXMgZHJhbWF0aWNhbGx5IHRvbyBsb3c/IAoKTW9zdCBvZiBvdXIgbGlua3MgY2FuIGV4cGVj
dCBsYXRlbmN5IGJldHdlZW4gMS0xMG1zLCBidXQgdGhleSBtYXkgb2NjYXNpb25hbGx5IGdvIG11
Y2ggbG9uZ2VyIHRoYW4gdGhhdC4gV2hhdCBhcmUgdGhlIGNvbnNlcXVlbmNlcyBvZiBoYXZpbmcg
YSAxMDBtcyBsaW5rIGNvbmZpZ3VyZWQgd2l0aCBhIHRhcmdldCBvZiAxMG1zPwoKMikgSWYgaW50
ZXJ2YWwgaXMgZHJhbWF0aWNhbGx5IHVucHJlZGljdGFibGUgaXMgaXQgYmVzdCB0byBlcnIgb24g
dGhlIHNpZGUgb2YgdW5kZXIgb3Igb3ZlciBlc3RpbWF0aW5nPwoKIFRoZSB1c2VyIG1heSBzZWxl
Y3QgYW4gVlBOL2V4aXQgc2VydmVyIG9mIHRoZWlyIG93biBjaG9vc2luZywgdGhlIHBhdGggdG8g
aXQgb3ZlciB0aGUgbmV0d29yayBtYXkgY2hhbmdlIG9yIHRoZSBleGl0IG1heSBiZSBtdWNoIGZ1
cnRoZXIgYXdheS4gQm90aCAxMG1zIGFuZCA4MG1zIHdvdWxkIGJlIHNhbmUgY2hvaWNlcyBvZiB0
YXJnZXQgZGVwZW5kaW5nIG9uIGZhY3RvcnMgdGhhdCBtYXkgY2hhbmdlIG9uIHRoZSBmbHkuIAoK
VGhhbmtzIGZvciB0aGUgZmVlZGJhY2shIAoKLS0gCiAgSnVzdGluIEtpbHBhdHJpY2sKICBqdXN0
aW5AYWx0aGVhLm5ldApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
