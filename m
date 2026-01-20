Return-Path: <cake-bounces@lists.bufferbloat.net>
Delivered-To: lists+cake@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKD6M8Wtb2nxEwAAu9opvQ
	(envelope-from <cake-bounces@lists.bufferbloat.net>)
	for <lists+cake@lfdr.de>; Tue, 20 Jan 2026 17:31:01 +0100
X-Original-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4804647921
	for <lists+cake@lfdr.de>; Tue, 20 Jan 2026 17:31:01 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 1A07EBE1255;
	Tue, 20 Jan 2026 14:27:57 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768915677;
 b=nUPCDo6XFefIyWPU0dfvAww0iEYvzhwT3rsGWo3pOJXeuOfp+s789SDbpTE5vohqqLcSX
 EgxPPnMwz+KhJ++CMYPLo1zYOMUeOOniG3so/SpxzrwMgSh/+3CNu1/ZBqDMngd72pp1hee
 7NwgGSSGTb028kMOF/V1QLDHx7bR5Nk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768915677; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ML1d5JQoLv6c1xThXzLmlJEw5ataXBfJAKHcshg3pvo=;
 b=y0nijczxIVmiCAdjPk5nSPg32ZBYXYbEtuq4Uny2zX0iCMIh95ENugGlAX7114Fjc6omT
 6YFpXWmUgeBiR0O8HTu7CklBX0+aGkjvMthuJiTn2EVSTEcLqSheRmooJATS+d2YF76JuWQ
 krRgZ/0yrwpp1NyHDrN8nSRqDOjSOAo=
ARC-Authentication-Results: i=2; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=fail;
 arc=pass;
 dmarc=fail header.from=freedesktop.org policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=; dkim=fail;
 arc=pass;
 dmarc=fail (Used From Domain Record) header.from=freedesktop.org policy.dmarc=none
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com
 [74.125.82.173])
	by mail.toke.dk (Postfix) with ESMTPS id D5743BE1212
	for <cake@lists.bufferbloat.net>; Tue, 20 Jan 2026 14:27:53 +0100 (CET)
Received: by mail-dy1-f173.google.com with SMTP id
 5a478bee46e88-2b0ea1edf11so9816109eec.0
        for <cake@lists.bufferbloat.net>;
 Tue, 20 Jan 2026 05:27:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768915672; cv=none;
        d=google.com; s=arc-20240605;
        b=Le6XhqsUu5yjLkB6TixYVQiBuBt0N+LpgIy4LYDVIjR/q0bThUGZGx9c5MjZTkQwVA
         Kq426XXV7LvS9FmIhnVLVDJOuxHxHjQWXhhf854kl3Cqmf90Oe4gvJ3QTjpcaFUrdhzc
         kW6vEcrnV5pKg+EBTXnNOHf7zGVN3UeWereUyQ9b2r9RsxdwwWuH0ZlSFIQq/qQsZ6H7
         k2LwWMqP2KTCVpxGck7Ve4dSFuSg/XsAlhNMAp8GvJZYu2X1JEj5x5q7pxcJ+RU4tGtu
         1Jo7tYDSKj/kPeCK/DGaFkZlb1Et7N6n+pn4AX++xP2ECKWiqRAhcQHDA9A86wVAPs+b
         jJRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=A6hALL783i0u88gAbsPIlOQ382lI3F90JeuK4u9wgIc=;
        fh=3l2SUcciY3Q3SdHcAoqtrWmeqN4yMrMfx21G8W5CI/8=;
        b=T9JEwH6dPkyD5okz0XrlBaW+MMob3tMHpOQX1oFJxLUr3X1nzm6hCK1XoXfQiqP1td
         8wlxilAoox2kAuWNiQg5uPyWS7b+MXEhfsoFgYGv2qI20MqL5OEfSwTc9KISHgI+wUAE
         6x0cS3Ru4BWYZuYbws4G7Cq7dJ027Y3I+SFNtgQiMBE/igTb2Jb5r5uzM0tulW8RR7aq
         eThPPqaaeT6aihYnR57aJJ/9qTq4cVWiC4rBjs8CLV7ufAaQUe9wXcIZg9DQobwuLpHH
         1A0YWXDlZtmHpuDTqRlJoiZ6JrbCHCvyoDQgtlN3TwmCys49omqXWhjlOEqpVuqVg6EB
         yaqg==;
        darn=lists.bufferbloat.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768915672; x=1769520472;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A6hALL783i0u88gAbsPIlOQ382lI3F90JeuK4u9wgIc=;
        b=iFNkvXdHHTn+yTki5kAvTYusgOsEVti6SvldIJEqNNMN0rmpdkx7i89Yr+WvK23dE+
         vyz2wdk2rxhDM9ywAim4SwX6/3uChQn2TvW6/qPUOcTJInubdzoj+TCLZRBORnn5c357
         Bm/IE7PnDeBU7pK+CEgdYStPiT1xixBkFQxahH4PZj95QS9Fqi2SFObK+7OTm2fkd7b2
         9tbXnx5UwQTv9U/8t4EgBmIhyh3vaOhjbThSvM63iP+Ly8o+bcyrDGoYkqf6MasXDoWG
         Nowcvtjla1dMS6+BAtJXgXtadyClle+5coyIJj4iwKSwvXnhyx31sVXgXvuRjFBGq9RO
         tFiA==
X-Gm-Message-State: AOJu0Yzg+jrOEKeRB22w5Hzg3pZFkI8/WEvgfbd/Gzdz3qQ9DDQZwQ/U
	9u1pFKa+alv6BrlwMtCsZMpmDKiv4zTNILZKlww4ziTLpUWUp2g9FQAFb5NBr5oA7GSnCt8uze9
	iEhauHuRmiCL+W149aScHAMkomhW7v+c=
X-Gm-Gg: AZuq6aKGT2SqX1SG+uq07HrurgmcmUWK2609ETAPHaY1ht9GgjLQ2R8xYnN02NJIvPr
	dceWq4fVmFFvYdHplshRwaJWMycWFBIaRvgQaG69nkznDx/5wwX2rojnV8JazIYZtYJFF+CNrIG
	mOkoOzDo2z8YhikDWF/iezdF6Zl61LvXdmntM1R9inOepLOYXZSf3k+63DGB81YB5Mgl9rD/s6/
	kKPEfOnq//F5xahCnHbIpXNK4RYxnWAM16z/k8Tt+0Kfg+Gg7ihBocH4ZVdUNzLVMgmnz0=
X-Received: by 2002:a05:7301:6508:b0:2b6:aeb8:3d8c with SMTP id
 5a478bee46e88-2b6b503bcb5mr11690565eec.32.1768915671316; Tue, 20 Jan 2026
 05:27:51 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAJUtOOjf3vaQLtbZbmm559EuDJzpCkmysToVy_anS2NVtbJnVA@mail.gmail.com>
In-Reply-To: 
 <CAJUtOOjf3vaQLtbZbmm559EuDJzpCkmysToVy_anS2NVtbJnVA@mail.gmail.com>
From: Jim Gettys <jg@freedesktop.org>
Date: Tue, 20 Jan 2026 08:27:42 -0500
X-Gm-Features: AZwV_Qg3tOPUsry650IyNG0g4nFbFHp0OJYoIHp0xIUwBw_rPUgqVycqS_YLeJc
Message-ID: 
 <CAGhGL2B4Ve1WQGd_-=Ne8Wzex+H6mn2ztbB6pCVV6sqOZBOL+A@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	bloat <bloat@lists.bufferbloat.net>,
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: 26W56TPQ46JGF3DBOKIAD5DXQYFC3YLA
X-Message-ID-Hash: 26W56TPQ46JGF3DBOKIAD5DXQYFC3YLA
X-MailFrom: gettysjim@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Bloat] CAKE_MQ Slated For Linux 7.0 To Adapt SCH_CAKE For Today's
 Multi-Core World
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAGhGL2B4Ve1WQGd_-=Ne8Wzex+H6mn2ztbB6pCVV6sqOZBOL+A@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [-1.31 / 15.00];
	ARC_ALLOW(-1.00)[toke.dk:s=arc202507:i=2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[freedesktop.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:frantisek.borsik@gmail.com,m:cake@lists.bufferbloat.net,m:codel@lists.bufferbloat.net,m:bloat@lists.bufferbloat.net,m:make-wifi-fast@lists.bufferbloat.net,m:rpm@lists.bufferbloat.net,m:frantisekborsik@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jg@freedesktop.org,cake-bounces@lists.bufferbloat.net];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[cake@lists.bufferbloat.net];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[cake@lists.bufferbloat.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jg@freedesktop.org,cake-bounces@lists.bufferbloat.net];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[cake];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:208327, ipnet:45.145.95.0/24, country:DK];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linkedin.com:url,libreqos.io:url,bufferbloat.net:email,mail.toke.dk:rdns,mail.toke.dk:helo]
X-Rspamd-Queue-Id: 4804647921
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Q29vbCENCg0KSmltDQoNCk9uIE1vbiwgSmFuIDE5LCAyMDI2LCAxMjozMeKAr1BNIEZyYW50aXNl
ayBCb3JzaWsgPGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tPg0Kd3JvdGU6DQoNCj4gR3JlYXQg
bmV3cyENCj4NCj4gaHR0cHM6Ly93d3cucGhvcm9uaXguY29tL25ld3MvTGludXgtNy4wLUNBS0Ut
TVENCj4NCj4gQWxsIHRoZSBiZXN0LA0KPg0KPiBGcmFuaw0KPg0KPiBGcmFudGlzZWsgKEZyYW5r
KSBCb3JzaWsNCj4NCj4NCj4gKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5NjUt
MjAyNQ0KPg0KPiBodHRwczovL2xpYnJlcW9zLmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9y
eS1vZi1kYXZlLw0KPg0KPg0KPiBodHRwczovL3d3dy5saW5rZWRpbi5jb20vaW4vZnJhbnRpc2Vr
Ym9yc2lrDQo+DQo+IFNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2NzE0DQo+
DQo+IGlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUNCj4NCj4gU2t5cGU6IGNhc2lvYTUz
MDJjYQ0KPg0KPiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBCbG9hdCBtYWlsaW5nIGxpc3QgLS0g
YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gYmxvYXQtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBj
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
