Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 25562BD0670
	for <lists+cake@lfdr.de>; Sun, 12 Oct 2025 17:51:36 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id D1F8A7897C0;
	Sun, 12 Oct 2025 17:51:34 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mojatatu-com.20230601.gappssmtp.com header.i=@mojatatu-com.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=krSuvn34
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1760284294;
 b=f0Xc9X2T7dYo/dj9kzh/2TWyaj4mpjj2999kL+OlDqbnnqSQBA2VAfAb4sDvpyBhpLy1Q
 WU5buWx9X7AoXwxeqODi+fDbxe91OtfaEPek+Qi6fP8ZoquUnujHgfGHv5GNwi51eamMRZc
 sNUpMZFcY1z3QGAhtIagUEgofmdoTlk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1760284294; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=EGXKrSVq9hyoWjC1GFLU9sIpF9+3b1kbUfaH9Il1YLQ=;
 b=iPsgrIa37NXKgfTTz3dpg5LXMqkP12MgE17G233Wo/7KPJdc9wNFJtcSeRW6HJWeoa+05
 Z1D0wVgCuGwrdcd+fQXgcYyXZ0Qvfi6ewEgMXipU/CAD/JGL/vd3tTKM/fS2ikkBBUrbYUs
 dcD4WbtYzEHhz5nEhXPqm4vOQmCPhDY=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=none smtp.mailfrom=mojatatu.com;
 dkim=pass header.d=mojatatu-com.20230601.gappssmtp.com;
 arc=none;
 dmarc=none
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
	by mail.toke.dk (Postfix) with ESMTPS id 90D277897AC
	for <cake@lists.bufferbloat.net>; Sun, 12 Oct 2025 17:51:32 +0200 (CEST)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-33082c95fd0so4230306a91.1
        for <cake@lists.bufferbloat.net>;
 Sun, 12 Oct 2025 08:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mojatatu-com.20230601.gappssmtp.com; s=20230601; t=1760284290;
 x=1760889090; darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nokm4b1fJ6STX0tx8BP4NI1/qKuZKnYqjVb6I3fubi0=;
        b=krSuvn34bCvpEdTkpvPyHh7VxqmhqqN7q/RnkiAtknMq1I6ISFk5Cqy+lhOkzYDlpD
         Qc/DnnSmTftZBFanLytWjA83Yq5vuov7bbKxk6/9e7FbyzoFASXMxblgeXfjIZyAoqwJ
         RivSN8f+v8KY0hC7yxsa3BIPJY0L0FE57ZjUgT0OyZk9LW3K2OHJL5EzXdUIqP40BHBQ
         MgxR7gzKmT3xf2BHGo2WXCIBVYnko6Q/j28T1g/p3ykSisXOXDE2fijggBc06HLrQgpH
         RVGF72t89r5ZK7Xv3ccwjT6s+dtLWhKOI3eq6tXe9DLnJtaDrRMCbt8YaQr92R44q5FY
         jfRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760284290; x=1760889090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nokm4b1fJ6STX0tx8BP4NI1/qKuZKnYqjVb6I3fubi0=;
        b=iLdWBWTXUbueU9o+S1f3xuT2M9mdbzt44WueYNk8Z6F3mCaLVD7GXyaM+RMCweYhCH
         Bo2dUDZYx553PknBajl56As8Q2DCLJ/LdMT9lN6kAXjPxHHCzC2ZSnef02UJUziOyFvQ
         iMX2G4qut8Lymerjq4Y10dpLFivFS0ekaM8ZbHDdgYkXRap2630aPKekTkrU+1KCDRbE
         y0Z5a2imSniM2FY6ierdQ62Mm1q0IK8fmv2aC1bBf51Ni8geK5VdU6Zqy1pyJhNM/HnD
         Pf7J04a+l4urZb/1bVkgasusGggDL5C0ne0FdGQuRWEwV2A26PDfLofxltLzOfmVqryr
         cTYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrHPwqW1hGNfULbtvSV5zkoRXrtnunOWeDXOtkWrqAmrKGCSXE6xTWSwVAEtpuSGcZxDZp@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwhxuZwc0ZaAjFfLnJ/fBK/8kwdM+UAtQMP0c8YEVDPsytEOHEz
	9mvZ6c2nvzPX6t9vfF5tdpLNVHb8xFVH/dxClfz1eN+2t9RvaCHJguryTRZc6tC5bvnZ1kEz73V
	5396d6WQGMokr1bFa2Zst8aeRYqZ8AFV3y0CiDDmZ
