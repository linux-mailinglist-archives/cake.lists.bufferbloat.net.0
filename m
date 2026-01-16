Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC27D38995
	for <lists+cake@lfdr.de>; Sat, 17 Jan 2026 00:08:00 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 79E72BC2C86;
	Sat, 17 Jan 2026 00:07:58 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=if+aQUtf
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768604878;
 b=50u+yNFzRPbeRnYatmuxHz9DgjdQL2Qb4pd8h53T3+Al6+Lo+pmcADQDcFdiZfBmc4Vs/
 nBpNTorFnu1kT8+M17uqWXEzv+r50qSawV9WHoF7isCuzeebqFPnF8R6W1ZsZjWvmPfh9CD
 3NJJpMlVKS49bwW3bhbiuZ7GA6563nw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768604878; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Gy2LDh9jnqOSdpCtpS/BiDHtP0YivdpAg0oAxB67LNU=;
 b=YgPEJ3IxfgGG8wIUSl2YjEB04GtjnkGpR8FVAkQN76kL3Zdd8prYCgRBmjcpicr8IvP+K
 1gnGXoCCkG+emynGX6/U/B6zYGH1sSIcqQyogbUSez0fwTnrzhA+VTCHLgJ+/bnjpopAuW7
 UB5LObfm62bP4XXypghqQQm/wz1Gk2U=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
	by mail.toke.dk (Postfix) with ESMTPS id 71924BC2C77
	for <cake@lists.bufferbloat.net>; Sat, 17 Jan 2026 00:07:53 +0100 (CET)
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-59b79f700a1so2489560e87.0
        for <cake@lists.bufferbloat.net>;
 Fri, 16 Jan 2026 15:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768604872; x=1769209672;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RRA2QH3xiU1TQyTw3tq/+BiCbCu6+wzvOCvYUYBY5gI=;
        b=if+aQUtfLr4WUHdJqoJKj5QsWePVAn3QexEt1a9LnzsYZo2a1tVKAHVcCTobdIpLKl
         h2iTx+X3jAuaEoytu8K1qohLe4A4MABDC5XW5lwLGyX6PP1Ji5uSlC/iDZrRO/b8ibpC
         TvNWRyvETTomS53Ot3iQCxiWJoPr5KVRHAaqIWmPCi7N+6rLMRaeaGiahBaAQRXTyOZu
         qsLS2jncc9zxvSYCkCvas6uCZHA5857mPD+4KWpvm1o008PZ9IWOEdilKxsYb5vS1Svq
         EjJUQzG7clt4rnAeaBpy1ltdHtMHelp0uvvWZmHHZ4trzXs74F7C01MkZC2btwQu9VKD
         SWDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768604872; x=1769209672;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RRA2QH3xiU1TQyTw3tq/+BiCbCu6+wzvOCvYUYBY5gI=;
        b=wdbtgXjsrP27urkLwpZAdyA7LyuBsDlheDancYse7f1l8IU8DIRgnbKpleqnjWQEhW
         oZGHt8eWplUnzN5vUq2kWjZn3jXQp2gcXI3s5dmH66dsyb8ZeUZuq/cxV5l7CoVJUqJo
         sN3VfE6IqT6Zrb4yRN1HguGlXXDpz6iFDXnT99Z88yxv67rJgaGOCWpawunEHi2bL46l
         QHBGmkY4FuW5XYyLIwK4X1rW3VPyT9N4UkOpPMz3hC/k2VUsK9YHlym/u5adxho+bTja
         4E9IFX66bfuiYEsvRsPN/4g2z8GPu/6uD4W9DgslIgTL3XiG0CDLMS/x8WnGsnwCRKrq
         cO8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/QRHeEFdY2w0SeiW8KVGj/Ml7aGX/fX9owWdLCecYGPac1PxqotEpBPpDy7dArbrDuwwW@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwA8IkxkGodBfhetQV0F4Bh4vfmeUHvc5yJ4QC3VKklzOJKmhXk
	aLEapSQYXp+kBXiW1zMbA0Mzhndqvw9FJQu6gLdUuZNq2cJRcdrVBJDYjyRZks3ls19fsqkk1tQ
	TlS31kB2ASyVRoLJM7ciDndLkd7eSIrfoo0n4ax4=
