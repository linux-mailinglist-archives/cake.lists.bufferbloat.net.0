Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A4658BD774D
	for <lists+cake@lfdr.de>; Tue, 14 Oct 2025 07:38:29 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 46397793E11;
	Tue, 14 Oct 2025 07:38:28 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=aZhsn4ro
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1760420308;
 b=1dv12BZYhhtgb0yOsfAy+4bTZbr56a/QVbXm9JA8l9M0gDhudZB0sh9qdz9VPRRCgLn8h
 QKsDT5aHVC17+3yrsxUy2eiR6Z4bcQTJE2am6B10NUp1XvWXNoARJ9kYFkFKr1jioeYwneb
 7O9nTKNWxWrrasuQIB2l+L7azqFpdZY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1760420308; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bLthZOxmDlACZmH9YZRvZthQcCZ/icWxfM5UvqsyaPc=;
 b=S1ZVrw6VlCcZGcepKTqpmwAPimhKa+nI+7woX75M1d8lOf76Wne/aepeSlvkXepTWAhOn
 TvE+7pBx0Ee7IwpL5tSpcc7O5BI62RzLqTAR6IQurWXfIIetW4RZRHrf6LETPy5um0hHxEk
 ATc0dh6bGW9lcRIKLr3NKtFc4GE+Fj8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
	by mail.toke.dk (Postfix) with ESMTPS id 8E5E8793DF1
	for <cake@lists.bufferbloat.net>; Tue, 14 Oct 2025 07:38:25 +0200 (CEST)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-634cef434beso9248243a12.1
        for <cake@lists.bufferbloat.net>;
 Mon, 13 Oct 2025 22:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760420243; x=1761025043;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kUhQrTKZM8vocvYWspMB5yLqXSbU0xQhSkNES+XHuIA=;
        b=aZhsn4roQBHRug60WdHCRz7SWO4JRNItlS4eFKE882TE8rvVf0vk7vVP493XV/dce3
         mfMfnhK6dU81cBpqta1YijjUwks844LXoLtk/xsBl7bvRYxCmnNiOLiwaVr6PqLtQQIN
         Pl9G97rS33jZ4IS9xlDOYlrmCOULHUs8/lCXR4YjHejTkXTwXcp7YfICT80YTLb5sUiN
         O+zOkfNj79XME+t92YAGQjOj/cP7JVxpDpzd1SWzSNMzhT/6Wn7Z7Y9NTduznz8kGkTR
         Eg0LJBqrCh9Ca/lG24wJTpdK2oRQlMJdq9kmkDb94sVVzMEFXihXPZRCXRRdp66EKO+U
         G/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760420243; x=1761025043;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kUhQrTKZM8vocvYWspMB5yLqXSbU0xQhSkNES+XHuIA=;
        b=mYioxM+AoYFKbb8igMCGsvyx1oNGd+rUlGIib7G17gDe5jL5o2rAegVyhQCtuw2Uze
         pAQcob6zA3qLU09dMMzrBE0whguaug3uQwVy8/qDldIU5Q59PoCnG23XWw36RJQuku19
         1PGderBGhfvFgsO+7kVJ8LDRmXVDxfFRm6OuuZOFcYWSPobfv4eczYqOwHS8xA2w/FR9
         h/f4kTX8mCjsku8GVfp38yZ/MKqd1atEeBFr3nuKSsn1+TNDNXdJUS8hl4Ad7UBDcmKr
         V84cqd+7lIKonvP4ivjQlGpMSK1S8nRysPhbaMGT4WPvMIWIPHDysj7CXFTbCEjBwY2M
         UqRQ==
X-Gm-Message-State: AOJu0YwnlOl+0s/YSWPTdz1ofIGoLn9jscYs+Rx2wNZ8eJjnHctx4E1A
	pAJjnYcyxllzbNbhOZe/RmpFLt3DpUdjMfi60Gpcl1IHlbVDQbHzCiujT/N74xxNyxIPGMlV7Zh
	4IdgCxpOEFAVgSuBgnIFVtlU5R3qmsofOvBwDgC/qtw==
X-Gm-Gg: ASbGncsBpW6NmiubzqNXLXc6japkR6+4eYjOcJp/nfD6vPDKirnGMUC5F/we925HjMR
	UTAvHk6PS6cEFU1JUlCNFKCFCdzTp6nsfYkc97tHSDKJcrV8wN5HqJj5R0621iLHBAYUvscI95G
	Fe6K8hgF8HNydNBav65hic/6qz6D31caO9sKg9DGIO6LGAi7SlsDq3q3yqXZfeduhw1UmnHqhEA
	kcUbxQ7jbRblYCtmN8Nv3s2lQ==
X-Google-Smtp-Source: 
 AGHT+IGrp6w3Mai9AJuIHKqKBdkLFY/51zZoCMRnMl1ldGTgcgIxR34dGP7G3Kqe72vE0A8Rl9MdNrmTyW7ah8f+FWk=
