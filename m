Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 66950C89D03
	for <lists+cake@lfdr.de>; Wed, 26 Nov 2025 13:43:25 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 1B2C29D0077;
	Wed, 26 Nov 2025 13:43:25 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=feAf0P3k
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764161005;
 b=HBwHEm4MjByqcoEeDzOkXIphE6temR1FfgbG4LD07DWnNIrC1SUp9WZ8zMj7GUNtzla4y
 w6HGadZ7tyHQn4Pte929pW3DecZuw8AqkYvh/SHAVM3cqwmW3ptIBwLpCQrgaf5pUOEzKpD
 IidVeTV5OfV3QjbB5aGIy/URzpE6FNQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764161005; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=E/9JslyO44wCt7SCJhZPwZLs7ijMzRrTHcjJSFt7tsk=;
 b=NlzKrMvewqK3XlGpCpfbvamCyXRr2ho1sKYQj4Rku2vEJG84UQScwNOR35c6f2dIKl/2Q
 ssbZjXG8KTXobK9ppgATVYRTae6L2UoOjz18Z7GO2VU3ifkftqDEM2eJ0GQv4K6BKC+cZpp
 xN07HFbPXVtBeCYTzTYldIE1w4kyBP0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
	by mail.toke.dk (Postfix) with ESMTPS id 55CF09CC045
	for <cake@lists.bufferbloat.net>; Tue, 25 Nov 2025 23:04:14 +0100 (CET)
Received: by mail-qk1-x732.google.com with SMTP id
 af79cd13be357-8b22b1d3e7fso609843785a.3
        for <cake@lists.bufferbloat.net>;
 Tue, 25 Nov 2025 14:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764108253; x=1764713053;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFV5BEQO0h6WteiqsW0VzyRefRg4w03+xa45BOA9TX0=;
        b=feAf0P3k3bJtsj5Fdp8l46L7xfQW8Tn8d8iJR6ulRjDkMFa3ebBEcIZHg3Y1eXbc/5
         B5ATVxbAsIFFjZvcSj6Yk5o8rJYYNgwpyvr720F8+HVFUA0nacXzBKur4wtEQjZMyGFt
         F1nDYTgtZ6xX5E05XR2ynIzdt65sjlgyTbjTZDzUZ7OUhiMB7zB6zjRkuq7h5Mky7ycU
         aFtW5SAkT9Zl+PbQ8Kw+mY6HVSGEVJsPgNGb8kTEGxtDdLyk9FyXvE+45znbo33sJGlH
         hDeGsr3XJZRPcF/4p/uhOku4lKrGcs6VrNyFtIIzPd6JOOay8T/0MQKO6T1tK8faEhRw
         vN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764108253; x=1764713053;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NFV5BEQO0h6WteiqsW0VzyRefRg4w03+xa45BOA9TX0=;
        b=CDquKwRQ2z9GA5kcUOg7gMspkcIUY+Zgve1lXofOB39pkKb8ysYzXQy/uxfRtQkWuj
         FuEidGtM24MZ9eF79IxYYTjjNUXdGFQq8VeSgVeEa0PvTf72c4RiMndW8LF5s5ykc8/e
         ZgOEPzZuERM0zbbfI/E4guzLbGWvVKQOamOoBqvPg+YXs36K8+aQvS3MfEKq0Mtyjl6s
         XRWSCmsM+D3zOrBmP0QeMlRUwVg9pUnx+Gw8osShHnbPNMizK/HlrtluE45OLXYjnFtR
         yilI/iZ5hGf9htzX0ikT/r8MpavqSeaOg8n6wkITM5UsNu+F1kAvvF/o6jn+BOMS7cr0
         5rOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXbltLXhl9brdmRA8P/8F4K6Cj/gk68A5srxy9tlOMXykqvqhxI1hHqoOnnGGNgIDJbW2j1@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzh2fQ/ieuJoap/wu3lsjF5cNxPBgaU6YQXDBV8AecFGyjxY1CO
	zU2780p14k92UXfbO3l/+Lg67HpnhMhtQl3OBRfGf9NIEfZqfWNZpcKg4GY1EeA8E0qqF0H4bge
	VOe/GEP35tPgg7KlInrCaQ/1IYpmtwzGTLySFSSh0
