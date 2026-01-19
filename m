Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F176AD3B456
	for <lists+cake@lfdr.de>; Mon, 19 Jan 2026 18:31:23 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id AD393BD4F65;
	Mon, 19 Jan 2026 18:31:17 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=UMyVW1vg
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768843877;
 b=yjaNQodv1Qj1AxdjXVO3F5GkQYTV5A/sBA8aJhQz9F37GXF0thb657NvRLPtmBthxrL2Y
 pKJv7bi7d0iDQ+v8qvSe+7cfDe1VIogB4eUOF5twlHEQpEoHwwejAlYU5PgNmRWiD5cnzvk
 SaIi2ssLF5vWRuqf04oaHZU4hjvs+xs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768843877; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dYXXrJ3qL/BMrLo54N5xnOktW1+ZH9XEI0TU7llxdFQ=;
 b=KbbGHb8RZJu0wmZwBrSI3N1epbg+p4jI3gOTcuhfbp4eoS9sMlebPOkmeXH3fcs4kAAnn
 050u1ZiUs7IxeQbQ0JjPgiiiChhqWkwGvd8XUfroeVnAhB8plMtsnqXBIP6Ri/saNvSZEVo
 0zSkXhz6NZ3tT5wFMMrAIIrJ9lx5uFY=
ARC-Authentication-Results: i=2; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=pass;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
	by mail.toke.dk (Postfix) with ESMTPS id 538E3BD4F02
	for <cake@lists.bufferbloat.net>; Mon, 19 Jan 2026 18:31:15 +0100 (CET)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-b8010b8f078so754332766b.0
        for <cake@lists.bufferbloat.net>;
 Mon, 19 Jan 2026 09:31:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768843874; cv=none;
        d=google.com; s=arc-20240605;
        b=AscRQEQvnLncakeMU1LTFW+buWFCeo4EUO9rOFY98OCVNH2s9M5CiAoATJvHXMBvT1
         iFfk91wb406W5mjj298A2Eto1VPuR96MUW7xZhIfaCrXTcIPYQS4SUzozhxI5E80PgMQ
         VnWumDIBoGButdzDD6EYiMNMWkbuiOs/eOYNSA4+VX3xIYhbMmRmdbfSmme6/S0t2gpS
         eW6qsI+4d9QD3MyDKZxgdK5Aa01dr1DticrpdK7f1MRMRwSu1CNkUPOtQjZGtOEY1P1i
         uzXBm4bLTTcC9FGkyzV6Mp6GtxPSg2W10GsrE4ufeF9J/JLwNIgS2GDMqumRHzymob3w
         8bmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QcBXzL0CLGrrVSlbMn+sa0BVAjHRdeqdgxHHH5ErpF4=;
        fh=OxtPrE7OdfJrSXSkk9vBlYMWYTVrWOrDGzXVa2DrSJY=;
        b=Rgq4o9npMJ/U9ixXtChbgjj21yD1X8Hx8yhhQCklrjINoombjQoUJ85dqpLKE36PIC
         BDMuqQQ5i+zuIkr8LwvA+/BgPvc7C39iJMeoYb4465QB7k5RzfCy0Ur+SyHML1/Ku9aQ
         onYDq+vpznkx5gSrSzTEFsOKOaIWZehcXUed46H9lLUyYSwOloJZv5G/gxu3lp/CexF1
         uYPNa7ofj1k2rBCW95ldRgZRHlnE2arTbAQXMu9u9m5We3zhy80RSfsavURoNdi8iLvf
         qE3IkJX3jbQn3Bcn74IOC6Bl1HIu8XKGbojv0/g2BnmIt2Jm3sy3xnGfJRYp+/1uHrnA
         lYbA==;
        darn=lists.bufferbloat.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768843874; x=1769448674;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QcBXzL0CLGrrVSlbMn+sa0BVAjHRdeqdgxHHH5ErpF4=;
        b=UMyVW1vgyPqwtDTeBNjTLMXyEGlJsMCfG0VDbpei49UeTjXvqbWW6WJLLivc3+eJnh
         w7FK2IaTRxwZ3ocpm1+dO0AlkV0Ge/keEaQ2s8JUcTLgWB/MvC8rk93Or8lFcpB8BwLH
         1qWX2ClkX82AX7ZebhL7prRwoEHjvt6NJhUzogApUNsdVMlsqatZ1fA8tWq1GvdNYR88
         3UViBrlKyuy/9kzKbqSy61oVZUDzLJWc94NqKzXSXm16bnLodsnFq1kuHaIvem1Je3w1
         TcYg/1z+uhyhh4VQT9dwTOQQJNKkaKOZnfqB7cnsf0GmiBqXaa5Y9Ll+AImvyF38jA/e
         30Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768843874; x=1769448674;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QcBXzL0CLGrrVSlbMn+sa0BVAjHRdeqdgxHHH5ErpF4=;
        b=CufkTXcFW8wqW1QZva4KyIM0yypPNor4M8FE8QTNdjslb3l3YROvJH2PNeWMoJSrUJ
         Y6H//95eGLTlvUdt4oe+XpySE1vvYviY1huv4pw0SFL1O5lun0Y1qjG6G4vUMvuwqgAY
         6bd4RIi5iZrbYOwzrYAQ99woGIv1OYX3GqeO0s3W5KXQQsghqADg8LHlMFbvbTS+MT8/
         m96cgjsCWvX4LIxLT5HNeDTUgBSQOwb//TD3D18ERjdgc8w4ES0WlmDaDLFgG1Oy5AJj
         eDPSbAN3t+fXIpkYtzuiLr/400ojBppT9q8yc1OshzYPh/LiEpBrybz9dg30Gz3ICDuQ
         DeWQ==