X-Received: by 2002:a17:906:4fc7:b0:b4a:e7c9:84c1 with SMTP id
 a640c23a62f3a-b50bcc1ad08mr2724029766b.7.1760420243172; Mon, 13 Oct 2025
 22:37:23 -0700 (PDT)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Mon, 13 Oct 2025 22:39:32 -0700
X-Gm-Features: AS18NWD6K7eonXjFqCfE7qihCE0fHFfu0UOJTaUGaZeViIsteAU2zdo2GY_Lx9s
Message-ID: 
 <CAJUtOOgSe2CjMUxu2AyLPD9h=eiH5+v1+dc9fYX=a2JzHWwKTA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
	Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Message-ID-Hash: UFDDIWL3MRVO7HQKFDQSMEPVFGCEXGKH
X-Message-ID-Hash: UFDDIWL3MRVO7HQKFDQSMEPVFGCEXGKH
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] The Bust of the Bandwidth Bubble (from Bandwidth by Dan Caruso)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOgSe2CjMUxu2AyLPD9h=eiH5+v1+dc9fYX=a2JzHWwKTA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBjb3VwbGUgb2YgdHdlZXRzOg0KDQoqaHR0cHM6Ly94LmNvbS9maWtvY2lhbi9zdGF0dXMvMTk3
NzQ4NjU5MTA4MzA0MTA3NyoNCjxodHRwczovL3guY29tL2Zpa29jaWFuL3N0YXR1cy8xOTc3NDg2
NTkxMDgzMDQxMDc3Pg0KDQoiVEhFIEJVU1QgT0YgVEhFIEJBTkRXSURUSCBCVUJCTEUNCg0KSXQn
cyBvbmx5IHdoZW4gdGhlIHRpZGUgZ29lcyBvdXQgdGhhdCB5b3UgbGVhcm4gd2hvIGhhcyBiZWVu
IHN3aW1taW5nIG5ha2VkLg0KDQrigJRXYXJyZW4gQnVmZmV0dA0KDQoNClllYXJzIGJlZm9yZSB0
aGUgQmFuZHdpZHRoIEJ1YmJsZSBoYWQgYmVndW4gdG8gdGFrZSBzaGFwZSwgZGF0YSBoYWQNCnN1
cmZhY2VkIHRoYXQgaW5kaWNhdGVkIHNvbWV0aGluZyBtYWpvciB3YXMgYW1pc3MuIEluIDE5OTgg
YW4gQVQmVCBMYWJzDQpJbnRlcm5ldCByZXNlYXJjaGVyIG5hbWVkIEFuZHJldyBNLiBPZGx5emtv
IHB1Ymxpc2hlZCBhIHBhcGVyIGRlYnVua2luZyB0aGUNCndpZGVseSBoZWxkIHZpZXcgdGhhdCBJ
bnRlcm5ldCB0cmFmZmljIHdhcyBkb3VibGluZyBldmVyeSB0aHJlZSBtb250aHMuDQpPZGx5emtv
IGV4cGxhaW5lZCB0aGF0IHRoZSBpbXBsaWNhdGlvbnMgb2YgdGhpcyByYXBpZCB0cmFmZmljIGRv
dWJsaW5nDQp3b3VsZCBpbXBseSB0aGF0IGJ5IDIwMDEgSW50ZXJuZXQgdHJhZmZpYyB3b3VsZCBo
YXZlIGdyb3duIGJ5IGEgZmFjdG9yIG9mDQpzZXZlbnRlZW4gbWlsbGlvbi4gVGhlIGFtb3VudCBv
ZiBCYW5kd2lkdGgsIE9kbHl6a28gY2FsY3VsYXRlZCwgd291bGQNCnJlcXVpcmUgZXZlcnkgSW50
ZXJuZXQgdXNlciBvbiBFYXJ0aCB0byBzdHJlYW0gdmlkZW8gdHdlbnR5LWZvdXIgaG91cnMgYQ0K
ZGF5LiBDbGVhcmx5LCB0aGF0IHdhc24ndCB0aGUgdHJhamVjdG9yeS4NCg0KIltEb3VibGluZyBl
dmVyeSB0aHJlZSBtb250aHNdIHdhcyBhbiBleHRyZW1lbHkgY29udmVuaWVudCBteXRoLCIgc2Fp
ZA0KT2RseXprby4gIkV2ZXJ5IGVudHJlcHJlbmV1ciB3aG8gd2FzIGdldHRpbmcgZmluYW5jaW5n
IGNvdWxkIHF1b3RlIGl0LiIgSW4NCmNvbnRyYXN0LCBPZGx5emtvJ3MgYW5hbHlzaXMgc3VnZ2Vz
dGVkIEludGVybmV0IHVzYWdlIHdhcyBkb3VibGluZyBvbmx5DQpvbmNlIGEgeWVhci4NCg0KT2Rs
eXprbydzIGluY29udmVuaWVudCB0cnV0aCB3YXMgZWl0aGVyIHVubm90aWNlZCBvciwgbW9yZSBs
aWtlbHksDQoNCmlnbm9yZWQuIg0KDQoNCg0KKmh0dHBzOi8veC5jb20vVGltb1ZhaW5pb25wYWEv
c3RhdHVzLzE5Nzc0OTU3MDUxMDQxMjIyODENCjxodHRwczovL3guY29tL1RpbW9WYWluaW9ucGFh
L3N0YXR1cy8xOTc3NDk1NzA1MTA0MTIyMjgxPioNCg0KDQoiVGhlIHRlbGVjb20gY3Jhc2ggd2Fz
IGJlZm9yZSB0aGUgZG90IGNvbSBjcmFzaC4gT20gTWFsaWsgd3JvdGUgYSBncmVhdA0KYm9vayBh
Ym91dCBpdCB0b28sIEJyb2FkYmFuZGl0cy4gVGhlIHRlbGVjb20gc3RvY2sgYW5hbHlzdCB3ZXJl
IGEgYmlnIHBhcnQNCm9mIGl0LCBwcm9wb2dhdGluZyB0aGUgImludGVybmV0IGlzIGRvdWJsaW5n
IGV2ZXJ5IHggbW9udGhzIiB0byBqdXN0aWZ5IHRoZQ0KaHVnZSBmaWJlciBvdmVyYnVpbGRzLiIN
Cg0KDQoNCipodHRwczovL3guY29tL3RyZW5ncmlmZmluL3N0YXR1cy8xOTc3NzE2NTM3MTk3ODE0
MjI2DQo8aHR0cHM6Ly94LmNvbS90cmVuZ3JpZmZpbi9zdGF0dXMvMTk3NzcxNjUzNzE5NzgxNDIy
Nj4qDQoNCg0KDQoiSSByZW1lbWJlciBsaWtlIGl0IHdhcyB5ZXN0ZXJkYXkgdGhlIG5pZ2h0IEkg
ZGlzY292ZXJlZCB0aGF0IEludGVybmV0DQpjYXBhY2l0eSB3YXMgbm90IGluY3JlYXNpbmcgYXMg
ZmFzdCBhcyBVVW5ldC9Xb3JsZGNvbSB3YXMgY2xhaW1pbmcuIFRoaXMNCndhcyB0aGUga2V5IHNl
bnRlbmNlIGluIHRoZSBwYXBlciB3cml0dGVuIGJ5IEFuZHJldyBPZGx5emtvIHRoYXQgSSByZWFk
DQpsYXRlIG9uZSBuaWdodCBpbiBBdWd1c3Qgb2YgMjAwMDoNCmh0dHBzOi8vMjVpcS5jb20vMjAx
Ny8xMS8xMS90aGUtMTk5MHMtdGVsZWNvbS1idWJibGUtd2hhdC1jYW4td2UtbGVhcm4vYW1wLyIN
Cg0KDQoNCiJJbiB0aGUgaW50ZXJtZWRpYXRlIHJ1biwgdGhlcmUgd291bGQgYmUgbmVpdGhlciBi
ZSBhIGNsZWFyICJiYW5kd2lkdGgNCmdsdXQiIG5vciBhICJiYW5kd2lkdGggc2NhcmNpdHksIiBi
dXQgYSBtb3JlIGJhbGFuY2VkIHNpdHVhdGlvbiwgd2l0aA0Kc3VwcGx5IGFuZCBkZW1hbmQgZ3Jv
d2luZyBhdCBjb21wYXJhYmxlIHJhdGVzLg0KTXkgcmVhY3Rpb24gYWZ0ZXIgcmVhZGluZyBPZGx5
emtvJ3MgcGFwZXIgdGhhdCBuaWdodCB3YXM6ICJIb2x5IGNyYXAuIFVVbmV0DQppcyBseWluZy4i
IFdoYXQgSSBzYWlkIHdhcyBzaW1pbGFyIHRvIHRoZSByZWFjdGlvbiBJIGhhZCB3aGVuIEkgcmVh
ZCBhYm91dA0KYSBkZWFsDQpiZXR3ZWVuIEVucm9uIGFuZCBCbG9ja2J1c3RlciBmb3IgaW50ZXJu
ZXQgYmFuZHdpZHRoIHNpbmNlIEkga25ldyB0aGF0DQpFbnJvbiBoYWQgbm8gYmFuZHdpZHRoIHRv
IHNlbGwuDQpBZ2FpbiwgIkhvbHkgY3JhcC4iDQoNCg0KDQpBbGwgdGhlIGJlc3QsDQoNCkZyYW5r
DQoNCkZyYW50aXNlayAoRnJhbmspIEJvcnNpaw0KDQoNCipJbiBsb3ZpbmcgbWVtb3J5IG9mIERh
dmUgVMOkaHQ6ICoxOTY1LTIwMjUNCg0KaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0LzAxL2lu
LWxvdmluZy1tZW1vcnktb2YtZGF2ZS8NCg0KDQpodHRwczovL3d3dy5saW5rZWRpbi5jb20vaW4v
ZnJhbnRpc2VrYm9yc2lrDQoNClNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2
NzE0DQoNCmlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUNCg0KU2t5cGU6IGNhc2lvYTUz
MDJjYQ0KDQpmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxl
YXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
