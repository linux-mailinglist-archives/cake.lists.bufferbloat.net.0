Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C44D1B2EFA
	for <lists+cake@lfdr.de>; Tue, 21 Apr 2020 20:23:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 647C73CB42;
	Tue, 21 Apr 2020 14:23:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587493397;
	bh=IvjpByZrIh4M7LqNJ2XutduM0PdcZ76kUNzoCG74Rzk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=K2X7vYFD5rpvpG7D9ORq7vdrzR0nr/hcl5ra726LkS0qRSMsHACL5CunLl7AQT/rt
	 4G62SIN0KiL/ZqL5Y4WnUq4m2h7p8zaVaEycMt7xCm3puYJusovYNZMqk/jHQzmNeR
	 YWJTizQHVlCOZKcie33P4XxpZGIgDpXdwXa7ZAQcagIITvMpRoSBK4NcxRqkIulXKU
	 AE5CyWexTIUVMXrqn9iR5O+tMstF3dwiIKfzLTPiM0t0RoNnjYOSbqqeGlx883CJVn
	 ghkuWya5plJcPrgKZ3E76/+sBesutZx2a8iKCD9TF9xL5BGCoYCepmIQspGCdqmqTH
	 yzH01hZfQkt8A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1772F3B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 14:23:16 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id D63515C00A7
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 14:23:15 -0400 (EDT)
Received: from imap1 ([10.202.2.51])
 by compute7.internal (MEProxy); Tue, 21 Apr 2020 14:23:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=althea.net; h=
 mime-version:message-id:date:from:to:subject:content-type; s=
 fm3; bh=ZOvZEzzQYDamCSSnwvJd8v/8wWKvQQNn0t34DRRXEB0=; b=SmbgWYPn
 17tzQnDA/x/rRl+KBoJYHiavPcFdA4WCse8fpKnHoDHIe9X8vSNoWJWahYHn5v+k
 CFSwK/2nFc/jWNlUgKQHuwswwYS8sxj6ox6ec2vYPqE91j1TeNh+RWSW7nr7QE6O
 CnxxmyekvqX4N1RufQxUq0k9QXe1xu19j4FtiuYlmSu7gGbW4AiGMa09TIxKxDun
 1BCg16ckL0Y/CIDt2GfGQU8bGrv3plAXViC5WK1AofrD9HO68zU8P9oT8giJOFDP
 UJ4KJvtwBw3wJHhSMiXeASkowR1WDydTD0JPlrnrh+wVdcc43zGSCVkk9+MaRrrO
 Q6NoUVW4179lyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=ZOvZEzzQYDamCSSnwvJd8v/8wWKvQ
 QNn0t34DRRXEB0=; b=UU6BX4tpNeohHDVDKybJioFPw92ts96YrXLLLeuA15fCC
 ued0x+/20WYht1x7dlBQ8Un8t3qcsS5oaKN9Rh86jfIhcJ54N49xO+pEg7px/8hy
 QmYbnTiDWySE5Q/BT1N05a5gON5R0MGziDNJpP43gjdmGYY4RHfquT4vjxjyPw9A
 HLFFQyBy2oAwm+VeYli7eekWhJyBaVlIJU/+6cA3Y6/3Aw7MvSUgp74zkJ4JU2J2
 bNKSUakO94U/w6Op4i1IanLekLfKKUa0hDkAdTA1hi75zyKqI9rxDsP/UUh+UHyx
 itwVn+11fAuXpNAfnXuYW9bgaZQyCA1XeShXcxHCg==
X-ME-Sender: <xms:EzqfXib9uq6vSbpJsTEst0VnXr7WFwNGa2zArL3eRAP3aQXsSK51iA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeehgdduvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
 erredtnecuhfhrohhmpedflfhushhtihhnucfmihhlphgrthhrihgtkhdfuceojhhushht
 ihhnsegrlhhthhgvrgdrnhgvtheqnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepjhhushhtihhnsegrlhhthhgvrgdrnhgvth
X-ME-Proxy: <xmx:EzqfXkkI4YdaHcZe_4M_OH01hx_WgUBvlKLpdSgLlAEDZ4LSW_GqEA>
 <xmx:EzqfXvqHv7ZdzwHo6TnYiN47pULnjY215C7POKIbsQt_r-JyP9GDNQ>
 <xmx:EzqfXuC6gNKrE06hhlDf_peAIHGRfP-VoqsJ66oTb1zSqau4HsmqZA>
 <xmx:EzqfXoZl7iEzNn0-Y0Z09yF4va3llp7_LU1FGoQRLHOo8U1NKNObDg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 90D39C200A5; Tue, 21 Apr 2020 14:23:15 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-351-g9981f4f-fmstable-20200421v1
Mime-Version: 1.0
Message-Id: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
Date: Tue, 21 Apr 2020 14:22:54 -0400
From: "Justin Kilpatrick" <justin@althea.net>
To: cake@lists.bufferbloat.net
Subject: [Cake] Advantages to tightly tuning latency
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

SSBoYXZlIGEgZnJlcXVlbnRseSBjaGFuZ2luZyBsaW5rIEknbSB1c2luZyBhdXRvbWF0ZWQgdG9v
bHMgdG8gbW9uaXRvciBhbmQgdHVuZSB1c2luZyBDYWtlLiBDdXJyZW50bHkgSSdtIG9ubHkgdHVu
aW5nIGJhbmR3aWR0aCBwYXJhbWV0ZXIgdXNpbmcgbGF0ZW5jeSBhbmQgcGFja2V0IGxvc3MgZGF0
YS4KCk15IHJlYWRpbmcgb2YgdGhlIGNvZGVsIFJGQyBzZWVtcyB0byBzYXkgdGhhdCB0cnlpbmcg
dG8gdHVuZSB0aGUgJ2ludGVydmFsJyB2YWx1ZSB1c2luZyBrbm93biBwYXRoIGFuZCBsaW5rIGxh
dGVuY3kgd29uJ3QgcHJvdmlkZSBhbnkgYWR2YW50YWdlcyBvdmVyIGp1c3QgdHVuaW5nIHRoZSBi
YW5kd2lkdGggcGFyYW1ldGVyLgoKT2J2aW91c2x5IGNvZGVsIGlzIGp1c3Qgb25lIHBhcnQgb2Yg
dGhlIENha2Ugc2V0dXAgYW5kIEknbSB3b25kZXJpbmcgaWYgdGhlcmUgYXJlIGFueSBhZHZhbnRh
Z2VzIEknbSBtaXNzaW5nIGJ5IG5vdCBwcm92aWRpbmcgdGhpcyBleHRyYSBpbnB1dCB1c2luZyBk
YXRhIEkgYWxyZWFkeSBnYXRoZXIuIAoKVGhhbmtzIQoKLS0gCiAgSnVzdGluIEtpbHBhdHJpY2sK
ICBqdXN0aW5AYWx0aGVhLm5ldApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
