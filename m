Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A043AC6BD8B
	for <lists+cake@lfdr.de>; Tue, 18 Nov 2025 23:23:47 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9089898371C;
	Tue, 18 Nov 2025 23:23:32 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Gz2wnKzr
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763504612;
 b=EhFg8HGRjJEtFtoaGgn3Uh35h7Zzdgo8IKZtf7OrhQsRQgjaBODxHFeH0SKFaPGPGkxkd
 6eNLosDNyHfSaDtIhYVq3VlEa7LHhRMJI72klkymn5Fi7Ta8uXoU1ArQnDUKOdLWywxQOmP
 vdItgtr+5J4VAKDUb7gbGWPUUBvx7D4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763504612; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Ud6cjPMGEP9f6yLpKlnq86QoBHlW1PFX5IniYK5CESo=;
 b=FjhSUVbykHNyoIXvoUzXhqLRggIxMJwoM357sQpc6FE5TzMBt0XOsaNTqO0TNc+33Hj1c
 JhJANFxrAQXxatbDuIb5h2/+PAYVo5U3zh861Gor1zHHBNWBJ7BRWiUQHqHwdp5gtPY2l6U
 JUWl/hNp4chNTklf7MlmLMC0JN0LZxQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
	by mail.toke.dk (Postfix) with ESMTPS id 903AF983655
	for <cake@lists.bufferbloat.net>; Tue, 18 Nov 2025 23:23:25 +0100 (CET)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-b736ffc531fso788467966b.1
        for <cake@lists.bufferbloat.net>;
 Tue, 18 Nov 2025 14:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763504604; x=1764109404;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5e4a1NkuvuEZjUFi7MxZw7r/7dfMpAfpcxxWqaso7ho=;
        b=Gz2wnKzrSmfTMZO9ppv+hvQSFjJ+wC/jEn+rxFEA04kRcXVK1/EnjrwEb7u8J5dO/n
         UuArFr6oGwLSroXPL92wTnYMb0VRuaaF9wXlQkN7cKN5Q3AWZOVj4NRnTVJ2uJ8rfCxO
         T6rttZqa38HZfmJUcp144aJMpwHMikHVCqSosWxBKG3FBfo8uF3Zpw3nqefIggK/Qwkp
         8IQ/Ec/DSukLLDLLnKuV7msxdBm7ls7pkOgdrWWo2FWtDH3NijLEvMmOXOMU1PwSYFgp
         SLPGls9SYcIyP4FXq4XytiZj4tzl+U6kpjSKjF32J+1oXmU68Fll8gbgs6vpoDGacfSv
         qlvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763504604; x=1764109404;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5e4a1NkuvuEZjUFi7MxZw7r/7dfMpAfpcxxWqaso7ho=;
        b=J8lI80+IcTZKdb4cV6fqtHoxoXG9GsnGPrur30KayItFCzZhF4NqR9qpZp/HpNX3Nx
         4tzWot7uUcy6pWNpK//54jAvp4FaJLjq6esNUpuT/C5raITHVRnCR0crfAcA8473eY7g
         kHDYtEEKBcp3DLSAAD4euJ9u/Agrg72+5tu1PfnZr7dCLYsn6kkMHtoO374plSYqz8i2
         yheehhm5sm9jsL+sZenhoE13hpzbm6heWN4TYKo801bK6YXle6GWD0S/GKIjPiYMval0
         Aj8KOiIAZzTWG7UsHEYV+z4RErQhTwCc7zErfXeyBss3kuPjys0NLEsNFhHFPprgSr56
         IOSw==
X-Gm-Message-State: AOJu0Yx06RLbo+X/KhayQt/p1cLKCj5ujEhDOuZPif4UDltjKVRY9ZBl
	w25qL7syr52KVKiUhztKZtOsk7UIZsg1ahdel1tjNVbQ+kvsdVeW9jfPcI6VPcRkH4fWoQL7acp
	4QWH/Mn/z9C9tkwnKflQ+rvDgC6doA+3Z+1OCg64=
