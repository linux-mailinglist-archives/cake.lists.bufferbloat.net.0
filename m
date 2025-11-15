Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E8011C640DF
	for <lists+cake@lfdr.de>; Mon, 17 Nov 2025 13:30:33 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 96AB69797EB;
	Mon, 17 Nov 2025 13:30:33 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=pM2iq2uQ
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763382633;
 b=XGVYrfTVcxgP78pdaO9W1+VELpvhD1AgkosIsuVvNzitRZfwgQtjThD4f4vtz7uEp82xr
 Kbv6DzBYDp7TorXWuJaWNsd6EpFzZhvQ8wxzO99y5xfxjJ1wrxZf9ZWqEhrAslkGMWZE+fu
 jNSQNcYAfBWt4Ta/ulWQIw2gEiZ+TPY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763382633; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=LHRummRF8/ih+O/WG57wIHLXCWtKzDvd58oiwnWz3bY=;
 b=XHAVKKmPIKLlohEUL3ewFkHBl4hHnZj2aZ9IT0sx5+BWkwJVEhjVuUCVOA1AnVJ8VTqso
 2N1HNnBtysjJZyGpNAeJHP/DrgYuInvsiF8ieAycWGFnHPK5TGxGzvUgvZyZFzRCOYd0BsI
 lcS2N6BC5h2zp0phRrMvIXSw3xaFZSU=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
	by mail.toke.dk (Postfix) with ESMTPS id 11A1F962731
	for <cake@lists.bufferbloat.net>; Sat, 15 Nov 2025 11:23:49 +0100 (CET)
Received: by mail-pj1-x1029.google.com with SMTP id
 98e67ed59e1d1-341988c720aso2412374a91.3
        for <cake@lists.bufferbloat.net>;
 Sat, 15 Nov 2025 02:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763202227; x=1763807027;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fYOc0IUNPX85RhlM2z4VxJh51pDy+UaQAYdPvoblagA=;
        b=pM2iq2uQEV3u7dqbwc2U5iAWnmFNab1mqIO33OcxOmtWpG8MSVAH/kG4GO2YlBgDGD
         HYb2wDnWOC4rhk2axIkCflQ0+PCJmOrayTtChuU7wku64mjtvOZwBDku5j93lXJdSJqC
         zHmhtl/x/1dfu/jqGN8bV9k3dRgx4cFdYZwkhZUs4isZts0+1vezMDBC2bywp3ocF7I8
         uKBAJPe2Lrtr6RThpcauKft5k6X+j5ByG/AH16XkQzBuBA6r9nltRntUF8uAITckFXu0
         AVegSYuhoOi/sEP52+lUCeT7jr2j3fBsKJze08yJZYrgBRR1VatvHWAghWa7sdYcpovY
         dyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763202227; x=1763807027;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fYOc0IUNPX85RhlM2z4VxJh51pDy+UaQAYdPvoblagA=;
        b=MuIyQD9wkHHHLbKkstiSV4FxOuujZ2D87FRmsLL+DJhxQxEairf73hqPl9if3R6mbE
         64x95xvE5ghEpIPOCOfynUiH5HHZDZRUzaksRT+TXeXIaAsFjS8YWVsdwNyzKI033lLX
         UIuBu3EoUHv+nF/rZ6RRvLgnVobJlY0anTqic8YHUWHs41Y8eBDzKpaNPZiM8K9CJBSc
         w2N00pCQ6UVSY1+E4L9PdlMNrNiqOfCG+ifXg8PW3vkIc7LZBpnSx3wwQHiE/cl4ScPM
         idM6MU6aDEqJ7W5lQl1XdlWmIfs1VJariZhISTkt4EjScMgOf2a4/RZbpx6oGqL/Ri0o
         cI+Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUXPNtfHpSNaKzATr49/waRm/IWQiwEBSaWBcH2mcOoE8BDGLFtc1H7pbo02RfELxRXsBbY@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyHtiLYRpckbqRBa6ZdoziivnIMSJzr9HnwNuYFonX3jugvthzt
	T97FN3SrRvti0CguAUX2O0lLd3SW9UDEgpYB9BxB2bYNE/gP/jRAGollThoBLlOurQ==
X-Gm-Gg: ASbGncuMc2eVgWPo/k1UzXe9IewZhMQrY9m7/DUIuPpePKD08WCs2F1m842FgH/e4hK
	JmfpmSd6bYzg5yLxHbO5Z+WV44tN03pHE5Vfq4SF84tRXYYJ0n8IllbtBDcVS+lPelM11RG2y4T
	vHAo81q8rV71irnIBvYptN5RFc7vzd6PQKZ+SdiKe/Gn8VluydnudXcJVAvq1jsk1BvFE/+Piqr
	V+WMzFsuQFXR/7OysjdrOzNnuE04vxnCxJ8MZzvIZqottYe+3noCKLec+nEzUb70zmuPncGWOWM
	1+vWo9hiKRUDUKco/qsODB44B/sddEmlSAKPy5Ge0sWCPDztaxdiIhrMZz1DZeh98WD3/u7mw+d
	fb7/LAjPb6QY8QdpCLt1J/x/JcwMakHMG+8woFH3K5llEDr1mHeyHiZ3CzNRN9PVsUZ6H8brYZR
	yO8h4t