X-Gm-Message-State: AOJu0YxgEBf5oDMvlRMdgoyh5R405+xqsJ6qrfiUIbjMWFR2Ecdb4z3U
	7UBiEdzkPhUxdIpbwm3jW4+B20pzW/hio7hUT7F+fVTgKfHxcPTyko5NQq7FE48E1QMUhepXPmp
	9uPIs2vRj65HWW7Dx17HIdl/8+j6odR/SfwrF86o=
X-Gm-Gg: AY/fxX7zQ280JMEws2hmPDv4i4oqu1t/Pe4sUG97WFVaamezS3Nx8Q139b7MVmFTNCz
	JHwQ7G1VTAkjlC689jX9mZl3JBSZ5ykGX3/iltOXuuzL7QJQ1xf9xeZmP6r9vhr6dZ/ooXH2WPS
	pF/TGuW+YD2CmCZ/zjvY4kTQxzPn/yB3O0nUALvRyYlAVMhy3BKbInNXF6MEhwTzO+LttdobCGa
	/0Qr3aXIelAxVk9MciNQYCfhI1Po0EjDjvwenc6ClzmeTxe9TfwLeyk0jstyC6nElk0KNMpzygX
	Mr914yEq0S4=
X-Received: by 2002:a17:906:dc94:b0:b87:31b5:d68 with SMTP id
 a640c23a62f3a-b8796c137aemr872661966b.65.1768843873046; Mon, 19 Jan 2026
 09:31:13 -0800 (PST)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Mon, 19 Jan 2026 18:33:46 +0100
X-Gm-Features: AZwV_QjIHiCKZiRA7F6tsm5Al5X4J1sGldgJd4X1FWtM_V3rfViZBVwbb33qMTg
Message-ID: 
 <CAJUtOOjf3vaQLtbZbmm559EuDJzpCkmysToVy_anS2NVtbJnVA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	bloat <bloat@lists.bufferbloat.net>,
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: 65FVSZBBWEUMUZDF5HP76KSIXKCCLAYN
X-Message-ID-Hash: 65FVSZBBWEUMUZDF5HP76KSIXKCCLAYN
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] CAKE_MQ Slated For Linux 7.0 To Adapt SCH_CAKE For Today's Multi-Core
 World
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOjf3vaQLtbZbmm559EuDJzpCkmysToVy_anS2NVtbJnVA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R3JlYXQgbmV3cyENCg0KaHR0cHM6Ly93d3cucGhvcm9uaXguY29tL25ld3MvTGludXgtNy4wLUNB
S0UtTVENCg0KQWxsIHRoZSBiZXN0LA0KDQpGcmFuaw0KDQpGcmFudGlzZWsgKEZyYW5rKSBCb3Jz
aWsNCg0KDQoqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAqMTk2NS0yMDI1DQoNCmh0
dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvDQoN
Cg0KaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpaw0KDQpTaWduYWws
IFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KDQppTWVzc2FnZSwgbW9iaWxlOiAr
NDIwNzc1MjMwODg1DQoNClNreXBlOiBjYXNpb2E1MzAyY2ENCg0KZnJhbnRpc2VrLmJvcnNpa0Bn
bWFpbC5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