X-Gm-Gg: AY/fxX5FacLhWJvbsQd5MH6jwOm2/EoX9P3vpU9hZ+WI3sTgoWHV67yGl1W3UHBwrm8
	HoUeLd7QJ96F73KBkUM73dYulptV7qXUWVDD5YuutUO+WZvjv95JsxRNor/ScQt+EWtu/RtTQQ5
	m9Rtx3+kR9qMg/LxTXPNDZAEbuhvpNJV1hjdCCzQJozXjRB/JCRwjF8CgUO8l+xcBaYETG2zleE
	xt28CVWvvp9hjLwoek8pEaI44XJj2d/X2XSoNzxhRqbKLuJ0kMzKJVP4nYCEv5AnXJCdt+bngmT
	LlIu5AxlyiySKXPSmJ0GVg==
X-Received: by 2002:a17:907:1ca0:b0:b87:6936:56c3 with SMTP id
 a640c23a62f3a-b8777bd3306mr700320966b.20.1768603388039; Fri, 16 Jan 2026
 14:43:08 -0800 (PST)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Fri, 16 Jan 2026 23:45:33 +0100
X-Gm-Features: AZwV_QhmQaNkL4Uye9AchiG-xlc_Dsj7bY7xG_wMh83sNoY21-KQdmOC5EaFIgk
Message-ID: 
 <CAJUtOOhYZMsXXbXqJHEQq+y2MY75nb1esdkmkoUJ0qVF6Hqg+A@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net,
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Message-ID-Hash: XIKSFRX2AT44TJ2HGUALDLT6NNVP4TMN
X-Message-ID-Hash: XIKSFRX2AT44TJ2HGUALDLT6NNVP4TMN
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] So L4S is coming to Wi-Fi?
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOhYZMsXXbXqJHEQq+y2MY75nb1esdkmkoUJ0qVF6Hqg+A@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2FuJ3Qgc2hhcmUgYSBwcmludC1zY3JlZW4sIHNvIEkgbmVlZCB0byBzaGFyZSBSb2xmIGRlIFZl
Z3QncyBwb3N0IGZyb20NCkxpbmtlZEluOg0KDQpodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9z
dHMvcm9sZi1kZS12ZWd0X2llZWU4MDItd2lmaTgtYWN0aXZpdHktNzQxODA0ODA4MzM5NTA0NzQy
NC0ydW1qDQoNCiJUaGVyZSBpcyBhbiBhY3Rpdml0eSBpbiB0aGUgQXJjaGl0ZWN0dXJlIFN0YW5k
aW5nIENvbW1pdHRlZSAoQVJDKSAgdG8NCmRlZmluZSBhIHJlY29tbWVuZGVkIHByYWN0aWNlIGZv
ciB0aGUgaW50ZWdyYXRpb24gb2YgTDRTIGluIDgwMi4xMQ0KbmV0d29ya3MuIg0KDQoNCkFsbCB0
aGUgYmVzdCwNCg0KRnJhbmsNCg0KRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQoNCg0KKkluIGxv
dmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5NjUtMjAyNQ0KDQpodHRwczovL2xpYnJlcW9z
LmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9yeS1vZi1kYXZlLw0KDQoNCmh0dHBzOi8vd3d3
LmxpbmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsNCg0KU2lnbmFsLCBUZWxlZ3JhbSwgV2hh
dHNBcHA6ICs0MjE5MTk0MTY3MTQNCg0KaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0K
DQpTa3lwZTogY2FzaW9hNTMwMmNhDQoNCmZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
