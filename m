Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BFA8622A7
	for <lists+cake@lfdr.de>; Sat, 24 Feb 2024 05:57:13 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 843413CB43;
	Fri, 23 Feb 2024 23:57:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708750631;
	bh=r1h5EtVksPQ5Z/ukbgT+kXUQrJ5zQHxTVBlFZOWp2jU=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=fMPcl555RLDYkkSUOCdE6x7RhxCRAcQxwkcTVYoohHKtouMRdA/ylfzfmU1VGOa0o
	 NL/nVCWw6AJSoUyWRCEYZwvzW6XmCy40qcMWbxMfbzdn9sNpRTyRwhUxG0lCRq+Kth
	 uHW4L/gpM/Z04jkbkVomE9MiT/KpP9algxWU8yzCX8Szk1fsP6joccmhnp4bqOJyZU
	 NPJFgrYYwVwKHXTouHGoulspZtYuxYqkweSN9ESaYrjMC5XPhNj+u4rIfhwb38xNNw
	 PO+/MEPNBPphCIQuQA8O3Afu7rrv/uzyGvTz7IXrsJMsZfx80A+jpXO+pwWJO6DMRU
	 CINmkwbIXZiBg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3B2463B2A4
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 23:57:10 -0500 (EST)
Received: by mail-qt1-x836.google.com with SMTP id
 d75a77b69052e-429f53f0b0bso9767261cf.2
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 20:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708750629; x=1709355429; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=sHbvdqG8hFVrzRuIlMG0ZSW+RjKHVwAAmfH2GGAOcqA=;
 b=CNEOFxLV+H258JB8ks3UbuP5hC7OP1I3hZFycuDjiF7oScSyoztsHHW6cIgN/sX4nv
 +z3DlUohYRtfJBEglunXffjUIUHae0ulM3vmh68UcatX2dI7H3nN39fJil4zP2tB9wxQ
 J4mSSkwJdLmw98OIN8p+2IfFtiEV0wCnZQHoSnRHSUDakwcm1xAolqby9D5z0CSaavqE
 D7s3XrQBQ+Kwejlym6Qhup5CYeO1xiPTsFBeRmD7zOjlvq1ci2uiAVlj8kp/APwBiJfI
 PqsgNX9Fqf2r3E/7cp23BjLLsSvuyU1NvSF3HPaoHWQZ8XIoM4+FM5NwS3k4iZxmkmcu
 dVaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708750629; x=1709355429;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sHbvdqG8hFVrzRuIlMG0ZSW+RjKHVwAAmfH2GGAOcqA=;
 b=K6kXAEC1tLRml4p2toKQHF5EQ5MDTHPz4h4uVI+Iz+OaLEYAMcCz76WpVSkJjD4N2U
 SJD+THzSBPERp0p6b2TtN6Cgyx96JtoolA9KvG5X5AWkImvSaLmHszi5mFMD01VHEiYz
 n2H2rmLv3lGVWQcoVHVaUdpCC+QGiY48VmEQIdTdc2JLQKBLJv8iWq+zq8v/zEbvjS6K
 +pjBQGXGPWlQ7mDOaJj3JDfhMdZKemBDKXZ7wTQOcfRiqRX6vse+lO0P5u5rdGJlJJ32
 GdztGfR3iJxCW6/lp31nRgwqhMZrxuo1aBu8FyVGgjTNyY+BSKj+ASqdGngyB6pq12Bl
 eAYQ==
X-Gm-Message-State: AOJu0Yzt4xskPIa7kvMd+eSbC1NuS1keuiJ/JYYd2nk3EvRPL7RM31te
 w2ARGeMIDxtkEfwPuOHwLDLKQRU/nfSrcdvK+I7IPkWPh6Ecpvi6+eykdMGXz98mC4dSQa2gOuf
 pHrCy4IWia6briP6H/4cebO8aXtg8qyCI
X-Google-Smtp-Source: AGHT+IE1CtTFlrle/aIKzI5SdDtegwGP1s7BkebJUpSsyy4uHrIhpnTyatKHmLv3sK2/AhcRSbhVcgnylEyS2I6q1+g=
X-Received: by 2002:a05:622a:588:b0:42c:766f:d8e8 with SMTP id
 c8-20020a05622a058800b0042c766fd8e8mr1369233qtb.18.1708750629425; Fri, 23 Feb
 2024 20:57:09 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 23 Feb 2024 20:57:00 -0800
Message-ID: <CANypexR=orWau0cyS_vXFu5RggObuaw5b6MAcJ7Y=W45gQYgCw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Nanog l4s video
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Content-Type: multipart/mixed; boundary="===============1614112909532363821=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1614112909532363821==
Content-Type: multipart/alternative; boundary="00000000000046d83906121982a7"

--00000000000046d83906121982a7
Content-Type: text/plain; charset="UTF-8"

https://youtu.be/E7okBZ8NfQ8?si=Ip4Lxo1g1Xx7oy4Z

--00000000000046d83906121982a7
Content-Type: text/html; charset="UTF-8"

<div dir="auto"><a href="https://youtu.be/E7okBZ8NfQ8?si=Ip4Lxo1g1Xx7oy4Z">https://youtu.be/E7okBZ8NfQ8?si=Ip4Lxo1g1Xx7oy4Z</a></div>

--00000000000046d83906121982a7--

--===============1614112909532363821==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1614112909532363821==--