X-Gm-Gg: ASbGnctmc5DWoEWAGUTizS+v09xFXidZNN3d6hVtBv6kmr5gA2rNKZOXtNuDzmln9lA
	CiFM92uIF6NVwyyBGIwhqIe3cMZG8MtjPPi2gl5mmoHYInNKRUOFGL5Ks/U9UuE/vHNNnDSYN4K
	+gRB156p8LfdHL/7zl1+BsE+jPTQzQSFgrsvktJmddMQjEyJ3dtMpD1lwdFUZHH7Lk+Zu0rxuab
	wAdbr7aWLA+55c6eAyH1K0p18tWkb7vle9R5auL0riTMfIwDuaQedFQ+fK8IfkFir+JK07Q
X-Google-Smtp-Source: 
 AGHT+IESzt7BrjzYz4e8kdr8+LMVfFjZ8Q6Xq9xG+iiyoBcY83fq4TrwHsXgnDYyI7frxtco27d+yOIJ0IDn8jEzS38=
X-Received: by 2002:a05:620a:4709:b0:8b2:5fa9:61 with SMTP id
 af79cd13be357-8b33d267d7bmr2300085085a.25.1764108252165; Tue, 25 Nov 2025
 14:04:12 -0800 (PST)
MIME-Version: 1.0
References: <20251121232735.1020046-1-xmei5@asu.edu> <87ms4bn1u9.fsf@toke.dk>
In-Reply-To: <87ms4bn1u9.fsf@toke.dk>
From: Xiang Mei <xmei5@asu.edu>
Date: Tue, 25 Nov 2025 15:04:01 -0700
X-Gm-Features: AWmQ_bkZafX0FyomYdSL-ky-6_gsr8v5aKzzKvrUSz26Aqb26T7pNrCY8b1XZ7Q
Message-ID: 
 <CAPpSM+SrDasWhhwPZUrTTov7q7XxSkrc9+mHc-H+TvJB_iRMaQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Cc: security@kernel.org, netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: Q2LMIMURPQCYW5PZ532NG6RFF4DLTXCR
