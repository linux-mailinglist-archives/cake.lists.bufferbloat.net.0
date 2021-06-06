Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CAD39CE8C
	for <lists+cake@lfdr.de>; Sun,  6 Jun 2021 12:12:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9B5053CB38;
	Sun,  6 Jun 2021 06:11:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1622974318;
	bh=7s68eT8afPF90kJ+bMTaXdi1kATlBA6PYrB35Hv6RTE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Lv/xvQH6Kh/rqK1Zc5hEUpoA0qhpfHIug8oSefpdthv+Lx6c84KgcEXONVL0Xc2M/
	 FF5ePC/KUCUrOaS7Gs5aFijnNvjjQW+wiFiACL2eHKM4IHNhSgSNioQhHEi3vlknmX
	 w6KxQQ1dCd12bodXBJRKXExOU6YRl65E2WSs1mzFIdjlVKLAli0s5jGN3TrE2czslL
	 3EQeEZp0/CgPY32UN8vRcc3lkUq8IMGSZZoxheqGmS4l98QBqH2jmVlRaG0GytVMYi
	 VJoImdaVF//gy7ndITMocWgnQWhTX3sr/nHEH7fgA5RNCQ7f2kmVszPOfQZXCXAbFq
	 h5egT9s7y5AUw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BDD1C3B2A4
 for <cake@lists.bufferbloat.net>; Sun,  6 Jun 2021 06:11:56 -0400 (EDT)
Received: by mail-wr1-x432.google.com with SMTP id u7so8548646wrs.10
 for <cake@lists.bufferbloat.net>; Sun, 06 Jun 2021 03:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=bNOpS9uJyz6o3V35xjjVBAzcocdPg7znU9MuFfS48rU=;
 b=GHY09mDnagiT/nLwCRVeYBCbEGnFFx88JNO2rzzoDoOINKolX4+9jvVtHEeX/BfpvK
 EYhlCYgWU7CwHmVBhCqYNKff6m0BrSWVdsGZB8VRNgvmnKuhtGSPbiomCzb4C9aEo4wx
 qo1wNuCGbdgZz8NeX85N96BKgK0hwbxb6O0FCyM/1PXVvBl+XKO0+o++NGriE6RJ8Vqm
 9Ey1aUBfB3mA0Fu6Fz4+Ozpkd3SZz5LEi5hNthsGsaKEPbHnPQIn6vwOihEGFxBvkzPg
 RVXF6ZoiqAIy0QOfRK8CUlgF/mO2yG+v9ln4rOcUsc58cQC4ElLYA0cHAwIedbeIqVbB
 y5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=bNOpS9uJyz6o3V35xjjVBAzcocdPg7znU9MuFfS48rU=;
 b=gJ+oROYtPqlY5nlLAurPJXYrRQ/3IR4+jqOf8TE2ts/EJNbQdyltU0qVEr2AN1xl18
 OhVLP5SSILvpi+YsB6gXzQ+WCpwt+qD2Kc9/0/3aEiOcQjLq4sjMXduOpGLY8kU2bc4J
 xFwf87x/taU+ME2JseaKYXe5ksmtcJ7J7251BiNAMDXUUjJQSBNgKPKPXlTw2TtupkbN
 BVJ01MNneVJ+oXiwYT2yWHa2710o0y10xWkUkUHj+Dv6CV1hMT5FU6wzoQaiir1hHPZ6
 1H9ot0LbQGFI4zxZtyBcpNwUcrFjMnEI2yDQYLztc9W97rQq0KarvhzY0z8Wk0zKufKe
 LLuQ==
X-Gm-Message-State: AOAM530Z4oeyV9UqkYRuZfnyi3J/o+EYJi8eX+bPP4j/qN/kD5jLITSK
 w0N9HQcH/fPFv47OTGuusx/AmmDrkfbAMA==
X-Google-Smtp-Source: ABdhPJwERR6WeB5oD1+5P2hpT1Y2EnAR8I1cD9p9xmt/obTLE+qXTlQuWGuUfwXKNGEoNCjdRxt0zg==
X-Received: by 2002:a5d:63c7:: with SMTP id c7mr11751653wrw.276.1622974315559; 
 Sun, 06 Jun 2021 03:11:55 -0700 (PDT)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id s7sm12521693wrf.91.2021.06.06.03.11.54
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jun 2021 03:11:55 -0700 (PDT)
Message-ID: <22f3032d0dfd47f53d4d6595ee6bd192377fbc6e.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Cake List <cake@lists.bufferbloat.net>
Date: Sun, 06 Jun 2021 12:11:54 +0200
User-Agent: Evolution 3.40.1 
MIME-Version: 1.0
Subject: [Cake] customizing Cake's isolation with ipsets, tc-flow and eBPF
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

SSd2ZSBhbHdheXMgd2FudGVkIGEgd2F5IHRvIGN1c3RvbWl6ZSBDYWtlJ3MgaG9zdCBhbmQgZmxv
dyBpc29sYXRpb24gaW4KYSB3YXkgdGhhdCB3b3VsZCBiZSB1c2FibGUgZS5nLiBmb3Igc21hbGwg
SVNQcywgYW5kIHRoaXMgaXMgd2hhdCBJIGNhbWUKdXAgd2l0aDoKCmh0dHBzOi8vZ2l0aHViLmNv
bS9oZWlzdHAvY2FrZS1jdXN0b20taXNvbGF0aW9uCgppcHNldHMgYXJlIHVzZWQgdG8gc2V0IHRo
ZSBza2IgcHJpb3JpdHkgb3IgbWFyaywgdGhlbiB0Yy1mbG93IG9yIGEKc2ltcGxlIGVCUEYgY2xh
c3NpZmllciBpcyB1c2VkIGluIGEgY2hpbGQgZmlsdGVyIG9mIGNha2UgdG8gZ2V0IHRoZQptYWpv
ciBhbmQgbWlub3IgY2xhc3MgSURzIHNldCwgd2hpY2ggb3ZlcnJpZGUgdGhlIGhvc3QgYW5kIGZs
b3cgaGFzaGVzLgoKVG8gc2hvdyBpdCBpbiBhY3Rpb24sIHRoZSBjYWtlaXNvLnNoIHNjcmlwdCBz
ZXRzIHVwIGEgbmV0bnMgZW52aXJvbm1lbnQKYW5kIHJ1bnMgY29tcGV0aXRpb24gYmV0d2VlbiB0
d28gInN1YnNjcmliZXJzIiBhbmQgdGhyZWUgZmxvd3MsIHR3byBUQ1AKZmxvd3MgYW5kIG9uZSB1
bnJlc3BvbnNpdmUgVURQIGZsb3cuIFNldmVyYWwgY29uZmlndXJhdGlvbnMgYXJlIHJ1biB0bwpz
aG93IHdoYXQgaXMgYW5kIGlzbid0IHBvc3NpYmxlLgoKSWYgYW55b25lIGtub3dzIG9mIGEgc2lt
cGxlciB3YXkgdGhhbiBlQlBGIHRvIGdldCBib3RoIHRoZSBtYWpvciBhbmQKbWlub3IgY2xhc3Mg
SUQgc2V0IGZyb20gaXBzZXRzLCBJJ2QgbGlrZSB0byBoZWFyIGl0LCBidXQgdGhlIGluY2x1ZGVk
CmNsYXNzaWZpZXJzIGFyZSBhdCBsZWFzdCB2ZXJ5IHNpbXBsZSBvbmUtbGluZXJzLi4uCgpQZXRl
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
