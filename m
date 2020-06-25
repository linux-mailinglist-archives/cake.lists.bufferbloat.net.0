Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A3020A663
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 22:12:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D0CFD3CB38;
	Thu, 25 Jun 2020 16:12:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593115933;
	bh=FpP+IU7CwHJcb+82O4iQ9N4imjf4njroxpGSDct8bDY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=W5vsE0csLq5XBhVvZ/v7E3wb/fXGpCpdUDtdyTBRk4j2Ei0iUGhAB6rGYBiVFl1Cz
	 L41inQxqRv5Wc5p3BaDrtXgV9E4Mg4kSuKx8jAHAAVc1NzijykMKM1nfApJK1Pc1U9
	 Fr8pD27/V/P0UxffxVBoc0jYiSbn69XvdpSvbloPumGTM0nHaSlQSB5h12DgV/cvcP
	 XAq9W9ReOqXvvAPW4mmhqv/qMS30fISBDODcZbu5TJR8JkHusqKkrkUc5M9vF7b2c6
	 rs5k4FKluvSACNFm3aW6DCHCHGeJPfkluWTYmx/+UsNSzWfbDIYrHMgMXDji+o5HvV
	 vcp0WAjoyxKoA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1F1B53B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 16:12:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593115931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iBtEMSCqqwF2ous8/euoABiQZsWtPIJIzCTYf75JDC4=;
 b=c8Sz44VUfmJ5ShmcN7QsnBMiq6oIHyRAAhDMtK52MKxRisUAVzU1WKiqIEbqVEuvNofkUt
 iMHQyKRh8HiooH8Os2gth9lrbj8HiFJRhNPCXjKxdf1JEtk0GtSF6HMiigftJ+6dFNFWot
 eUqQZhuA19Sj0kIChhvQx3rCmWu7N2o=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-g3S10T_nNcKVtdt28x-ucw-1; Thu, 25 Jun 2020 16:12:09 -0400
X-MC-Unique: g3S10T_nNcKVtdt28x-ucw-1
Received: by mail-qt1-f197.google.com with SMTP id r25so4833904qtj.11
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 13:12:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=iBtEMSCqqwF2ous8/euoABiQZsWtPIJIzCTYf75JDC4=;
 b=SHWmmU5u7jXNoAo4r+UnJ3fdEXvXvfdxy3/sdjqt4HIggBCU5aQ2S0nWcS1D9vjd5G
 G/72/BbaEJk5nnAlpqzZKplhNXL2ix3HT2Q0Ejk806YLjQX6yFmSEwgs4C8MR0itIRiT
 +1omS2zQwGU46cEw/w9NDp+/Top7x6ieWFLVLsaSKYLTrh7UvuikodTIvJgBq/NwGejZ
 fERsIKrODF7SnoACZag7lw1g4SBV1eKtOj6Ilq8tXG6kY+A/oUxjCRqz+ABOa8iByytI
 Uq5/yyZkYRE85MuznipYRuNNyyvYdY0luno7YC/2DhLEArhrczqxBmNC28E9P58dgGew
 QPCw==
X-Gm-Message-State: AOAM533vlwa8020m7jonSWmLsH0l2x9wKjndkFWuUAPLrVpyhjF59kHv
 e6rK5gJ5CtVCFHOVvyjHmuvHy5k07J74IjgI0TvuprNl9/uW/WChXLOG50NHKfBnSfnxObqpmfl
 Ow2ppyzACZ4WqyAv8Ve89Qw==
X-Received: by 2002:aed:35d8:: with SMTP id d24mr23150761qte.246.1593115929546; 
 Thu, 25 Jun 2020 13:12:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxyxhLCgg5JPGhq1a2rfL0Ro5fph9NDD2W2NBFhMnORhzlyx7accvwmYxH1iKAGUHZ5C8I0bQ==
X-Received: by 2002:aed:35d8:: with SMTP id d24mr23150748qte.246.1593115929331; 
 Thu, 25 Jun 2020 13:12:09 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id q194sm2403456qke.90.2020.06.25.13.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 13:12:07 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 22C231814F9; Thu, 25 Jun 2020 22:12:06 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 22:12:06 +0200
Message-ID: <159311592607.207748.5904268231642411759.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net 0/3] sched: A couple of fixes for sch_cake
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZQoKVGhpcyBzZXJpZXMgY29udGFpbnMgYSBjb3VwbGUgb2YgZml4ZXMgZm9yIGRpZmZz
ZXJ2IGhhbmRsaW5nIGluIHNjaF9jYWtlIHRoYXQKcHJvdmlkZSBhIG5pY2Ugc3BlZWR1cCAod2l0
aCBhIHNvbWV3aGF0IHBlZGFudGljIG5pdCBmaXggdGFja2VkIG9uIHRvIHRoZSBlbmQpLgoKTm90
IHF1aXRlIHN1cmUgYWJvdXQgd2hldGhlciB0aGlzIHNob3VsZCBnbyB0byBzdGFibGU7IGl0IGRv
ZXMgcHJvdmlkZSBhIG5pY2UKc3BlZWR1cCwgYnV0IGl0J3Mgbm90IHN0cmljdGx5IGEgZml4IGlu
IHRoZSAiY29ycmVjdG5lc3MiIHNlbnNlLiBJIGxlYW4gdG93YXJkcwppbmNsdWRpbmcgdGhpcyBp
biBzdGFibGUgYXMgd2VsbCwgc2luY2Ugb3VyIG1vc3QgaW1wb3J0YW50IGNvbnN1bWVyIG9mIHRo
YXQKKE9wZW5XcnQpIGlzIGxpa2VseSB0byBiYWNrcG9ydCB0aGUgc2VyaWVzIGFueXdheS4KCi1U
b2tlCgotLS0KCklseWEgUG9uZXRheWV2ICgxKToKICAgICAgc2NoX2Nha2U6IGRvbid0IHRyeSB0
byByZWFsbG9jYXRlIG9yIHVuc2hhcmUgc2tiIHVuY29uZGl0aW9uYWxseQoKVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuICgyKToKICAgICAgc2NoX2Nha2U6IGRvbid0IGNhbGwgZGlmZnNlcnYgcGFy
c2luZyBjb2RlIHdoZW4gaXQgaXMgbm90IG5lZWRlZAogICAgICBzY2hfY2FrZTogZml4IGEgZmV3
IHN0eWxlIG5pdHMKCgogbmV0L3NjaGVkL3NjaF9jYWtlLmMgfCAxNyArKysrKysrKysrKy0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==