X-Gm-Gg: ASbGncuM/KXcOVzMvsi5Gg7RSkeLksEK3aHaR6UP1dtvkM0j6lmOa7TlU0T8cf9Eg/4
	JGTX3oo1lIVHQtrrBVK85hv3bJnYymiixPMdpMsGp7gd94jDaVg0cUBYPPUAvgpAJMKHJiOGyk2
	bMUyWnEkl8so89blbeYw+0OxHeMwaTos4mjSaZ4YrhmGPWH98T23Hd5Z0SAzBPlnTgubuCEFYda
	b/3CQKI7NP7cENCMBhaXuSFj/VctR+OmQTaCnrafPPaGJg4n/sW3tw0WfjsHz9aqRD0dJTO
X-Google-Smtp-Source: 
 AGHT+IGAsHC8GTNlxgfPePoew7bbUapz2C8Jhw2blUo3dR9i9MoItvWPbruZ9eiiXDYbA3WMXdOypeBd8NFeSidWCFo=
X-Received: by 2002:a17:907:1ca0:b0:b49:5103:c0b4 with SMTP id
 a640c23a62f3a-b7637a383a6mr39997766b.56.1763504604039; Tue, 18 Nov 2025
 14:23:24 -0800 (PST)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Tue, 18 Nov 2025 23:27:24 +0100
X-Gm-Features: AWmQ_bngG9xULm1DqY0Ivdt3Aw9quYOZkbfmklWcMfruatQ-NEiYdbsmeOlkdng
Message-ID: 
 <CAJUtOOj_KLkB0Z3XoTvPMGZKthic9DZn394V63Nkq=LajnsP_w@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
	Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Message-ID-Hash: DCJYRGFTN6HQZKJQAWXR4URIWNXKFQ4X
X-Message-ID-Hash: DCJYRGFTN6HQZKJQAWXR4URIWNXKFQ4X
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Understanding Latency 4.0: December 15-17 (Online and Free - Register
 now)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOj_KLkB0Z3XoTvPMGZKthic9DZn394V63Nkq=LajnsP_w@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdG8gYWxsLA0KDQpGZWVsIGZyZWUgdG8gam9pbiB1cyBhdCBodHRwczovL3VuZGVyc3Rh
bmRpbmdsYXRlbmN5LmNvbSAtIDR0aCBlZGl0aW9uLg0KDQpMaW5lLXVwIGlzIGZ1bGwgb2Ygcm9j
a3N0YXJzLCBmaXhpbmcgYnVmZmVyYmxvYXQuIEl0J3MgbXkgaHVtYmxlIHdpc2ggdG8NCmNvbnRp
bnVlIERhdmUncyAiU3RhdGUgb2YgdGhlIEJsb2F0IiBwcmVzZW50YXRpb24gYXQgdGhpcyBldmVu
dC4NCg0KSnVzdCB0byByZWZyZXNoIHlvdXIgbWVtb3J5LCBoZXJlIGlzIERhdmUncyBwcmVzZW50
YXRpb24gZnJvbSAyMDI0LCBzaGFyZWQNCndpdGggcGVvcGxlIGF0IExpbnV4IFBsdW1iZXJzIGlu
IFZpZW5uYSwgQXVzdHJpYS4gRGF2ZSB3YXMgcmVtb3RlLCBhbmQgSQ0Kd2FzIHRoZXJlIGluLXBl
cnNvbjogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1uVTM4QzB1dm1PTQ0KDQpTZWUg
eW91IGFsbCBpbiBEZWNlbWJlciENCg0KQWxsIHRoZSBiZXN0LA0KDQpGcmFuaw0KDQpGcmFudGlz
ZWsgKEZyYW5rKSBCb3JzaWsNCg0KDQoqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAq
MTk2NS0yMDI1DQoNCmh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVt
b3J5LW9mLWRhdmUvDQoNCg0KaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2Jv
cnNpaw0KDQpTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KDQppTWVz
c2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1DQoNClNreXBlOiBjYXNpb2E1MzAyY2ENCg0KZnJh
bnRpc2VrLmJvcnNpa0BnbWFpbC5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQK
