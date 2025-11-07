Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 573C2C417AF
	for <lists+cake@lfdr.de>; Fri, 07 Nov 2025 20:53:06 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 6943C92FEB6;
	Fri, 07 Nov 2025 20:52:48 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762545168;
 b=EtoSqhOojlw5XFolkOQ8v1C6y53kXHTyT06iocyNEU4HEpJ8KJIrFDfKwzfP+zu1kXa8j
 JI3mutURuiAbXGH5PyYO7l55/mYUMk10Bje/5TQRfaEJjXLStE41uK9aubfF4ES6UY4Eyn4
 aoK+Dm3bFkJ0Qi5QjWSwD+x4/eV3eko=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762545168; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wcvXB21vP2xQEBEQcrsXb5wCXrA93ibhY5wQqsnBB+U=;
 b=Asozwz3BdOUvo3aOqUW8rlC9NvGpM0fnS+pqXBX/uviHzWExcogekkI+Ibaux9FPutiYr
 A0V/gNvnBk04o7aiK69WbNN+IkBDYowZmYGd45ZE3XYuceuL3+vURMsAEO/WE++hP0+Q1rg
 LjqRBuGe63Uxkd3U/PGgITnqv93JVjs=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=fail;
 arc=none;
 dmarc=fail header.from=uvic.ca policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=uvic.ca policy.dmarc=none
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
	by mail.toke.dk (Postfix) with ESMTPS id 8BF5C92FCA0
	for <codel@lists.bufferbloat.net>; Fri, 07 Nov 2025 20:50:38 +0100 (CET)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-786a822e73aso13640027b3.3
        for <codel@lists.bufferbloat.net>;
 Fri, 07 Nov 2025 11:50:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762545037; x=1763149837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zHJP08ZdeoXLYX9ikeHF1zSsI/MTMcPBVICycIuGhl4=;
        b=naAbgt3TAEQGGRkV1zsQVmEdbbQ5/lBkllMV+BzPR0PbJsgr/5y1booUGKErCSFViU
         E2n3em5yogIYDfhXgC27LavJoH39mZpDT2zISKwKURqtbs2NY4b258xnS6oChhFJfsIy
         bd/fKv1CI5EZwmcINuJtI/kwPy33/iENSLtbORQcMevDdzUAus0Wx5mF5HKojFmCq3ej
         RqFFiioIyAGTSjhu9Ij1mS5q7Fkf0Q0iglOdnNW+aJdvTUklvmCPrADK9zGWNJlY8GLQ
         K7iBKHif0mDUWAVxLBzZC5YdBxvXc+2CkT5zq9DinsqFnHT5VQhf1BrNBlGhmNuOPaox
         AkwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTXw76AARU7Inj+wldZ2iL2e2EVZql40mt4h/q28rQFiFjYnc73fWVWt/krxwvTDA5XI07ZA==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxhehZHATzF8ieVmg41XCj6xSqtMXEv5bnpOeL/ur7szya/oXN6
	+fVgYTAC+nylbuCS5W78MwvPP10Mv47JNjaaZL4B5v2aoUgVNmim9tb2b5Hg46xjtoy1GTyiWmj
	1zweYnnx1v8VyZasAdFE2vQV1oBqaptuyQpes
X-Gm-Gg: ASbGncuBqkxXKLi+gGTIlp1vbN7XtqOi7ffQWBVsmcBWtvLJf9wlCGNjuW9fwZmVu+3
	sbSRYY0ygoNyR4G7sB8QP1pHpNUKSvW7BtJj/tVVQ7W/tdW2itlCv73+fQOkeLId7YKSY7dOys9
	wq7E9g7w28Zcb+ys7AsauJGD1z3iroQ6TLutnK9xu/d+N0jeeTx6jBZxyHRDX3zdLRBlCYvTZ99
	G2nlKWATd1y/Ipo5cwXPzRY9P/8E/eOUf+ZBqZGsoZOP2/4OJtSbVn35srdaMw3aIHiW1A=
X-Google-Smtp-Source: 
 AGHT+IH4C/Qdd70BfqR0kO+nfwmIY/L+/jDD2/ls/Bc3RoewS4ipKnEoApmuB12F1Bzt0WVpswP3TUATh5zHBnoFnoU=
X-Received: by 2002:a05:690c:2e93:b0:786:758e:d7c5 with SMTP id
 00721157ae682-787d543c45cmr4046067b3.42.1762545036782; Fri, 07 Nov 2025
 11:50:36 -0800 (PST)
MIME-Version: 1.0
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
 <2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com>
 <CAHn=e4iyb6FDc+Jrwx+5jdhZ35qoM8Weoz=Ktvth-NdUKZ7VmA@mail.gmail.com>
 <3934C9BE-EED5-4DF7-9451-E438E0FEFE3E@connectivitycap.com>
In-Reply-To: <3934C9BE-EED5-4DF7-9451-E438E0FEFE3E@connectivitycap.com>
From: J Pan <Pan@uvic.ca>
Date: Fri, 7 Nov 2025 11:50:25 -0800
X-Gm-Features: AWmQ_bk02yy0POPfWJ-hf7UB-4HUz3MZGuKmOX6lEX_LgNjnxA5TvUWkNVY9mVU
Message-ID: 
 <CAHn=e4h_K-5J2OZ4tSRBvgHtg729T=ayXw=d5TMLC=oRrFpdkA@mail.gmail.com>
To: Jim Forster <jim@connectivitycap.com>
Cc: Frantisek Borsik <frantisek.borsik@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>,
	bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	libreqos <libreqos@lists.bufferbloat.net>, l4s-discuss@ietf.org,
	starlink@lists.bufferbloat.net
X-MailFrom: panatuvicdotca@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: CRXT6A7WBSI62KO5REZE7XJYZVP3R6TK
X-Message-ID-Hash: CRXT6A7WBSI62KO5REZE7XJYZVP3R6TK
X-Mailman-Approved-At: Fri, 07 Nov 2025 20:52:46 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] [LibreQoS] Re: Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAHn=e4h_K-5J2OZ4tSRBvgHtg729T=ayXw=d5TMLC=oRrFpdkA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

bWFya2V0aW5nIGlzIGV2ZW4gd29yc2UuIHNvbWUgY2xhaW0gMjAwbWJwcyBiZWNhdXNlIDE1MG1i
cHMgZG93biBhbmQNCjUwbWJwcyB1cCBhdCBwZWFrIGRhdGEgcmF0ZS4gb2YgY291cnNlLCB0aGlz
IGlzIG5vdCB0aGUgb25seSBwcm9ibGVtDQppbiB0ZWxlY29tLCBidXQgbGlrZWx5IHRoZSB3b3Jz
dA0KDQpuZXZlcnRoZWxlc3MsIHRoZXJlIGFyZSBzdGF0cyBzdWNoIGFzIDEwJSBpbmZsYXRpb24g
Zm9yIGZvb2QgYW5kIDIwJQ0KZm9yIGdhcywgc28gaW4gdG90YWwgMzAlIDstKSBhdCB0aGlzIHJh
dGUsIGFueSBudW1iZXJzIGNhbiBiZSBmbG9hdGluZw0KYXJvdW5kIGJ1dCBub25lIGFyZSB0ZWxs
aW5nIHRoZSB0cnV0aCA7LSkNCi0tDQpKIFBhbiwgVVZpYyBDU2MsIEVDUzU2NiwgMjUwLTQ3Mi01
Nzk2IChOTyBWTSksIFBhbkBVVmljLkNBLCBXZWIuVVZpYy5DQS9+cGFuDQoNCk9uIEZyaSwgTm92
IDcsIDIwMjUgYXQgMTA6NTXigK9BTSBKaW0gRm9yc3RlciA8amltQGNvbm5lY3Rpdml0eWNhcC5j
b20+IHdyb3RlOg0KPg0KPiBFeGFjdGx5IHNvLg0KPg0KPiBDb25zdW1lciBleHBlY3RhdGlvbnMg
YW5kIHNlcnZpY2UgcHJvdmlkZXIgbWFya2V0aW5nIG1heSBiZSBpbmZsdWVuY2VkIGJ5IG1lbW9y
aWVzIG9mIGV4cGVyaWVuY2Ugd2hlbiB0cmFuc21pc3Npb24gZGVsYXkgZGlkIG1hdHRlci4gIEF0
IG9uZSB0aW1lIEkgd2FzIHZlcnkgaGFwcHkgd2l0aCBteSBob21lIElTRE4gY29ubmVjdGlvbiwg
YW5kIGV2ZW4gc2hhcmVkIGl0IHdpdGggbXkgbmVpZ2hib3IuICBBdCBhYm91dCAxMjhrYnMsIGl0
IHdhcyB0aHJlZSBvcmRlcnMgb2YgbWFnbml0dWRlIHNsb3dlciB0aGFuIG15IGhvbWUgZmliZXIg
bGluay4gIEnigJl2ZSBub3QgcnVuIHRoZSBudW1iZXJzIGJ1dCBJ4oCZbSBwcmV0dHkgc3VyZSB0
cmFuc2ltaXNzaW9uIHNwZWVkIG1hdHRlcmVkIGZvciB2aWRlbywgZXZlbiBmb3IgY3J1bW15IHF1
YWxpdHkgdmlkZW8sICBTbyB0aGVuIHdoZW4gSSBsZWFybmVkIGEgYml0IGFib3V0IGRpZ2l0YWwg
dmlkZW8sIGFuZCBjYWJsZeKAmXMgNjQgUUFNIDI3bWJwcyBjaGFubmVscywgSSBnb3QgZXhjaXRl
ZCBhbmQgdGhvdWdodCwg4oCcd293LCB0aGV5IGNvdWxkIGRlbGl2ZXIgMW1icHMgc2VydmljZSEg
IEFuZCB3b3VsZG7igJl0IGl0IGJlIGNvb2wgdG8gaGF2ZSAxTSBob21lIG9ubGluZSBhdCAxMHgg
dGhlIHNwZWVkIG9mIElTRE4/4oCdLiAgSXQgd2FzIGNvb2whICBBbmQgdHdvIG1vcmUgb3JkZXJz
IG9mIG1hZ25pdHVkZSBsYXRlciwgaGVyZSB3ZSBhcmUuDQo+DQo+ICAg4oCUIEppbQ0KPg0KPiBP
biBOb3YgNywgMjAyNSwgYXQgMTI6NTLigK9QTSwgSiBQYW4gPFBhbkB1dmljLmNhPiB3cm90ZToN
Cj4NCj4gbGF0ZW5jeSBpcyBiYXNlZCBvbiByb3VuZC10cmlwIHRpbWUsIGFuZCBvbmUtd2F5IGRl
bGF5IGluY2x1ZGVzDQo+IHRyYW5zbWlzc2lvbiBkZWxheSwgcHJvcGFnYXRpb24gZGVsYXksIHF1
ZXVpbmcgZGVsYXkgYW5kIHByb2Nlc3NpbmcNCj4gZGVsYXkuIGJhbmR3aWR0aCBkb2VzIGFmZmVj
dCB0cmFuc21pc3Npb24gZGVsYXkgKG9yIHNlcmlhbGl6YXRpb24NCj4gZGVsYXkpLCBwcm9wYWdh
dGlvbiBkZWxheSBpcyBkZXRlcm1pbmVkIGJ5IHRoZSBsaW5rIGxlbmd0aCBhbmQgdGhlDQo+ICJ0
cmF2ZWwiIHNwZWVkIG9mIHRoZSBzaWduYWwsIHF1ZXVpbmcgZGVsYXkgaXMgdGhlIGhhcmRlc3Qg
cGFydCBhbmQNCj4gYWZmZWN0ZWQgYnkgdGhlIGJ1ZmZlciBibG9hdCBhIGxvdCwgYW5kIHByb2Nl
c3NpbmcgZGVsYXkgaXMgYW5vdGhlcg0KPiB2YXJpYWJsZS4gb2YgY291cnNlLCB0cmFuc21pc3Np
b24gZGVsYXkgdGFrZXMgbGVzcyBhbmQgbGVzcyBwb3J0aW9uIG9mDQo+IHRoZSBlbmQtdG8tZW5k
IGRlbGF5IG5vdyBkdWUgdG8gaGlnaGVyIGFuZCBoaWdoZXIgInNwZWVkIiBsaW5rcw0KPg0KPiBj
b25zdW1lcnMgbWF5IG1pc3Rha2VuIHRoZSBzcGVlZCBvZiB0aGUgbGluayAodGhlICJ3aWR0aCIg
b2YgdGhlaXINCj4gcGlwZSkgYXMgaG93IGZhc3QgdGhlaXIgaW50ZXJuZXQgaXMgKHRoZSAibGVu
Z3RoIiBvZiB0aGUgcGlwZSksIGR1ZSB0bw0KPiB0aGUgcG9vciB0ZXJtaW5vbG9neSB3ZSBoYXZl
IGJlZW4gdXNpbmcgOy0pDQo+DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cg==