X-Gm-Gg: ASbGncuEkibF+DVU8L+YRg7wJ8fwqOeIMPqdZ3N7N4Uore3ShiSvKTLvIsj2cFWVNsD
	jw8KEkECysemqePfP1NlYGfixQO9asUaymOZo8W4LBMABw5DsEj02tVn3IZL+tSV6Z5IRRDLrh5
	R2r/rsDcAcZePvBwqj2+OX45alhSCqr3hKJmCVn2b+ezC84j+1SnTSemox67rh7xwaqnlsAKHZA
	5tGtEy21kmZVJ1FwsMjC41/3JcCZR0IgO9RJ94qCznggzTj7MJzWOtBt3FvdK1pjjmcIQwQN3hG
	zCvcrAlRq5Yw
X-Google-Smtp-Source: 
 AGHT+IGAV/J5KM7v7Wni7fp1uZ+pYkDMllI8brJJEiuS9kBasFE+HHPvZ/3J/t08yxso9/z7RLG2r6gEzhEHY3Z2CjI=
X-Received: by 2002:a17:902:e952:b0:262:4878:9dff with SMTP id
 d9443c01a7336-290273567a8mr226024845ad.12.1760284289952; Sun, 12 Oct 2025
 08:51:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
In-Reply-To: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Date: Sun, 12 Oct 2025 11:51:18 -0400
X-Gm-Features: AS18NWCpWejm6_EFikvhcTI51qpJk4bosEjS9lUx2F59P9nxfEvx151uLU4uwVE
Message-ID: 
 <CAM0EoMnkOoA1x0o4VQ35kS-Sa69QSCRwmQBtVx5hEF9qo6rv4A@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
	Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
	=?UTF-8?Q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
	cake@lists.bufferbloat.net, netdev@vger.kernel.org
