Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A587681BF
	for <lists+cake@lfdr.de>; Sat, 29 Jul 2023 22:14:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 525AA3CB39;
	Sat, 29 Jul 2023 16:14:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690661652;
	bh=wP6ltGPzvzt3FR1MviFAVhRbSlI5o871nxIbLiA75g0=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=HRcgGw+zAQazbgXnk89ae5usqv6ESJ3kxYB3RJgTs3gYZWHnZm7dRM1K6/1WxmlbH
	 +iW+pkwwBrmda4+2NNRo44H6MlsjaPBEKr32LOBnevSW5OQlUIabhU2btfXLtCIXBK
	 aLAPaCQrJjlPqJhTsfm56l5vz8Ux9eXRNHQvfdFzM1484V3ESEVwC3OX250vTpR0jX
	 Xp963TgCTv4ng0q8xl6dQ4coNC4V2J1Ft8hgWTdVN+ebFXmHiBuiHR7b+zKcJUGarC
	 W+7kzmFS70OvImG642VJbp0tLsoxw5Jk49A8sJQVSASC4q2LPD+McoJjMNLl9LktKc
	 i4QglrVO+eSBA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 410053B2A4
 for <cake@lists.bufferbloat.net>; Sat, 29 Jul 2023 16:14:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1690661648; bh=BHWavLXx05CI78pb4DCOhRuG02TTm8TWP98k6sUtDJk=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=dkyxSu+Dh9P9AKirkxYX4k6gCcOuWFwhgen0JFUnHSTOJfRuvKp84Qq02NoUUGCXS
 FkGNZdYdldHpY4l5fBN3MNAr7/iV/2u3bsvLW0dsDssnoHfikk49Evy1hS5VKvAMot
 5c60IeYRihNsIgL3U7NFg4G6BX1Rd1P/hF+v2WRrK5VoEfcXYitqhpxfa96lcyGkB4
 CWwQ5UhgeiwS3pu4VNeTnQuMeWqGl7Q/yjXQnrRa3dkGHwD2GZZKCUwfSIl0rJvtO4
 E4d/ISgt0Z+7pP/jtlx7Hd/g5ZafIsVnFPnSiuEPkgd+Wou81mu8IKFC4O9JXhLKzx
 slpXsshiwMpgg==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <CAA93jw7LB=h=WxNXn+=HUX7Rq=WtoanMqVx_J0p9e1=iyqHxVg@mail.gmail.com>
References: <CAA93jw4X9P9UJLB5-aWds8NWXx9jkOFY3VJSR5+AG9R8teh7PA@mail.gmail.com>
 <CAA93jw7LB=h=WxNXn+=HUX7Rq=WtoanMqVx_J0p9e1=iyqHxVg@mail.gmail.com>
Date: Sat, 29 Jul 2023 22:14:02 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87h6pmcw6t.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Fwd: been a while since I did a kernel patch
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JpdGVzOgoK
PiBJIGhhdmUgYmVlbiBtZWFuaW5nIHRvIG1ha2UgdGhpcyBwYXRjaCB1c2UgVUlOVF9NQVggYW5k
IHN1Ym1pdCB0byB0aGUKPiBrZXJuZWwgZm9yIGEgbG9uZyB0aW1lLiBBbnlvbmUgd2FudCB0byBn
aXZlIGl0IGEgc3Bpbj8KClRoZXJlJ3MgdG9vbGluZyB0byBlYXNlIHN1Ym1pc3Npb24gdGhlc2Ug
ZGF5czoKCmh0dHBzOi8vcGVvcGxlLmtlcm5lbC5vcmcvbW9uc2lldXJpY29uL3NlbmRpbmctYS1r
ZXJuZWwtcGF0Y2gtd2l0aC1iNC1wYXJ0LTEKCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