X-Message-ID-Hash: Q2LMIMURPQCYW5PZ532NG6RFF4DLTXCR
X-Mailman-Approved-At: Wed, 26 Nov 2025 13:43:24 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v5] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAPpSM+SrDasWhhwPZUrTTov7q7XxSkrc9+mHc-H+TvJB_iRMaQ@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIHNvIG11Y2ggZm9yIHJldmlld2luZyBhbmQgcG9pbnRpbmcgb3V0IG15IG1pc3Rha2Ug
b24NCmBkcm9wX292ZXJsaW1pdC5gIE5ldyBwYXRjaGVzIGFyZSBzZW50Lg0KDQpPbiBNb24sIE5v
diAyNCwgMjAyNSBhdCAzOjQ44oCvQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRv
a2UuZGs+IHdyb3RlOg0KPg0KPiBYaWFuZyBNZWkgPHhtZWk1QGFzdS5lZHU+IHdyaXRlczoNCj4N
Cj4gPiBJbiBjYWtlX2Ryb3AoKSwgcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xvZygpIGlzIHVzZWQg
dG8gdXBkYXRlIHRoZSBxbGVuDQo+ID4gYW5kIGJhY2tsb2cgb2YgdGhlIHFkaXNjIGhpZXJhcmNo
eS4gSXRzIGNhbGxlciwgY2FrZV9lbnF1ZXVlKCksIGFzc3VtZXMNCj4gPiB0aGF0IHRoZSBwYXJl
bnQgcWRpc2Mgd2lsbCBlbnF1ZXVlIHRoZSBjdXJyZW50IHBhY2tldC4gSG93ZXZlciwgdGhpcw0K
PiA+IGFzc3VtcHRpb24gYnJlYWtzIHdoZW4gY2FrZV9lbnF1ZXVlKCkgcmV0dXJucyBORVRfWE1J
VF9DTjogdGhlIHBhcmVudA0KPiA+IHFkaXNjIHN0b3BzIGVucXVldWluZyBjdXJyZW50IHBhY2tl
dCwgbGVhdmluZyB0aGUgdHJlZSBxbGVuL2JhY2tsb2cNCj4gPiBhY2NvdW50aW5nIGluY29uc2lz
dGVudC4gVGhpcyBtaXNtYXRjaCBjYW4gbGVhZCB0byBhIE5VTEwgZGVyZWZlcmVuY2UNCj4gPiAo
ZS5nLiwgd2hlbiB0aGUgcGFyZW50IFFkaXNjIGlzIHFmcV9xZGlzYykuDQo+ID4NCj4gPiBUaGlz
IHBhdGNoIGNvbXB1dGVzIHRoZSBxbGVuL2JhY2tsb2cgZGVsdGEgaW4gYSBtb3JlIHJvYnVzdCB3
YXkgYnkNCj4gPiBvYnNlcnZpbmcgdGhlIGRpZmZlcmVuY2UgYmVmb3JlIGFuZCBhZnRlciB0aGUg
c2VyaWVzIG9mIGNha2VfZHJvcCgpDQo+ID4gY2FsbHMsIGFuZCB0aGVuIGNvbXBlbnNhdGVzIHRo
ZSBxZGlzYyB0cmVlIGFjY291bnRpbmcgaWYgY2FrZV9lbnF1ZXVlKCkNCj4gPiByZXR1cm5zIE5F
VF9YTUlUX0NOLg0KPiA+DQo+ID4gVG8gZW5zdXJlIGNvcnJlY3QgY29tcGVuc2F0aW9uIHdoZW4g
QUNLIHRoaW5uaW5nIGlzIGVuYWJsZWQsIGEgbmV3DQo+ID4gdmFyaWFibGUgaXMgaW50cm9kdWNl
ZCB0byBrZWVwIHFsZW4gdW5jaGFuZ2VkLg0KPiA+DQo+ID4gRml4ZXM6IDE1ZGU3MWQwNmE0MCAo
Im5ldC9zY2hlZDogTWFrZSBjYWtlX2VucXVldWUgcmV0dXJuIE5FVF9YTUlUX0NOIHdoZW4gcGFz
dCBidWZmZXJfbGltaXQiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW5nIE1laSA8eG1laTVAYXN1
LmVkdT4NCj4gPiAtLS0NCj4gPiB2MjogYWRkIG1pc3NpbmcgY2MNCj4gPiB2MzogbW92ZSBxZGlz
Y190cmVlX3JlZHVjZV9iYWNrbG9nIG91dCBvZiBjYWtlX2Ryb3ANCj4gPiB2NDogcmVtb3ZlIHJl
ZHVuZGFudCB2YXJpYWJsZSBhbmQgaGFuZGxlIGFjayBicmFuY2ggY29ycmVjdGx5DQo+ID4gdjU6
IGFkZCB0aGUgUG9DIGFzIGEgdGVzdCBjYXNlDQo+DQo+IFBsZWFzZSBzcGxpdCB0aGUgdGVzdCBj
YXNlIGludG8gaXRzIG93biBwYXRjaCBhbmQgc2VuZCBib3RoIGFzIGEgc2VyaWVzLg0KPg0KPiBP
dGhlcndpc2UsIHRoZSBjaGFuZ2VzIExHVE0gYXBhcnQgZnJvbSB0aGUgZmV3IG5pdHMgYmVsb3c6
DQo+DQo+ID4gLS0tDQo+ID4gIG5ldC9zY2hlZC9zY2hfY2FrZS5jICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IDUyICsrKysrKysrKysrLS0tLS0tLS0NCj4gPiAgLi4uL3RjLXRlc3RpbmcvdGMt
dGVzdHMvcWRpc2NzL2Nha2UuanNvbiAgICAgIHwgMjggKysrKysrKysrKw0KPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMNCj4g
PiBpbmRleCAzMmJhY2ZjMzE0YzIuLmNmNGQ2NDU0Y2E5YyAxMDA2NDQNCj4gPiAtLS0gYS9uZXQv
c2NoZWQvc2NoX2Nha2UuYw0KPiA+ICsrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jDQo+ID4gQEAg
LTE1OTcsNyArMTU5Nyw2IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgY2FrZV9kcm9wKHN0cnVjdCBR
ZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqKnRvX2ZyZWUpDQo+ID4NCj4gPiAgICAgICBxZGlz
Y19kcm9wX3JlYXNvbihza2IsIHNjaCwgdG9fZnJlZSwgU0tCX0RST1BfUkVBU09OX1FESVNDX09W
RVJMSU1JVCk7DQo+ID4gICAgICAgc2NoLT5xLnFsZW4tLTsNCj4gPiAtICAgICBxZGlzY190cmVl
X3JlZHVjZV9iYWNrbG9nKHNjaCwgMSwgbGVuKTsNCj4gPg0KPiA+ICAgICAgIGNha2VfaGVhcGlm
eShxLCAwKTsNCj4gPg0KPiA+IEBAIC0xNzUwLDcgKzE3NDksOCBAQCBzdGF0aWMgczMyIGNha2Vf
ZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgUWRpc2MgKnNjaCwNCj4gPiAgICAg
ICBrdGltZV90IG5vdyA9IGt0aW1lX2dldCgpOw0KPiA+ICAgICAgIHN0cnVjdCBjYWtlX3Rpbl9k
YXRhICpiOw0KPiA+ICAgICAgIHN0cnVjdCBjYWtlX2Zsb3cgKmZsb3c7DQo+ID4gLSAgICAgdTMy
IGlkeCwgdGluOw0KPiA+ICsgICAgIHUzMiBpZHgsIHRpbiwgcHJldl9xbGVuLCBwcmV2X2JhY2ts
b2csIGRyb3BfaWQ7DQo+ID4gKyAgICAgYm9vbCBzYW1lX2Zsb3cgPSBmYWxzZTsNCj4NCj4gUGxl
YXNlIG1ha2Ugc3VyZSB0byBtYWludGFpbiB0aGUgcmV2ZXJzZSB4LW1hcyB0cmVlIG9yZGVyaW5n
IG9mIHRoZQ0KPiB2YXJpYWJsZSBkZWNsYXJhdGlvbnMuDQo+DQo+ID4NCj4gPiAgICAgICAvKiBj
aG9vc2UgZmxvdyB0byBpbnNlcnQgaW50byAqLw0KPiA+ICAgICAgIGlkeCA9IGNha2VfY2xhc3Np
Znkoc2NoLCAmYiwgc2tiLCBxLT5mbG93X21vZGUsICZyZXQpOw0KPiA+IEBAIC0xODIzLDYgKzE4
MjMsOCBAQCBzdGF0aWMgczMyIGNha2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1
Y3QgUWRpc2MgKnNjaCwNCj4gPiAgICAgICAgICAgICAgIGNvbnN1bWVfc2tiKHNrYik7DQo+ID4g
ICAgICAgfSBlbHNlIHsNCj4gPiAgICAgICAgICAgICAgIC8qIG5vdCBzcGxpdHRpbmcgKi8NCj4g
PiArICAgICAgICAgICAgIGludCBhY2tfcGt0X2xlbiA9IDA7DQo+ID4gKw0KPiA+ICAgICAgICAg
ICAgICAgY29iYWx0X3NldF9lbnF1ZXVlX3RpbWUoc2tiLCBub3cpOw0KPiA+ICAgICAgICAgICAg
ICAgZ2V0X2NvYmFsdF9jYihza2IpLT5hZGp1c3RlZF9sZW4gPSBjYWtlX292ZXJoZWFkKHEsIHNr
Yik7DQo+ID4gICAgICAgICAgICAgICBmbG93X3F1ZXVlX2FkZChmbG93LCBza2IpOw0KPiA+IEBA
IC0xODM0LDcgKzE4MzYsNyBAQCBzdGF0aWMgczMyIGNha2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiLCBzdHJ1Y3QgUWRpc2MgKnNjaCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgYi0+
YWNrX2Ryb3BzKys7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHNjaC0+cXN0YXRzLmRyb3Bz
Kys7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgIGItPmJ5dGVzICs9IHFkaXNjX3BrdF9sZW4o
YWNrKTsNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgbGVuIC09IHFkaXNjX3BrdF9sZW4oYWNr
KTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgYWNrX3BrdF9sZW4gPSBxZGlzY19wa3RfbGVu
KGFjayk7DQo+DQo+IFRoZXJlJ3MgYSBxZGlzY190cmVlX3JlZHVjZV9iYWNrbG9nKCkgdGhhdCB1
c2VzIHFkaXNjX3BrdF9sZW4oYWNrKSBqdXN0DQo+IGJlbG93IHRoaXM7IGxldCdzIGFsc28gY2hh
bmdlIHRoYXQgdG8gdXNlIGFja19wa3RfbGVuIHdoaWxlIHdlJ3JlIGF0IGl0Lg0KPg0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICBxLT5idWZmZXJfdXNlZCArPSBza2ItPnRydWVzaXplIC0gYWNr
LT50cnVlc2l6ZTsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgaWYgKHEtPnJhdGVfZmxhZ3Mg
JiBDQUtFX0ZMQUdfSU5HUkVTUykNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
YWtlX2FkdmFuY2Vfc2hhcGVyKHEsIGIsIGFjaywgbm93LCB0cnVlKTsNCj4gPiBAQCAtMTg0OCwx
MSArMTg1MCwxMSBAQCBzdGF0aWMgczMyIGNha2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LCBzdHJ1Y3QgUWRpc2MgKnNjaCwNCj4gPg0KPiA+ICAgICAgICAgICAgICAgLyogc3RhdHMgKi8N
Cj4gPiAgICAgICAgICAgICAgIGItPnBhY2tldHMrKzsNCj4gPiAtICAgICAgICAgICAgIGItPmJ5
dGVzICAgICAgICAgICAgKz0gbGVuOw0KPiA+IC0gICAgICAgICAgICAgYi0+YmFja2xvZ3NbaWR4
XSAgICArPSBsZW47DQo+ID4gLSAgICAgICAgICAgICBiLT50aW5fYmFja2xvZyAgICAgICs9IGxl
bjsNCj4gPiAtICAgICAgICAgICAgIHNjaC0+cXN0YXRzLmJhY2tsb2cgKz0gbGVuOw0KPiA+IC0g
ICAgICAgICAgICAgcS0+YXZnX3dpbmRvd19ieXRlcyArPSBsZW47DQo+ID4gKyAgICAgICAgICAg
ICBiLT5ieXRlcyAgICAgICAgICAgICs9IGxlbiAtIGFja19wa3RfbGVuOw0KPiA+ICsgICAgICAg
ICAgICAgYi0+YmFja2xvZ3NbaWR4XSAgICArPSBsZW4gLSBhY2tfcGt0X2xlbjsNCj4gPiArICAg
ICAgICAgICAgIGItPnRpbl9iYWNrbG9nICAgICAgKz0gbGVuIC0gYWNrX3BrdF9sZW47DQo+ID4g
KyAgICAgICAgICAgICBzY2gtPnFzdGF0cy5iYWNrbG9nICs9IGxlbiAtIGFja19wa3RfbGVuOw0K
PiA+ICsgICAgICAgICAgICAgcS0+YXZnX3dpbmRvd19ieXRlcyArPSBsZW4gLSBhY2tfcGt0X2xl
bjsNCj4gPiAgICAgICB9DQo+ID4NCj4gPiAgICAgICBpZiAocS0+b3ZlcmZsb3dfdGltZW91dCkN
Cj4gPiBAQCAtMTkyNywyNCArMTkyOSwzMCBAQCBzdGF0aWMgczMyIGNha2VfZW5xdWV1ZShzdHJ1
Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgUWRpc2MgKnNjaCwNCj4gPiAgICAgICBpZiAocS0+YnVm
ZmVyX3VzZWQgPiBxLT5idWZmZXJfbWF4X3VzZWQpDQo+ID4gICAgICAgICAgICAgICBxLT5idWZm
ZXJfbWF4X3VzZWQgPSBxLT5idWZmZXJfdXNlZDsNCj4gPg0KPiA+IC0gICAgIGlmIChxLT5idWZm
ZXJfdXNlZCA+IHEtPmJ1ZmZlcl9saW1pdCkgew0KPiA+IC0gICAgICAgICAgICAgYm9vbCBzYW1l
X2Zsb3cgPSBmYWxzZTsNCj4gPiAtICAgICAgICAgICAgIHUzMiBkcm9wcGVkID0gMDsNCj4gPiAt
ICAgICAgICAgICAgIHUzMiBkcm9wX2lkOw0KPiA+ICsgICAgIGlmIChxLT5idWZmZXJfdXNlZCA8
PSBxLT5idWZmZXJfbGltaXQpDQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gTkVUX1hNSVRfU1VD
Q0VTUzsNCj4gPg0KPiA+IC0gICAgICAgICAgICAgd2hpbGUgKHEtPmJ1ZmZlcl91c2VkID4gcS0+
YnVmZmVyX2xpbWl0KSB7DQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGRyb3BwZWQrKzsNCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgZHJvcF9pZCA9IGNha2VfZHJvcChzY2gsIHRvX2ZyZWUp
Ow0KPiA+ICsgICAgIHByZXZfcWxlbiA9IHNjaC0+cS5xbGVuOw0KPiA+ICsgICAgIHByZXZfYmFj
a2xvZyA9IHNjaC0+cXN0YXRzLmJhY2tsb2c7DQo+ID4NCj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgaWYgKChkcm9wX2lkID4+IDE2KSA9PSB0aW4gJiYNCj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgIChkcm9wX2lkICYgMHhGRkZGKSA9PSBpZHgpDQo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc2FtZV9mbG93ID0gdHJ1ZTsNCj4gPiAtICAgICAgICAgICAgIH0NCj4gPiAt
ICAgICAgICAgICAgIGItPmRyb3Bfb3ZlcmxpbWl0ICs9IGRyb3BwZWQ7DQo+ID4gKyAgICAgd2hp
bGUgKHEtPmJ1ZmZlcl91c2VkID4gcS0+YnVmZmVyX2xpbWl0KSB7DQo+ID4gKyAgICAgICAgICAg
ICBkcm9wX2lkID0gY2FrZV9kcm9wKHNjaCwgdG9fZnJlZSk7DQo+ID4gKyAgICAgICAgICAgICBp
ZiAoKGRyb3BfaWQgPj4gMTYpID09IHRpbiAmJg0KPiA+ICsgICAgICAgICAgICAgICAgIChkcm9w
X2lkICYgMHhGRkZGKSA9PSBpZHgpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHNhbWVfZmxv
dyA9IHRydWU7DQo+ID4gKyAgICAgfQ0KPiA+ICsNCj4gPiArICAgICAvKiBDb21wdXRlIHRoZSBk
cm9wcHBlZCBxbGVuIGFuZCBwa3QgbGVuZ3RoICovDQo+ID4gKyAgICAgcHJldl9xbGVuIC09IHNj
aC0+cS5xbGVuOw0KPiA+ICsgICAgIHByZXZfYmFja2xvZyAtPSBzY2gtPnFzdGF0cy5iYWNrbG9n
Ow0KPiA+ICsgICAgIGItPmRyb3Bfb3ZlcmxpbWl0ICs9IHByZXZfYmFja2xvZzsNCj4NCj4gZHJv
cF9vdmVybGltaXQgd2FzIGFjY291bnRlZCBpbiBwYWNrZXRzIGJlZm9yZSwgc28gdGhpcyBzaG91
bGQgYmUgKz0gcHJldl9xbGVuLg0KPg0KPiAtVG9rZQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
