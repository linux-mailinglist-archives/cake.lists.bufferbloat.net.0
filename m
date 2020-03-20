Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7A718D98C
	for <lists+cake@lfdr.de>; Fri, 20 Mar 2020 21:37:51 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 60C493CB38;
	Fri, 20 Mar 2020 16:37:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1584736670;
	bh=tr8IH5ruQhEfvFdqKMJKx/f8fsYAz85LtYAN+02+Ylw=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gNoKPXxZloFEMZ71MlO8GS1nIASoX8EaqamHodO4GAETrlxoDWHszC7KSPJSmmKfk
	 oxqFdO2Iyf9hGM0JD8pCVVDBXiAqGPc0jfqeoHDh6pl05015DVWwphkoMEfNg57Qfb
	 8FkT98hFTzw41kVDrOT44N4bMpd/GwKuYUBpbAODhhROa8dVXuDx8c5+DZwlQ4y6no
	 3s6VRPu7JiFFxueJ6LhpEv1MGxUAcUn7xeDBlxc+YS2v/SpOizo9zqZsetIB3s8Iqo
	 N9QSV8H7/I4X30QGQpLdSay7NyilUrp5dowdNx37Zhr7hvbc2ususNDleTaPlh5T2l
	 RysitM7Z1QSeQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7F9A83B29D
 for <cake@lists.bufferbloat.net>; Fri, 20 Mar 2020 16:37:49 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 3D5885C0174;
 Fri, 20 Mar 2020 16:37:49 -0400 (EDT)
Received: from imap21 ([10.202.2.71])
 by compute7.internal (MEProxy); Fri, 20 Mar 2020 16:37:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm3; bh=nYy0hNqNQNJAByr4noU6NpLBtgh+tAN
 VB9RO39OvFMo=; b=Fw7Wtl9CYnWLp6tDj18cPI6hiMbFl9A2k2bX7FhlqE4i85V
 5w2jEsQjHOw2CBorK/HiXGQu8MnlpwMeK3KbSQAy9rPMG7r3K3hAvkZfUYtv8+tq
 2GmB1uSzYutLkP3LzR17+EUVei/8JWfx8Iwai+u9D4XAyxHR+7ZMyzon/A5LZjAp
 v+1HPMEVImW9daqKtcNOTMI+P7PDHH16N+3gPn4Cp9URaZPSSKe2riSHS07YKPOp
 Sk7G1CRRajFPFo70iLkI1A/kNpDt7HNZlWXUmtKaGm2fC9E7oqeLkTFgtERFRcDZ
 Lam/imZJ2c5n+WjY2IniIAQGG/VQd6V2fg5HSkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=nYy0hN
 qNQNJAByr4noU6NpLBtgh+tANVB9RO39OvFMo=; b=ymm9QIQ7A5Ul4sCrbP1SgG
 /A855DjsRD8mABHQPiHK3Xv+D2MAC+6/giyWhZAgoozLjcPt4GeMiTcQz7pQ+eFu
 Sqt49c+egEhvpZV9t+NnaqYKTmoKS8X7wwVuHTjfBiCqIEhvNiMiISDqQzvZiGtm
 +C8B0pWIUw0rOXx/FYqOu54kechzpnmPD9gB1ZKCcJHocb/E8Mw49jNlKtNNW7YH
 5CXqhxWYXRe+3ZwDD4Bq+G99nml3lhF8Pwql/eJO3yhFhG5KmhYJnR+7pNp+qxRT
 ec9OU+pCczS02MToYvP/DLhLkB5ESUU8tT40UOaj0JMhsad6SBWhvXrST06yX8Tw
 ==
X-ME-Sender: <xms:nCl1XgxODs3Dsg6MCthvihU-jXEeMQG_QMGDOhl5sJ7TrJhOVn7E4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudeguddgudefjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfpfhi
 lhhsucetnhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthhhnrghirhdrnhgvtheqne
 cuffhomhgrihhnpehlohgthhhnrghirhdrnhgvthenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvght
X-ME-Proxy: <xmx:nCl1Xp1i-Tf7V5c-g3K3x8deo13ujTMJhjox1msF6h4uwYl8xq0tKA>
 <xmx:nCl1Xr6S1QYJQdrbhlEg_guNcCBOWHV__Ot5Wp6y1qvBPpLN8abMwA>
 <xmx:nCl1XvZsdLU3XmoqPDZaOjdg0LxyXDABF92QAGl2YmeS3pinCzYXGw>
 <xmx:nSl1XjvZYrr_gKyWKk1IOukJTEcOdmayuKO5ELC475Tdc-mHAgnIpQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id BCCA566007B; Fri, 20 Mar 2020 16:37:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1021-g152deaf-fmstable-20200319v1
Mime-Version: 1.0
Message-Id: <61482375-fde1-43df-a81d-de0892aa7191@www.fastmail.com>
In-Reply-To: <CAA93jw7j_7B5VJgH6Zfv_tt2e=qXo=Cc1uibWrrwyc8RuRGRQw@mail.gmail.com>
References: <CAA93jw7j_7B5VJgH6Zfv_tt2e=qXo=Cc1uibWrrwyc8RuRGRQw@mail.gmail.com>
Date: Fri, 20 Mar 2020 21:37:20 +0100
From: "Nils Andreas Svee" <me@lochnair.net>
To: "Dave Taht" <dave.taht@gmail.com>,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Subject: Re: [Cake] https://build.lochnair.net is down
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

WW91IGp1c3QgZGlkIDopCgpJJ2xsIGJlIGJyaW5naW5nIGl0IGJhY2sgdXAgdGhpcyB3ZWVrZW5k
LiBJJ3ZlIGJlZW4gbW92aW5nIGV2ZXJ5dGhpbmcgdG8gYSBuZXcgYm94LCAKYnV0IG5ldmVyIGdv
dCBhcm91bmQgdG8gYnJpbmdpbmcgc2VydmljZXMgYmFjayB1cCB1bnRpbCBub3cuCgpJJ2xsIHBy
b2JhYmx5IGdldCB0aGUgbWFzdGVyIHVwIHRvbmlnaHQsIHJlc3RvcmluZyBhY2Nlc3MgdG8gZXhp
c3RpbmcgYnVpbGRzIGF0IGxlYXN0LgoKQmVzdCBSZWdhcmRzCk5pbHMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo=