X-Google-Smtp-Source: 
 AGHT+IHrBU43wvC6gMDgSE5qM+edUPrS5jQNdJRECY2EPUfuN1+iqG0qBZBMUYHmlhgLOuBycVT5uA==
X-Received: by 2002:a05:7022:62a9:b0:119:e569:fbb1 with SMTP id
 a92af1059eb24-11b411ff1b8mr3401108c88.32.1763202227360;
        Sat, 15 Nov 2025 02:23:47 -0800 (PST)
Received: from p1 ([2600:8800:1e80:41a0:1665:bc8c:7762:7ff2])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11b060885eesm20398145c88.1.2025.11.15.02.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 02:23:47 -0800 (PST)
Date: Sat, 15 Nov 2025 03:23:45 -0700
From: Xiang Mei <xmei5@asu.edu>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Cc: security@kernel.org, netdev@vger.kernel.org, cake@lists.bufferbloat.net,
	bestswngs@gmail.com
Message-ID: <aRhUsbR6DT1F0bqc@p1>
References: <20251113035303.51165-1-xmei5@asu.edu>
 <aRVZJmTAWyrnXpCJ@p1>
 <87346ijbs9.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87346ijbs9.fsf@toke.dk>
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: MTEPUUYM3T3MQ4WUNYQ5R2FGGDDZJTTX
X-Message-ID-Hash: MTEPUUYM3T3MQ4WUNYQ5R2FGGDDZJTTX
X-Mailman-Approved-At: Mon, 17 Nov 2025 13:30:32 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v3] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/aRhUsbR6DT1F0bqc@p1/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBOb3YgMTMsIDIwMjUgYXQgMDI6MzU6MThQTSArMDEwMCwgVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIHdyb3RlOg0KPiBYaWFuZyBNZWkgPHhtZWk1QGFzdS5lZHU+IHdyaXRlczoNCj4g
DQo+ID4gVGhlcmUgaXMgc3RpbGwgb25lIHByb2JsZW0gSSBhbSBub3QgdmVyeSBzdXJlIHNpbmNl
IEkgYW0gbm90IHZlcnkgDQo+ID4gZXhwZXJpZW5jZWQgd2l0aCBjYWtlIGFuZCBnc28uIEl0J3Mg
YWJvdXQgdGhlIGdzbyBicmFuY2ggWzFdLiBUaGUgc2xlbiANCj4gPiBpcyB0aGUgbGVudGggYWRk
ZWQgdG8gdGhlIGNha2Ugc2NoIGFuZCB0aGF0IGJyYW5jaCB1c2VzIA0KPiA+IGBxZGlzY190cmVl
X3JlZHVjZV9iYWNrbG9nKHNjaCwgMS1udW1zZWdzLCBsZW4tc2xlbik7YCB0byBpbmZvcm0gdGhl
IA0KPiA+IHBhcmVudCBzY2hlZC4gSG93ZXZlciwgd2hlbiB3ZSBkcm9wIHRoZSBwYWNrZXQsIGl0
IGNvdWxkIGJlIHByb2JtYXRpYyANCj4gPiBzaW5jZSB3ZSBzaG91bGQgcmVkdWNlIHNsZW4gaW5z
dGVhZCBvZiBsZW4uIElzIHRoaXMgYSBwb3RlbnRpYWwNCj4gPiBwcm9ibGVtPw0KPiANCj4gSG1t
LCBubyBJIHRoaW5rIGl0J3MgZmluZT8gVGhlIHFkaXNjX3RyZWVfcmVkdWNlX2JhY2tsb2coc2No
LCAxLW51bXNlZ3MsDQo+IGxlbi1zbGVuKSAqaW5jcmVhc2VzKiB0aGUgYmFja2xvZyB3aXRoIHRo
ZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlDQo+IG9yaWdpbmFsIGxlbmd0aCBhbmQgdGhlIG51bWJl
ciBvZiBuZXcgc2VnbWVudHMuIEFuZCB0aGVuIHdlICpkZWNyZWFzZSoNCj4gdGhlIGJhY2tsb2cg
d2l0aCB0aGUgbnVtYmVyIG9mIGJ5dGVzIHdlIGRyb3BwZWQuDQo+IA0KPiBUaGUgY29tcGVuc2F0
aW9uIHdlJ3JlIGRvaW5nIGlzIGZvciB0aGUgYmFja2xvZyB1cGRhdGUgb2YgdGhlIHBhcmVudCwN
Cj4gd2hpY2ggaXMgc3RpbGwgdXNpbmcgdGhlIG9yaWdpbmFsIHBhY2tldCBsZW5ndGggcmVnYXJk
bGVzcyBvZiBhbnkNCj4gc3BsaXR0aW5nLCBzbyB0aGF0IGRvZXNuJ3QgY2hhbmdlIHRoZSBjb21w
ZW5zYXRpb24gdmFsdWUuDQo+IA0KPiAtVG9rZQ0KDQpJIHN0aWxsIHRoaW5rIGN1cnJlbnQgbWV0
aG9kIHRvIHJlZHVjZSBiYWNrbG9nIG1heSBiZSBwcm9ibGVtYXRpYzoNCldoYXQgeW91IHNhaWQg
aXMgc3RhdGVkIGZvciB0aGUgR1NPIGJyYW5jaCB3aGVuIGNha2VfcXVldWUgcmV0dXJucw0KTkVU
X1hNSVRfU1VDQ0VTUywgYnV0IGl0IG1heSBsZWFkIHRvIGlzc3VlcyB3aGVuIGl0IHJldHVybnMg
TkVUX1hNSVRfQ04uDQpGb3IgdGhlIG5vcm1hbCBjYXNlIHdoZXJlIG5vIGRyb3BwaW5nIGhhcHBl
bnMsIHRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uDQppcyBjb3JyZWN0LiBXZSBjYW4gc2VlIGhv
dyBxbGVuIGFuZCBiYWNrbG9nIGNoYW5nZSBhcyBmb2xsb3dzOg0KDQpiYWNrbG9nOg0KCS0obGVu
IC0gc2xlbikgIFJlYXNvbjogcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xvZyhzY2gsIDEgLSBudW1z
ZWdzLCBsZW4gLSBzbGVuKTsNCgkrbGVuICAgICAgICAgICBSZWFzb246IHBhcmVudCBlbnF1ZXVl
KQ0KCVRvdGFsOiBzbGVuDQpxbGVuOg0KCS0oMSAtIG51bXNlZ3MpIFJlYXNvbjogcWRpc2NfdHJl
ZV9yZWR1Y2VfYmFja2xvZyhzY2gsIDEgLSBudW1zZWdzLCBsZW4gLSBzbGVuKTsNCgkrMSAJICAg
ICAgIFJlYXNvbjogcGFyZW50IGVucXVldWUNCglUb3RhbDogbnVtc2Vncw0KDQpUaGlzIG1ha2Vz
IHNlbnNlIGJlY2F1c2Ugd2Ugc3BsaXQgb25lIHBhY2tldCBpbnRvIG51bXNlZ3MgcGFja2V0cyBv
ZiB0b3RhbA0KbGVuZ3RoIHNsZW4gYW5kIGVucXVldWUgdGhlbSBhbGwuIFdoZW4gYSBkcm9wIGhh
cHBlbnMsIHdlIG11c3QgZml4IGJvdGggDQpxbGVuIGFuZCBiYWNrbG9nLg0KDQpJbiB0aGUgbm90
IHBhdGNoZWQgY29kZSwgY2FrZV9kcm9wKCkgY2FsbHMgcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xv
ZygpIGZvcg0KZHJvcHBlZCBwYWNrZXRzLiBUaGlzIHdvcmtzIGluIG1vc3QgY2FzZXMgYnV0IGln
bm9yZXMgdGhlIHNjZW5hcmlvIHdoZXJlIA0Kd2UgZHJvcCAocGFydHMgb2YpIHRoZSBpbmNvbWlu
ZyBwYWNrZXQsIG1lYW5pbmcgdGhlIGV4cGVjdGVkOg0KDQpgYGANCmJhY2tsb2cgKz0gbGVuDQpx
bGVuICs9IDENCmBgYA0KDQp3aWxsIG5vdCBydW4gYmVjYXVzZSB0aGUgcGFyZW50IHNjaGVkdWxl
ciBzdG9wcyBlbnF1ZXVlaW5nIGFmdGVyIHNlZWluZw0KTkVUX1hNSVRfQ04uIEZvciBub3JtYWwg
cGFja2V0cyAobm9uLUdTTyksIGl0J3MgZWFzeSB0byBmaXg6IGp1c3QgZG8NCnFkaXNjX3RyZWVf
cmVkdWNlX2JhY2tsb2coc2NoLCAxLCBsZW4pLiBIb3dldmVyLCBHU08gc3BsaXR0aW5nIG1ha2Vz
IHRoaXMNCmRpZmZpY3VsdCBiZWNhdXNlIHdlIG1heSBoYXZlIGFscmVhZHkgYWRkZWQgbXVsdGlw
bGUgc2VnbWVudHMgaW50byB0aGUNCmZsb3csIGFuZCB3ZSBkb27igJl0IGtub3cgaG93IG1hbnkg
b2YgdGhlbSB3ZXJlIGRlcXVldWVkLg0KDQpUaGUgbnVtYmVyIG9mIGRlcXVldWVkIHNlZ21lbnRz
IGNhbiBiZSBhbnl3aGVyZSBpbiBbMCwgbnVtc2Vnc10sIGFuZCB0aGUNCmRlcXVldWVkIGxlbmd0
aCBpbiBbMCwgc2xlbl0uIFdlIGNhbm5vdCBrbm93IHRoZSBleGFjdCBudW1iZXIgd2l0aG91dCAN
CmNoZWNraW5nIHRoZSB0aW4vZmxvdyBpbmRleCBvZiBlYWNoIGRyb3BwZWQgcGFja2V0LiBUaGVy
ZWZvcmUsIHdlIHNob3VsZA0KY2hlY2sgaW5zaWRlIHRoZSBsb29wIChhcyB2MSBkaWQpOg0KDQpg
YGANCmNha2VfZHJvcCguLi4pDQp7DQogICAgLi4uDQogICAgaWYgKGxpa2VseShjdXJyZW50X2Zs
b3cgIT0gaWR4ICsgKHRpbiA8PCAxNikpKQ0KICAgICAgICBxZGlzY190cmVlX3JlZHVjZV9iYWNr
bG9nKHNjaCwgMSwgbGVuKTsNCiAgICAuLi4NCn0NCmBgYA0KDQpUaGlzIHNvbHV0aW9uIGFsc28g
aGFzIGEgcHJvYmxlbSwgYXMgeW91IG1lbnRpb25lZDoNCmlmIHRoZSBmbG93IGFscmVhZHkgY29u
dGFpbnMgcGFja2V0cywgZHJvcHBpbmcgdGhvc2UgcGFja2V0cyBzaG91bGQNCnRyaWdnZXIgYmFj
a2xvZyByZWR1Y3Rpb24sIGJ1dCBvdXIgY2hlY2sgd291bGQgaW5jb3JyZWN0bHkgc2tpcCB0aGF0
LiBPbmUNCnBvc3NpYmxlIHNvbHV0aW9uIGlzIHRvIHRyYWNrIHRoZSBudW1iZXIgb2YgcGFja2V0
cy9zZWdtZW50cyBlbnF1ZXVlZA0KaW4gdGhlIGN1cnJlbnQgY2FrZV9lbnF1ZXVlIChudW1zZWdz
IG9yIDEpLCBhbmQgdGhlbiBhdm9pZCBjYWxsaW5nDQpgcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xv
ZyhzY2gsIDEsIGxlbilgIGZvciB0aGUgMSBvciBudW1zZWdzIGRyb3BwZWQNCnBhY2tldHMuIElm
IHRoYXQgbWFrZXMgc2Vuc2UsIEknbGwgbWFrZSB0aGUgcGF0Y2ggYW5kIHRlc3QgaXQuDQoNCi0t
LS0tDQoNCkJlc2lkZXMsIEkgaGF2ZSBhIHF1ZXN0aW9uIGFib3V0IHRoZSBjb25kaXRpb24gZm9y
IHJldHVybmluZyBORVRfWE1JVF9DTi4NCkRvIHdlIHJldHVybiBORVRfWE1JVF9DTiB3aGVuOg0K
DQpUaGUgaW5jb21pbmcgcGFja2V0IGl0c2VsZiBpcyBkcm9wcGVkPyAobWFrZXMgbW9yZSBzZW5z
ZSB0byBtZSkNCm9yDQpUaGUgc2FtZSBmbG93IGRlcXVldWVkIG9uY2U/IChUaGlzIGlzIHRoZSBj
dXJyZW50IGxvZ2ljKQ0KDQpJZiB3ZSBrZWVwIHRoZSBjdXJyZW50IGxvZ2ljLCB0aGUgYWJvdmUg
cGF0Y2ggYXBwcm9hY2ggd29ya3MuIElmIG5vdCwgd2UgDQpuZWVkIGFkZGl0aW9uYWwgY2hlY2tz
IGJlY2F1c2Ugd2UgYXBwZW5kIHRoZSBpbmNvbWluZyBwYWNrZXQgdG8gdGhlIHRhaWwNCmJ1dCBk
cm9wcyBvY2N1ciBhdCB0aGUgaGVhZC4NCg0KVGhhbmtzLA0KWGlhbmcNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
Y2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