Message-ID-Hash: ETX4MOQ5IAN7DTXE53SRBXW5ADZLOHYO
X-Message-ID-Hash: ETX4MOQ5IAN7DTXE53SRBXW5ADZLOHYO
X-MailFrom: jhs@mojatatu.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH RFC net-next 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAM0EoMnkOoA1x0o4VQ35kS-Sa69QSCRwmQBtVx5hEF9qo6rv4A@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMjQsIDIwMjUgYXQgODoxNuKAr0FNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gVGhpcyBzZXJpZXMgYWRkcyBhIG11bHRp
LXF1ZXVlIGF3YXJlIHZhcmlhbnQgb2YgdGhlIHNjaF9jYWtlIHNjaGVkdWxlciwNCj4gY2FsbGVk
ICdjYWtlX21xJy4gVXNpbmcgdGhpcyBtYWtlcyBpdCBwb3NzaWJsZSB0byBzY2FsZSB0aGUgcmF0
ZSBzaGFwZXINCj4gb2Ygc2NoX2Nha2UgYWNyb3NzIG11bHRpcGxlIENQVXMsIHdoaWxlIHN0aWxs
IGVuZm9yY2luZyBhIHNpbmdsZSBnbG9iYWwNCj4gcmF0ZSBvbiB0aGUgaW50ZXJmYWNlLg0KPg0K
PiBUaGUgYXBwcm9hY2ggdGFrZW4gaW4gdGhpcyBwYXRjaCBzZXJpZXMgaXMgdG8gaW1wbGVtZW50
IGEgc2VwYXJhdGUgcWRpc2MNCj4gY2FsbGVkICdjYWtlX21xJywgd2hpY2ggaXMgYmFzZWQgb24g
dGhlIGV4aXN0aW5nICdtcScgcWRpc2MsIGJ1dCBkaWZmZXJzDQo+IGluIGEgY291cGxlIG9mIGFz
cGVjdHM6DQo+DQo+IC0gSXQgd2lsbCBhbHdheXMgaW5zdGFsbCBhIGNha2UgaW5zdGFuY2Ugb24g
ZWFjaCBoYXJkd2FyZSBxdWV1ZSAoaW5zdGVhZA0KPiAgIG9mIHVzaW5nIHRoZSBkZWZhdWx0IHFk
aXNjIGZvciBlYWNoIHF1ZXVlIGxpa2UgJ21xJyBkb2VzKS4NCj4NCj4gLSBUaGUgY2FrZSBpbnN0
YW5jZXMgb24gdGhlIHF1ZXVlcyB3aWxsIHNoYXJlIHRoZWlyIGNvbmZpZ3VyYXRpb24sIHdoaWNo
DQo+ICAgY2FuIG9ubHkgYmUgbW9kaWZpZWQgdGhyb3VnaCB0aGUgcGFyZW50IGNha2VfbXEgaW5z
dGFuY2UuDQo+DQo+IERvaW5nIHRoaW5ncyB0aGlzIHdheSBkb2VzIGluY3VyIGEgYml0IG9mIGNv
ZGUgZHVwbGljYXRpb24gKHJldXNpbmcgdGhlDQo+ICdtcScgcWRpc2MgY29kZSksIGJ1dCBpdCBz
aW1wbGlmaWVzIHVzZXIgY29uZmlndXJhdGlvbiBieSBjZW50cmFsaXNpbmcNCj4gYWxsIGNvbmZp
Z3VyYXRpb24gdGhyb3VnaCB0aGUgY2FrZV9tcSBxZGlzYyAod2hpY2ggYWxzbyBzZXJ2ZXMgYXMg
YW4NCj4gb2J2aW91cyB3YXkgb2Ygb3B0aW5nIGludG8gdGhlIG11bHRpLXF1ZXVlIGF3YXJlIGJl
aGF2aW91cikuDQo+DQo+IFRoZSBjYWtlX21xIHFkaXNjIHRha2VzIGFsbCB0aGUgc2FtZSBjb25m
aWd1cmF0aW9uIHBhcmFtZXRlcnMgYXMgdGhlDQo+IGNha2UgcWRpc2MsIHBsdXMgb24gYWRkaXRp
b25hbCBwYXJhbWV0ZXIgdG8gY29udHJvbCB0aGUgc3luYyB0aW1lDQo+IGJldHdlZW4gdGhlIGlu
ZGl2aWR1YWwgY2FrZSBpbnN0YW5jZXMuDQo+DQo+IFdlIGFyZSBwb3N0aW5nIHRoaXMgc2VyaWVz
IHRvIHNvbGljaXQgZmVlZGJhY2sgb24gdGhlIEFQSSwgYXMgd2VsbCBhcw0KPiB3aWRlciB0ZXN0
aW5nIG9mIHRoZSBtdWx0aS1jb3JlIHNoYXBlci4NCj4NCj4gQW4gZWFybGllciB2ZXJzaW9uIG9m
IHRoaXMgd29yayB3YXMgcHJlc2VudGVkIGF0IHRoaXMgeWVhcidzIE5ldGRldmNvbmY6DQo+IGh0
dHBzOi8vbmV0ZGV2Y29uZi5pbmZvLzB4MTkvc2Vzc2lvbnMvdGFsay9tcS1jYWtlLXNjYWxpbmct
c29mdHdhcmUtcmF0ZS1saW1pdGluZy1hY3Jvc3MtY3B1LWNvcmVzLmh0bWwNCj4NCj4gVGhlIHBh
dGNoIHNlcmllcyBpcyBzdHJ1Y3R1cmVkIGFzIGZvbGxvd3M6DQo+DQo+IC0gUGF0Y2ggMSBmYWN0
b3JzIG91dCB0aGUgc2NoX2Nha2UgY29uZmlndXJhdGlvbiB2YXJpYWJsZXMgaW50byBhDQo+ICAg
c2VwYXJhdGUgc3RydWN0IHRoYXQgY2FuIGJlIHNoYXJlZCBiZXR3ZWVuIGluc3RhbmNlcy4NCj4N
Cj4gLSBQYXRjaCAyIGFkZHMgdGhlIGJhc2ljIGNha2VfbXEgcWRpc2MsIGJhc2VkIG9uIHRoZSBt
cSBjb2RlDQo+DQo+IC0gUGF0Y2ggMyBhZGRzIGNvbmZpZ3VyYXRpb24gc2hhcmluZyBhY3Jvc3Mg
dGhlIGNha2UgaW5zdGFuY2VzIGluc3RhbGxlZA0KPiAgIHVuZGVyIGNha2VfbXENCj4NCj4gLSBQ
YXRjaCA0IGFkZHMgdGhlIHNoYXJlZCBzaGFwZXIgc3RhdGUgdGhhdCBlbmFibGVzIHRoZSBtdWx0
aS1jb3JlIHJhdGUNCj4gICBzaGFwaW5nDQo+DQo+IEEgcGF0Y2ggdG8gaXByb3V0ZTIgdG8gbWFr
ZSBpdCBhd2FyZSBvZiB0aGUgY2FrZV9tcSBxZGlzYyBpcyBpbmNsdWRlZCBhcw0KPiBhIHNlcGFy
YXRlIHBhdGNoIGFzIHBhcnQgb2YgdGhpcyBzZXJpZXMuDQo+DQoNCkZvciB0aGlzIHZlcnNpb24g
b2YgdGhlIHBhdGNoc2V0DQpSZXZpZXdlZC1ieTogSmFtYWwgSGFkaSBTYWxpbSA8amhzQG1vamF0
YXR1LmNvbT4NCg0KUTogRG9lcyBFcmljJ3MgcmlkZGFuY2Ugb2YgYnVzeWxvY2sgaGVscD8NCg0K
Y2hlZXJzLA0KamFtYWwNCj4gLS0tDQo+IEpvbmFzIEvDtnBwZWxlciAoMSk6DQo+ICAgICAgIG5l
dC9zY2hlZDogc2NoX2Nha2U6IHNoYXJlIHNoYXBlciBzdGF0ZSBhY3Jvc3Mgc3ViLWluc3RhbmNl
cyBvZiBjYWtlX21xDQo+DQo+IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiAoMyk6DQo+ICAgICAg
IG5ldC9zY2hlZDogc2NoX2Nha2U6IEZhY3RvciBvdXQgY29uZmlnIHZhcmlhYmxlcyBpbnRvIHNl
cGFyYXRlIHN0cnVjdA0KPiAgICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtlOiBBZGQgY2FrZV9tcSBx
ZGlzYyBmb3IgdXNpbmcgY2FrZSBvbiBtcSBkZXZpY2VzDQo+ICAgICAgIG5ldC9zY2hlZDogc2No
X2Nha2U6IFNoYXJlIGNvbmZpZyBhY3Jvc3MgY2FrZV9tcSBzdWItcWRpc2NzDQo+DQo+ICBpbmNs
dWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmggfCAgIDIgKw0KPiAgbmV0L3NjaGVkL3NjaF9jYWtl
LmMgICAgICAgICAgIHwgNjM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDUxNCBpbnNlcnRpb25zKCspLCAxMjMgZGVsZXRpb25z
KC0pDQo+IC0tLQ0KPiBiYXNlLWNvbW1pdDogZGMxZGVhNzk2YjE5N2FiYTJjM2NhZTI1YmZlZjQ1
ZjRiM2FkNDZmZQ0KPiBjaGFuZ2UtaWQ6IDIwMjUwOTAyLW1xLWNha2Utc3ViLXFkaXNjLWNkZjBi
NTlkMmZlNQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dAo=
